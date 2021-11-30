using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jagan.Painel
{
    public partial class carrinho : System.Web.UI.Page
    {
        public string nome_produto;
        public int preco_produto;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                lblNomeUsuario.Text = Session["Name"].ToString().ToUpper();
            }

        }

       public void addcarrinho(String nome, int preco)
        {
            List<carrinho> total = new List<carrinho>();
            total.Add(new carrinho() {nome_produto = nome, preco_produto = preco });

        }

        public void totalcarrinho()
        {
            foreach (preco) ;
        }

    }
}