using atts02_EF_CORE.negocio;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.dados
{
    class CidadesContexto : DbContext
    {
        //classes
        public DbSet<Cidades> Cidades { get; set; }
        public DbSet<Funcionarios> Funcionarios { get; set; }
        public DbSet<__EFMigrationsHistory> __EFMigrationsHistory { get; set; }
        public DbSet<Funcoes> Funcoes { get; set; }
        public DbSet<FuncoesFuncionarios> FuncoesFuncionarios { get; set; }
        public DbSet<PrefeitosAtuais> PrefeitosAtuais { get; set; }
        //views
        public DbSet<VW_ALL_FUNCIONARIOS> View { get; set; }
        //configurando
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=(localdb)\\MSSQLLocalDB;Database=Cidades;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FuncoesFuncionarios>()
                .HasNoKey();
            //modelBuilder.ApplyConfiguration(new FuncoesFuncionariosConfiguration());
        }
    }
}
