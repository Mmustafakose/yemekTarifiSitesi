using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminKategoriDetay : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı=new sqlVeritabanı();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriId"];

            if (!Page.IsPostBack)
            {
                
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler where kategoriId=@p1", sqlVeritabanı.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    txtKAtegoriAd.Text = reader[1].ToString();
                    txtKategoriAdet.Text = reader[2].ToString();

                }
                sqlVeritabanı.baglanti().Close();
            }    
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Tbl_Kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriId=@p3 ", sqlVeritabanı.baglanti());
            cmd.Parameters.AddWithValue("@p1",txtKAtegoriAd.Text);
            cmd.Parameters.AddWithValue("@p2",txtKategoriAdet.Text);
            cmd.Parameters.AddWithValue("@p3",id);
            cmd.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close() ;
        }
    }
}