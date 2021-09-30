using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.negocio
{
    [Table("PrefeitosAtuais")]
    class PrefeitosAtuais
    {
        [Column("Id")]
        public Guid Id { get; set; }
        [Column("Nome")]
        public String Nome { get; set; }
        [Column("InicioMandato")]
        public DateTime InicioMandato { get; set; }
        [Column("FimMandato")]
        public DateTime FimMandato { get; set; }
        [Column("CidadeId")]
        public Guid CidadeId { get; set; }
        [Column("UltimaAtualizacao")]
        public DateTime? UltimaAtualizacao { get; set; }
    }
}
