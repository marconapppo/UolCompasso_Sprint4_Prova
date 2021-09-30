using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.negocio
{
    [Table("VW_ALL_FUNCIONARIOS")]
    class VW_ALL_FUNCIONARIOS
    {
        [Column("Id")]
        public Guid Id { get; set; }
        [Column("Nome")]
        public String Nome { get; set; }
        [Column("DataNascimento")]
        public DateTime DataNascimento { get; set; }
        [Column("CidadeId")]
        public Guid CidadeId { get; set; }
        [Column("UltimaAtualizacao")]
        public DateTime? UltimaAtualizacao { get; set; }
    }
}
