using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jagan.Banco_de_dados;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace Jagan.Login
{
    public partial class Cadastro : System.Web.UI.Page
    {
        // Criar uma CONSTANTE para conexão com o banco de dados
        readonly string connectionString = @"Server = localhost; Database = JAGAN; Uid = Admin; Pwd = zj$yj1O!AMHhrQTy";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                lblNomeUsuario.Text = Session["Name"].ToString().ToUpper();
            }

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try {
                // Cria uma conexão com o banco de dados
                using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
                {

                    // Realiza a abertura de uma conexão com o banco de dados
                    sqlCon.Open();

                    // Cria uma instrução SQL para ser executada no servidor SQL Server
                    MySqlCommand sqlCmd = new MySqlCommand("INSERT INTO usuarios VALUES (@nome_usuario, @senha, @email)", sqlCon);

                    sqlCmd.Parameters.AddWithValue("@nome_usuario", txtNomeUsuario.Text);
                    sqlCmd.Parameters.AddWithValue("@senha", txtSenha.Text);
                    sqlCmd.Parameters.AddWithValue("@email", txtEmail.Text);

                    //Executar o comando no SQL (Tecla F5 do SQL Server)
                    sqlCmd.ExecuteNonQuery();
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

    }
}