using atts02_EF_CORE.negocio;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace atts02_EF_CORE.dados
{
    class FuncoesFuncionariosConfiguration : IEntityTypeConfiguration<FuncoesFuncionarios>
    {
        public void Configure(EntityTypeBuilder<FuncoesFuncionarios> builder)
        {
            //builder
            //    .ToTable("FuncoesFuncionarios");

            ////builder.HasNoKey();

            //builder
            //    .Property(ff => ff.FuncaoId)
            //    .HasColumnName("FuncaoId")
            //    .HasColumnType("uniqueidentifier")
            //    .IsRequired();
            //builder
            //    .Property(ff => ff.FuncionarioId)
            //    .HasColumnName("FuncionarioId")
            //    .HasColumnType("uniqueidentifier")
            //    .IsRequired();

            //builder.Property<Guid>("FuncaoId").IsRequired();

            //builder
            //    .HasKey("FuncaoId", "FuncionarioId");


            //builder
            //    .HasOne<Guid>(ff => ff.FuncaoId)
            //    .WithMany(ff => ff.FuncionarioId)
            //    .HasForeignKey("Funcao");




        }
    }
}
