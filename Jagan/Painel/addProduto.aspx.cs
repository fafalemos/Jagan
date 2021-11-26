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
    public partial class addProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarProduto_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
                conn.Open();

                SqlCommand sqlCmd = new SqlCommand("INSERT INTO produtos VALUES (@nome_produto, @valor_produto)", conn);

                sqlCmd.Parameters.AddWithValue("@nome_produto", txtNomeProduto.Text);
                sqlCmd.Parameters.AddWithValue("@valor_produto", txtValorProduto.Text);

                //Executar o comando no SQL (Tecla F5 do SQL Server)
                sqlCmd.ExecuteNonQuery();
                Response.Write("<script>alert('Produto cadastrado com sucesso!');</script>");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Falha no sistema: " + ex.Message);
            }
        }
    }
}