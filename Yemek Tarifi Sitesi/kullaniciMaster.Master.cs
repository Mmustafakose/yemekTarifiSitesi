using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class kullaniciMaster : System.Web.UI.MasterPage
    {
        sqlVeritabanı veritabanı=new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler", veritabanı.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource= reader;
            DataList1.DataBind();

        }

        
    }
}