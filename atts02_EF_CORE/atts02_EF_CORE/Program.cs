using atts02_EF_CORE.dados;
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.Data.SqlClient;
using System.Data;

namespace atts02_EF_CORE
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var contexto = new CidadesContexto())
            {
                //Exibindo nome dos funcionarios listados utilizando uma view
                foreach(var row in contexto.View)
                {
                    Console.WriteLine(row.Nome);
                }
                //Criando uma nova cidade(ficou estranho kk) utilizando uma procedure
                var paramId = new SqlParameter("Id", SqlDbType.UniqueIdentifier);
                paramId.Value = Guid.NewGuid();
                var paramNome = new SqlParameter("Nome", "Porto Velho");
                var paramPopulacao = new SqlParameter("Populacao", SqlDbType.Int);
                paramPopulacao.Value = 25;
                var paramTaxaCriminalidade = new SqlParameter("TaxaCriminalidade", SqlDbType.Float);
                paramTaxaCriminalidade.Value = 99.99;
                var paramImpostoSobreProduto = new SqlParameter("ImpostoSobreProduto", SqlDbType.Float);
                paramImpostoSobreProduto.Value = 50.00;
                var paramEstadoCalamidade = new SqlParameter("EstadoCalamidade ", SqlDbType.Float);
                paramEstadoCalamidade.Value = 25.55;
                var parameters = new object[]
                {
                    paramId,
                    paramNome,
                    paramPopulacao,
                    paramTaxaCriminalidade,
                    paramImpostoSobreProduto,
                    paramEstadoCalamidade,
                };
                string sql = "SP_ADD_CIDADE @Id, @Nome, @Populacao, @TaxaCriminalidade," +
                    " @ImpostoSobreProduto, @EstadoCalamidade";
                contexto.Database.ExecuteSqlRaw(sql, parameters);
            }
        }
    }
}
