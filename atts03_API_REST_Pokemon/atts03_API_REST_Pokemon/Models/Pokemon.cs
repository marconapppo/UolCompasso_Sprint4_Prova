using System;
using System.ComponentModel.DataAnnotations;

namespace atts03_API_REST_Pokemon
{
    public class Pokemon
    {
        [Key]
        [Required]
        public int Id { get; set; }
        [Required]
        public string Nome { get; set; }
        [Required]
        public string Tipo { get; set; }
    }
}
