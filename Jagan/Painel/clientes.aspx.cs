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
    public partial class clientes : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand com;
        SqlDataAdapter da;
        SqlDataReader dr;

        string strSQL;
        private object lblNome;

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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM usuarios", conn);
                DataTable dbtl = new DataTable();
                sqlDa.Fill(dbtl);
                if (dbtl.Rows.Count > 0)
                {

                    gvclientes.DataSource = dbtl;
                    gvclientes.DataBind();
                }
                else
                {
                    dbtl.Rows.Add(dbtl.NewRow());
                    gvclientes.DataSource = dbtl;
                    gvclientes.DataBind();
                    gvclientes.Rows[0].Cells.Clear();
                    gvclientes.Rows[0].Cells.Add(new TableCell());
                    gvclientes.Rows[0].Cells[0].ColumnSpan = dbtl.Columns.Count;
                    gvclientes.Rows[0].Cells[0].Text = "Nada encontrado ...";
                    gvclientes.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }


            }
        }

        protected void gvclientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM usuarios WHERE ID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvclientes.DataKeys[e.RowIndex].Value.ToString()));
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