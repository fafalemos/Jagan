using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jagan.Banco_de_dados;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace Jagan.Painel
{

    public partial class produto : System.Web.UI.Page
    {
        int id;
        public string nome;
        public string[] nome_produto;
        
        public string[] valor_produto;
        protected void Page_Load(object sender, EventArgs e)
        {
            nome = "José";
            try
            {
                // Cria uma conexão com o banco de dados
                String strSQL;

                SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
                conn.Open();
                strSQL = "SELECT * FROM produtos";
                SqlDataAdapter da;
                DataSet ds = new DataSet();

                da = new SqlDataAdapter(strSQL, conn);
                DataTable dbtl = new DataTable();

                da.Fill(dbtl);
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                cmd.CommandType = CommandType.Text;
                SqlDataReader reader;

                reader = cmd.ExecuteReader();
                for (int i = 0; i < dbtl.Rows.Count; i++)
                {

                   lblNome1.Text = @dbtl.Rows[0][1].ToString();
                   lblPreco1.Text = @dbtl.Rows[0][2].ToString();

                   lblNome2.Text = @dbtl.Rows[1][1].ToString();
                   lblPreco2.Text = @dbtl.Rows[1][2].ToString();

                   lblNome3.Text = @dbtl.Rows[2][1].ToString();
                   lblPreco3.Text = @dbtl.Rows[2][2].ToString();

                   lblNome4.Text = @dbtl.Rows[3][1].ToString();
                   lblPreco4.Text = @dbtl.Rows[3][2].ToString();

                   lblNome5.Text = @dbtl.Rows[4][1].ToString();
                   lblPreco5.Text = @dbtl.Rows[4][2].ToString();

                   lblNome6.Text = @dbtl.Rows[5][1].ToString();
                   lblPreco6.Text = @dbtl.Rows[5][2].ToString();

                   lblNome7.Text = @dbtl.Rows[6][1].ToString();
                   lblPreco7.Text = @dbtl.Rows[6][2].ToString();

                }
                

                
            }
            catch (Exception ex)
            {
                Response.Write("Falha no sistema: " + ex.Message);
            }

        }
    }
}