using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jagan.Banco_de_dados;
using System.Data.SqlClient;

namespace Jagan.Login
{
    public partial class Cadastro : System.Web.UI.Page
    {
        // Criar uma CONSTANTE para conexão com o banco de dados
        readonly string connectionString = @"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try {
                // Cria uma conexão com o banco de dados
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {

                    // Realiza a abertura de uma conexão com o banco de dados
                    sqlCon.Open();

                    // Cria uma instrução SQL para ser executada no servidor SQL Server
                    SqlCommand sqlCmd = new SqlCommand("INSERT INTO usuarios VALUES (@nome_usuario, @senha, @email)", sqlCon);

                    sqlCmd.Parameters.AddWithValue("@nome_usuario", txtNomeUsuario.Text);
                    sqlCmd.Parameters.AddWithValue("@senha", txtSenha.Text);
                    sqlCmd.Parameters.AddWithValue("@email", txtEmail.Text);

                    //Executar o comando no SQL (Tecla F5 do SQL Server)
                    sqlCmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Usuário cadastrado com sucesso!');</script>");
                    limpar();
                }
            }
            catch (Exception ex) {
                Response.Write("Falha no sistema: " + ex.Message);
            }

        }

        private void limpar()
        {
            this.txtNomeUsuario.Text = "";
            this.txtSenha.Text = "";
            this.txtEmail.Text = "";

            }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Painel");
        }
    }
}