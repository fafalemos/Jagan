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


            try {
                SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
                conn.Open();
                strSQL = "SELECT * FROM usuarios";
                DataSet ds = new DataSet();

                da = new SqlDataAdapter(strSQL, conn);
                DataTable dbtl = new DataTable();

                da.Fill(dbtl);

                for (int i = 0; i < dbtl.Rows.Count; i++)
                {

                    lblNome1.Text = (String)dbtl.Rows[i][1];
                    lblEmail1.Text = (String)dbtl.Rows[i][3];

                    
                }


            }
            catch (Exception ex)
            {

                Response.Write("Falha no sistema: " + ex.Message); ;
            }

        }
    }
}