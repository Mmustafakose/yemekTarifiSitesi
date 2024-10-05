using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Sitesi
{
    public partial class adminHakkimizda : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı= new sqlVeritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (!Page.IsPostBack)
            { 
            SqlCommand sqlCommand = new SqlCommand("select * from Tbl_Hakkımızda",sqlVeritabanı.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            if (reader.Read())
            { 
                txtHakkımızda.Text= reader[0].ToString();
            }
            sqlVeritabanı.baglanti().Close();
            }
        }

        public void panelArti(object sender, EventArgs e)
        { 
            Panel1.Visible=true;
        }

        public void panelEksi(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        public void btnGüncelle(object sender, EventArgs e)
        {
            SqlCommand sqlCommand1 = new SqlCommand("update Tbl_Hakkımızda set metin=@p1",sqlVeritabanı.baglanti());
            sqlCommand1.Parameters.AddWithValue("@p1",txtHakkımızda.Text);
            sqlCommand1.ExecuteNonQuery();
            sqlVeritabanı.baglanti().Close() ;
        }
    }
}