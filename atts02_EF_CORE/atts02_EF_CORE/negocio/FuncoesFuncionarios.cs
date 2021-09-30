using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.negocio
{
    [Table("FuncoesFuncionarios")]
    class FuncoesFuncionarios
    {
        [Column("FuncionarioId")]
        public Guid FuncionarioId { get; set; }
        [Column("FuncaoId")]
        public Guid FuncaoId { get; set; }
    }
}
