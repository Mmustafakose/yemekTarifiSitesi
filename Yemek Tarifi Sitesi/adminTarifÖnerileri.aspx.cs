using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminTarifÖnerileri : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı= new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

            SqlCommand cmd = new SqlCommand("select * from Tbl_Tarifler where tarifDurum=0",sqlVeritabanı.baglanti());
            SqlDataReader rdr = cmd.ExecuteReader();

            DataList1.DataSource = rdr;
            DataList1.DataBind();

            SqlCommand cmd1 = new SqlCommand("select * from Tbl_Tarifler where tarifDurum=1", sqlVeritabanı.baglanti());
            SqlDataReader rdr1 = cmd1.ExecuteReader();

            DataList2.DataSource = rdr1;
            DataList2.DataBind();
        }

        protected void artı_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void eksi_Click(object sender, EventArgs e)
        {
            Panel1.Visible=false;
        }
        protected void artı1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void eksi1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}