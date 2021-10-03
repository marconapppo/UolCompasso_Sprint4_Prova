using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MongoDB.Bson;
using MongoDB.Driver;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace atts04_MongoDBAPI_Auditoria.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PedidoController : ControllerBase
    {
        MongoDB mongo = new MongoDB();

        [HttpPost]
        public void PostPedido([FromBody] Pedido pedido)
        {

            //conectando no mongo
            mongo.ConectandoBanco();
            //inserindo no mongo
            mongo.InserindoBanco(pedido);

        }

        [HttpGet]
        public string GetPedido()
        {
            //conectando no banco
            mongo.ConectandoBanco();
            //retornando os valores de Pedido
            var listaPedidos = mongo.retornandoBanco();
            //criando o Json do get
            var doc = new BsonDocument();
            doc.Add("pageNumber", 1);
            doc.Add("pageSize", listaPedidos.Count());

            //adicionando no array items
            var docArray = new BsonArray();

            foreach (var pedidos in listaPedidos)
            {
                docArray.Add(BsonDocument.Parse(pedidos.ToJson<Pedido>()));
            }

            doc.Add("items", docArray);
            return doc.ToJson();
        }

        [HttpGet("{pageNumber}")]
        public IActionResult GetPedidoPaginado(int pageNumber)
        {
            //conectando no banco
            mongo.ConectandoBanco();
            //retornando os valores de Pedido
            var listaPedidos = mongo.retornandoBanco();
            //criando o Json do get
            var doc = new BsonDocument();
            doc.Add("pageNumber", pageNumber);
            doc.Add("pageSize", listaPedidos.Count());

            //resultado para saber quantos descartara em lista seguindo principio de paginacao
            int resultado = (pageNumber - 1) * 5;

            //caso Não seja um pageNumber valido
            if(resultado >= listaPedidos.Count())
            {
                return NotFound();
            }

            //removendo os valores que n pertencer a pesquisa (primeiros)
            listaPedidos.RemoveRange(0, resultado);

            //deixando somente 5 valores na lista (ultimos)

            listaPedidos.RemoveRange(5, (listaPedidos.Count()-5));


            //adicionando no array items
            var docArray = new BsonArray();

            foreach (var pedidos in listaPedidos)
            {
                docArray.Add(BsonDocument.Parse(pedidos.ToJson<Pedido>()));
            }

            doc.Add("items", docArray);
            return Ok(doc.ToJson());

        }
    }
}
