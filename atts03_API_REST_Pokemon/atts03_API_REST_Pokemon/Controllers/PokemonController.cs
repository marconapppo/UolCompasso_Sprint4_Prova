using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace atts03_API_REST_Pokemon.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PokemonController : ControllerBase
    {
        private readonly PokemonContext _context;


        public PokemonController(PokemonContext context)
        {
            _context = context;
        }


        [HttpPost]
        public async Task<ActionResult<Pokemon>> AdicionarPokemonAsync([FromBody] Pokemon pokemon)
        {
            _context.PokemonItems.Add(pokemon);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetPokemon), new { id = pokemon.Id }, pokemon);
        }

        [HttpGet]
        public IEnumerable<Pokemon> GetPokemon()
        {
            return _context.PokemonItems;
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Removerpokemon(int id)
        {
            var pokemon = await _context.PokemonItems.FindAsync(id);
            if (pokemon == null)
            {
                return NotFound();
            }

            _context.PokemonItems.Remove(pokemon);
            await _context.SaveChangesAsync();

            return NoContent();
        }

    }
}
