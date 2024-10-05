using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlVeritabanı veritabanı= new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar (mesajGonderen,mesajBaslık,mesajMail,mesajIcerik) values(@p1,@p2,@p3,@p4)", veritabanı.baglanti());
            cmd.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            cmd.Parameters.AddWithValue("@p2", txtkonu.Text);
            cmd.Parameters.AddWithValue("@p3", txtMail.Text);
            cmd.Parameters.AddWithValue("@p4", txtMeajIcerik.Text);
            cmd.ExecuteNonQuery();
            veritabanı.baglanti().Close();
        }
    }
}