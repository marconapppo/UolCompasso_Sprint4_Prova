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
        public void GetPedidoPaginado()
        {
            
        }
    }
}
