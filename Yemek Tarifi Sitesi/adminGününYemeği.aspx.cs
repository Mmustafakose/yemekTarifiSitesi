using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminGününYemeği : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı= new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;

            SqlCommand sqlCommand = new SqlCommand("Select * from Tbl_Yemekler",sqlVeritabanı.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void artı_Click(object sender, EventArgs e)
        {
            Panel1.Visible=true;
        }

        protected void eksi_Click(object sender, EventArgs e)
        {
            Panel1.Visible=false;
        }
    }
}