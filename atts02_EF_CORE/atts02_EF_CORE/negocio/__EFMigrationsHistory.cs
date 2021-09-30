using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.negocio
{
    [Table("__EFMigrationsHistory")]
    class __EFMigrationsHistory
    {
        [Key]
        [Column("MigrationId")]
        public string MigrationId { get; set; }
        [Column("ProductVersion")]
        public string ProductVersion { get; set; }
    }
}
