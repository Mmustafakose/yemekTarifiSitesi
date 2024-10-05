using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminYorumDetay : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritaban = new sqlVeritabanı();

        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumId"];

            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("select yorumAdSoyad,yorumMail,yorumicerik,yemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.yemekId=Tbl_Yemekler.yemekId  where yorumId=@p1", sqlVeritaban.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    txtAdSoyad.Text = reader[0].ToString();
                    txtMail.Text = reader[1].ToString();
                    txtİcerik.Text = reader[2].ToString();
                    txtYemek.Text = reader[3].ToString();
                }
                sqlVeritaban.baglanti().Close();

            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("update Tbl_Yorumlar set yorumicerik=@p1,yorumOnay=@p2 where yorumId=@p3", sqlVeritaban.baglanti());
            sql.Parameters.AddWithValue("@p1",txtİcerik.Text);
            sql.Parameters.AddWithValue("@p2","True");
            sql.Parameters.AddWithValue("@p3",id);
            sql.ExecuteNonQuery();
            sqlVeritaban.baglanti().Close();
        }

        protected void btnGeriDon_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminYorumlar.aspx");
        }
    }
}