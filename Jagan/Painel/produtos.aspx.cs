﻿using System;
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
    public partial class produtos : System.Web.UI.Page
    {

        public string[] nome_produto { get { return nome_produto; } }
        public int[] valor_produto;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Cria uma conexão com o banco de dados
                String strSQL;
                SqlDataAdapter da;

                SqlConnection conn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=JAGAN;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
                conn.Open();
                strSQL = "SELECT * FROM produtos";
                DataSet ds = new DataSet();

                da = new SqlDataAdapter(strSQL, conn);
                DataTable dbtl = new DataTable();

                da.Fill(dbtl);
                for (int i = 0; i < dbtl.Rows.Count; i++)
                {

                   nome_produto[i] = (string)@dbtl.Rows[i][1];
                   valor_produto[i] = (int)@dbtl.Rows[i][2];
                                    
                                
                }

}
            catch (Exception ex)
            {
                Response.Write("Falha no sistema: " + ex.Message);
            }

        }
    }
    
}