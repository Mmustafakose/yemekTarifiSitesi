using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminYemekDetay : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı = new sqlVeritabanı();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!Page.IsPostBack)
            {
                //kategori listesi çekme
                SqlCommand command = new SqlCommand("Select * from Tbl_Kategoriler", sqlVeritabanı.baglanti());
                SqlDataReader reader1 = command.ExecuteReader();

                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriId";

                DropDownList1.DataSource = reader1;
                DropDownList1.DataBind();

                Panel2.Visible = false;
                Panel3.Visible = false;

                islem=Request.QueryString["islem"];
                id=Request.QueryString["yemekId"];
            }
            //Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand cmd1 = new SqlCommand("delete from Tbl_Yemekler where yemekID=@p1",sqlVeritabanı.baglanti());
                cmd1.Parameters.AddWithValue("@p1", id);
                cmd1.ExecuteNonQuery();
                sqlVeritabanı.baglanti().Close();


            }

            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler", sqlVeritabanı.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {

            //Yemek Ekleme
            SqlCommand sql = new SqlCommand("Insert into Tbl_yemekler(yemekAd,yemekMalzeme,yemekTarif,kategoriId) values (@p1,@p2,@p3,@p4) ", sqlVeritabanı.baglanti());
            sql.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            sql.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            sql.Parameters.AddWithValue("@p3", txtYemekTarifi.Text);
            sql.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sql.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close();


            //Kategori sayısını güncelleme
            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Kategoriler set kategoriAdet=kategoriAdet+1 where kategoriId=@p1",sqlVeritabanı.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            sqlCommand.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close();

        }

        
    }
}