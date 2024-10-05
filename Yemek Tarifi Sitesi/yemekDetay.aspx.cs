using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class yemekDetay : System.Web.UI.Page
    {
        sqlVeritabanı veritabanı =new sqlVeritabanı();
        
        string yemekIdrqs = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekIdrqs = Request.QueryString["yemekId"];
            SqlCommand cmd = new SqlCommand("select yemekAd from Tbl_Yemekler where yemekId=@p1", veritabanı.baglanti());
            
            cmd.Parameters.AddWithValue("@p1", yemekIdrqs);
            
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read()) 
            {
                lblyemekad.Text = reader[0].ToString();
            }
            
            veritabanı.baglanti().Close();

            //Yorumları Listeleme

            SqlCommand cmd2 = new SqlCommand("select * from Tbl_Yorumlar where yemekId=@p2", veritabanı.baglanti());
            cmd2.Parameters.AddWithValue("@p2", yemekIdrqs);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DataList1.DataSource = reader2;
            DataList1.DataBind();


        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand cmd3 = new SqlCommand("insert into Tbl_Yorumlar(yorumAdSoyad,yorumMail,yorumicerik,yemekId) values (@p1,@p2,@p3,@p4)",veritabanı.baglanti());
            cmd3.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            cmd3.Parameters.AddWithValue("@p2", txtmail.Text);
            cmd3.Parameters.AddWithValue("@p3", txtyorumunuz.Text);
            cmd3.Parameters.AddWithValue("@p4", yemekIdrqs);
            cmd3.ExecuteNonQuery();
            veritabanı.baglanti().Close();
        }
    }
}