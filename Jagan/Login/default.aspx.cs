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
    public partial class deafult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DB_JAGAN db = new DB_JAGAN();
            try
            {
                var BuscaUsuario = db.usuarios.Where(s => s.nome_usuario == txtNomeUsuario.Text && s.senha == txtSenha.Text);

                if (BuscaUsuario.Count() > 0)
                {

                    //Evento para armazenar os dados e direcionar para o index
                    Response.Write("<script>alert('Usuário autenticado corretamente!');</script>");

                }
                else
                {
                    Response.Write("<script>alert('Usuário inválido, verifique os dados e tente novamente.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Falha no sistema: " + ex.Message);
            }
        }
    }
}