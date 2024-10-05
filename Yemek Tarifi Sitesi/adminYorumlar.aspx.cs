using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminYorumlar : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı=new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

            //Onaylanan Yorumlar
            SqlCommand cmd = new SqlCommand("select * from Tbl_Yorumlar where yorumOnay=1", sqlVeritabanı.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            //Bekleyen Yorumlar
            SqlCommand cmd2 = new SqlCommand("Select * from Tbl_Yorumlar where yorumOnay=0",sqlVeritabanı.baglanti());
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();
        }

        protected void Artı_Click(object sender, EventArgs e)
        {
            Panel1.Visible=true;
        }

        protected void Eksi_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Arti1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Eksi1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}