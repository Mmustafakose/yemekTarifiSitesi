using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminYemekDüzenleme : System.Web.UI.Page
    {
        sqlVeritabanı veritabanı = new sqlVeritabanı();

        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekId"];
            if (!Page.IsPostBack)
            {
                SqlCommand cmd1 = new SqlCommand("select * from Tbl_Kategoriler", veritabanı.baglanti());
                SqlDataReader reader = cmd1.ExecuteReader();

                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriId";

                DropDownList1.DataSource = reader;
                DropDownList1.DataBind();





                SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler where yemekId=@p1", veritabanı.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    DropDownList1.SelectedValue = dr[7].ToString();

                }
                veritabanı.baglanti().Close();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Image/" + FileUpload1.FileName));

            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Yemekler set yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,kategoriId=@p4,yemekResim=@p5 where yemekId=@p6", veritabanı.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p5","~/Image/"+FileUpload1.FileName);
            sqlCommand.Parameters.AddWithValue("@p6", id);
            sqlCommand.ExecuteNonQuery();
            veritabanı.baglanti().Close();
        }

        protected void btnGununYemegi_Click(object sender, EventArgs e)
        {

            //Günün yemeğini sıfırlama
            SqlCommand cmd = new SqlCommand("Update Tbl_Yemekler set durum=0", veritabanı.baglanti());
            cmd.ExecuteNonQuery();
            veritabanı.baglanti().Close();

            //Günün yemeğini seçme
            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Yemekler set durum=1 where yemekID=@p1", veritabanı.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1",id);
            sqlCommand.ExecuteNonQuery();
            veritabanı.baglanti().Close();

        }
    }
}