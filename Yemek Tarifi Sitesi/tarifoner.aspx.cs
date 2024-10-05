using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class tarifoner : System.Web.UI.Page
    {
        sqlVeritabanı veritabanı = new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Tarifler(tarifAd,tarifMalzemeler,tarifYapilis,tarifResim,tarifSahipAd,tarifSahipMail) values ('" + txtTarifAd.Text + "','" + txtMalzemeler.Text + "','" + txtTarifYapılıs.Text + "','" + FileUpload1.FileName + "','" + txtMail.Text + "','" + txtTarifOnerenAd.Text
+ "')", veritabanı.baglanti());
            cmd.ExecuteNonQuery();
            veritabanı.baglanti().Close();
            Response.Write("Tarifinz Alınmıştur.");

            //SqlCommand cmd2 = new SqlCommand("insert into Tbl_Tarifle(tarifAd,tarifMalzemeler,tarifYapilis,tarifResim,tarifSahipAd,tarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", veritabanı.baglanti());

            //cmd2.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            //cmd2.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
            //cmd2.Parameters.AddWithValue("@t3", txtTarifYapılıs.Text);
            //cmd2.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            //cmd2.Parameters.AddWithValue("@t5", txtTarifOnerenAd.Text);
            //cmd2.Parameters.AddWithValue("@t6", txtMail.Text);

            //cmd2.ExecuteNonQuery();
            //veritabanı.baglanti().Close();
        }
    }
}