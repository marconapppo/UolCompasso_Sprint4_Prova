using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson.Serialization.Options;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace atts04_MongoDBAPI_Auditoria
{
    [BsonIgnoreExtraElements]
    public class Pedido
    {
        public string OrderId { get; set; }
        public DateTime EventDate { get; set; }
        public string Description { get; set; }
        public Dictionary<string, string> Content { get; set; }


    }
}
