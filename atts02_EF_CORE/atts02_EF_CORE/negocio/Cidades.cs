using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.negocio
{
    [Table("Cidades")]
    class Cidades
    {
        [Column("Id")]
        public Guid Id { get; set; }
        [Column("Nome")]
        public string? Nome { get; set; }
        [Column("Populacao")]
        public int Populacao { get; set; }
        [Column("TaxaCriminalidade")]
        public float TaxaCriminalidade { get; set; }
        [Column("ImpostoSobreProduto")]
        public float ImpostoSobreProduto { get; set; }
        [Column("EstadoCalamidade")]
        public byte EstadoCalamidade { get; set; }
        [Column("UltimaAtualizacao")]
        public DateTime? UltimaAtualizacao { get; set; }
    }
}
