using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class kategoriDetay : System.Web.UI.Page
    {
        sqlVeritabanı veritabanı=new sqlVeritabanı();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            SqlCommand cmd = new SqlCommand("select* from tbl_yemekler where kategoriId=@p1",veritabanı.baglanti());
            cmd.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }
    }
}