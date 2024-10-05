using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminMesajlar : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı= new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;

            SqlCommand cmd = new SqlCommand("select * from Tbl_Mesajlar",sqlVeritabanı.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void Artı_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Eksi_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}