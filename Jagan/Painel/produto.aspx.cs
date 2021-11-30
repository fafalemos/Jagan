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
using System.Configuration;

namespace Jagan.Painel
{

    public partial class produto : System.Web.UI.Page
    {
        public string[] carrinhoproduto_nome = new string[10];
        public int[] carrinhoproduto_preço = new int[10];
        public bool[] btn = new bool[10];
        public string nome;
        readonly string connectionString = @"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";

        protected void Page_Load(object sender, EventArgs e)
        {
            calculototal();
            if (!IsPostBack)
            {
                PopulatedGridView();
            }

            if (Session["Name"] != null)
            {
                lblNomeUsuario.Text = Session["Name"].ToString().ToUpper();
            }

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

        void calculototal()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT SUM(valor_produto) FROM carrinho_produtos";
            lblTotal.Text = cmd.ExecuteScalar().ToString();
            conn.Close();
        }

        void limparCarrinho()
        {
            String strSQL;

            SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            conn.Open();
            string query = "truncate table carrinho_produtos";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
        }

        void PopulatedGridView()
        {
            
           
            using (SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"))
            {
                String strSQL;
                conn.Open();          
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM carrinho_produtos", conn);
                DataTable dbtl = new DataTable();
                sqlDa.Fill(dbtl);
                if (dbtl.Rows.Count > 0)
                {
                    gvCarrinho.DataSource = dbtl;
                    gvCarrinho.DataBind();
                }
                else
                {
                    dbtl.Rows.Add(dbtl.NewRow());
                    gvCarrinho.DataSource = dbtl;
                    gvCarrinho.DataBind();
                    gvCarrinho.Rows[0].Cells.Clear();
                    gvCarrinho.Rows[0].Cells.Add(new TableCell());
                    gvCarrinho.Rows[0].Cells[0].ColumnSpan = dbtl.Columns.Count;
                    gvCarrinho.Rows[0].Cells[0].Text = "Nada encontrado ...";
                    gvCarrinho.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }


            }
        }


        protected void btnCarrinho_Click(object sender, EventArgs e)
        {
            addProduto("Laranja", 6.50);
        }

        public void addProduto(string nome, double preco)
        {
            try
            {
                // Cria uma conexão com o banco de dados
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {

                    // Realiza a abertura de uma conexão com o banco de dados
                    sqlCon.Open();

                    // Cria uma instrução SQL para ser executada no servidor SQL Server
                    SqlCommand sqlCmd = new SqlCommand("INSERT INTO carrinho_produtos VALUES (@nome_produto, @valor_produto)", sqlCon);

                    sqlCmd.Parameters.AddWithValue("@nome_produto", nome);
                    sqlCmd.Parameters.AddWithValue("@valor_produto", preco);

                    //Executar o comando no SQL (Tecla F5 do SQL Server)
                    sqlCmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Falha no sistema: " + ex.Message);
            }
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            addProduto("Abacaxi", 6.00);
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            addProduto("Uva", 5.50);
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            addProduto("Maçã", 3.20);
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            addProduto("Melancia", 8.00);
        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            addProduto("Manga", 7);
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            limparCarrinho();
            Session["Compra"] = "Compra bem sucedida!";
            Response.Redirect("../Painel/default.aspx");
        }

        protected void btnProduto2_Click1(object sender, EventArgs e)
        {
            addProduto("Limão", 4.10);
        }


    }
}