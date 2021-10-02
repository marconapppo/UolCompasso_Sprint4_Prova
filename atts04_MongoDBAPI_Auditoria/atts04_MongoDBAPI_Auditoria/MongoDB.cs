using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace atts04_MongoDBAPI_Auditoria
{
    public class MongoDB
    {
        IMongoCollection<Pedido> _colecao;

        public void ConectandoBanco()
        {
            string stringConexao = "mongodb://localhost:27017/Admin";
            IMongoClient cliente = new MongoClient(stringConexao);

            IMongoDatabase db = cliente.GetDatabase("AuditoriaPedidos");

            _colecao = db.GetCollection<Pedido>("Pedido");
        }

        public void InserindoBanco(Pedido pedido)
        {

            _colecao.InsertOne(pedido);

            
        }

        public List<Pedido> retornandoBanco()
        {
            var bsonDocument = _colecao.Find(new BsonDocument()).ToList();
            return bsonDocument;
        }
    }
}
