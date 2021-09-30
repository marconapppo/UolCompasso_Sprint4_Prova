using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.negocio
{
    [Table("Funcoes")]
    class Funcoes
    {
        [Column("Id")]
        public Guid Id { get; set; }
        [Column("Descricao")]
        public string Descricao { get; set; }
        [Column("NivelAcesso")]
        public int? NivelAcesso { get; set; }
        [Column("UltimaAtualizacao")]
        public DateTime? UltimaAtualizacao { get; set; }
    }
}
