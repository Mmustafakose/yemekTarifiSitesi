using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class Anasayfa : System.Web.UI.Page
    {   
        sqlVeritabanı veritabanı=new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler",veritabanı.baglanti());
            SqlDataReader reader= cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }
    }
}