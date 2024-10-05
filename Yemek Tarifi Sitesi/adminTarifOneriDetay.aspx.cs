using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminTarifOneriDetay : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı = new sqlVeritabanı();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifId"];
            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("select * from Tbl_Tarifler where tarifId=@p1", sqlVeritabanı.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    txtAd.Text = reader[1].ToString();
                    txtMalzemeler.Text = reader[2].ToString();
                    txtYapılıs.Text = reader[3].ToString();
                    txtOneren.Text = reader[5].ToString();
                    txtMail.Text = reader[7].ToString();
                }
                sqlVeritabanı.baglanti().Close();

                //KAtegori ekleme
                SqlCommand command = new SqlCommand("select * from Tbl_Kategoriler", sqlVeritabanı.baglanti());
                SqlDataReader dataReader = command.ExecuteReader();

                DropDownList1.DataValueField = "kategoriId";
                DropDownList1.DataTextField = "kategoriAd";

                DropDownList1.DataSource = dataReader;
                DropDownList1.DataBind();

            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            //Güncelleme
            SqlCommand sqlCommand = new SqlCommand("update Tbl_Tarifler set tarifDurum=1  where tarifId=@p1", sqlVeritabanı.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", id);
            sqlCommand.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close();

            //Yemeği Anasayfaya Ekleme
            SqlCommand sqlCommand2 = new SqlCommand("insert into Tbl_Yemekler (yemekAd,yemekMalzeme,yemekTarif,kategoriId) values (@p1,@p2,@p3,@p4)", sqlVeritabanı.baglanti());
            sqlCommand2.Parameters.AddWithValue("@p1", txtAd.Text);
            sqlCommand2.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            sqlCommand2.Parameters.AddWithValue("@p3", txtYapılıs.Text);
            sqlCommand2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand2.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close();

            // anasayfa kategoriDetay sayısını güncelleme


        }
    }
}