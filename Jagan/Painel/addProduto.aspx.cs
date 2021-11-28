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
            if (!IsPostBack)
            {
                PopulatedGridView();
            }
            
        }
        void PopulatedGridView()
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"))
            {
                conn.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM produtos", conn);
                DataTable dbtl = new DataTable();
                sqlDa.Fill(dbtl);
                if (dbtl.Rows.Count > 0)
                {

                    gvProdutos.DataSource = dbtl;
                    gvProdutos.DataBind();
                }
                else
                {
                    dbtl.Rows.Add(dbtl.NewRow());
                    gvProdutos.DataSource = dbtl;
                    gvProdutos.DataBind();
                    gvProdutos.Rows[0].Cells.Clear();
                    gvProdutos.Rows[0].Cells.Add(new TableCell());
                    gvProdutos.Rows[0].Cells[0].ColumnSpan = dbtl.Columns.Count;
                    gvProdutos.Rows[0].Cells[0].Text = "Nada encontrado ...";
                    gvProdutos.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }


            }
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
                PopulatedGridView();
                Response.Write("<script>alert('Produto cadastrado com sucesso!');</script>");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Falha no sistema: " + ex.Message);
            }
        }

        protected void linkExcluir_Click(object sender, EventArgs e)
        {

        }

        protected void gvProdutos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProdutos.EditIndex = e.NewEditIndex;
            PopulatedGridView();
        }

        protected void gvProdutos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void gvProdutos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"))
                {
                    conn.Open();
                    string query = "UPDATE produtos SET nome_produto = @nome_produto,valor_produto = @valor_produto WHERE ID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, conn);
                    sqlCmd.Parameters.AddWithValue("@nome_produto", (gvProdutos.Rows[e.RowIndex].FindControl("txtNome_produto") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@valor_produto", (gvProdutos.Rows[e.RowIndex].FindControl("txtValor_produto") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvProdutos.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    gvProdutos.EditIndex = -1;
                    PopulatedGridView();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";

                }
            }
            catch(Exception ex) {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvProdutos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProdutos.EditIndex = -1;
            PopulatedGridView();
        }

        protected void gvProdutos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM produtos WHERE ID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvProdutos.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulatedGridView();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}