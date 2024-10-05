using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class kategoriler : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı = new sqlVeritabanı();
        string id;
        string islem;
        string panel;
        string eklemepanel;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriId"];
            islem = Request.QueryString["islem"];
            panel = Request.QueryString["panel"];
            eklemepanel = Request.QueryString["eklemepanel"];

            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler", sqlVeritabanı.baglanti());
                SqlDataReader reader = cmd.ExecuteReader();
                DataList1.DataSource = reader;
                DataList1.DataBind();

                //silme işlemi
                if (islem == "sil")
                {
                    SqlCommand sqlCommand = new SqlCommand("Delete from Tbl_Kategoriler where kategoriId=@p1", sqlVeritabanı.baglanti());
                    sqlCommand.Parameters.AddWithValue("@p1", id);
                    sqlCommand.ExecuteNonQuery();
                    sqlVeritabanı.baglanti().Close();

                    if (Panel3.Visible == true)
                    {
                        Response.Redirect("kategoriler.aspx?eklemepanel=true&panel=true");
                    }
                    Response.Redirect("kategoriler.aspx?panel=true");
                }

                Panel2.Visible = false;
                Panel3.Visible = false;
            }
            if (panel == "true")
            {
                Panel2.Visible = true;
            }

            if (eklemepanel == "true")
            {
                Panel3.Visible = true;
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void EklemeArtı_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void EklemeEksi_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Insert Into Tbl_Kategoriler (kategoriAd) values (@p1) ", sqlVeritabanı.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close();

            if (Panel2.Visible == true)
            {
                Response.Redirect("kategoriler.aspx?eklemepanel=true&panel=true");
            }
            Response.Redirect("kategoriler.aspx?eklemepanel=true");

        }
    }
}