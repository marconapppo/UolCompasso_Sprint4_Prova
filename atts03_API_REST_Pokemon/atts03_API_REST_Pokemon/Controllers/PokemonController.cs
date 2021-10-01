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
    [Route("[controller]")]
    public class PokemonController : ControllerBase
    {
        private static List<Pokemon> pokemons = new List<Pokemon>();
        private static int id = 1;

        [HttpPost]
        public void AdicionarPokemon([FromBody] Pokemon pokemon)
        {
            pokemon.Id = id++;
            pokemons.Add(pokemon);
        }

        [HttpGet]
        public IEnumerable<Pokemon> GetPokemon()
        {
            return pokemons;
        }

        [HttpDelete]
        public async void Removerpokemon(int id)
        {
            HttpClient httpClient = new HttpClient();
            httpClient.BaseAddress = new System.Uri("https://localhost:5001/api/");
            HttpResponseMessage resposta = await httpClient.GetAsync($"Pokemon/{id}");
            var model = await resposta.Content.ReadAsStringAsync<string>();
        }

    }
}
