using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class adminMesajDetay : System.Web.UI.Page
    {
        sqlVeritabanı sqlVeritabanı=new sqlVeritabanı();
        string id="";
        protected void Page_Load(object sender, EventArgs e)
        { 
            id=Request.QueryString["mesajId"];
            SqlCommand cmd = new SqlCommand("select * from Tbl_Mesajlar where mesajId=@p1", sqlVeritabanı.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
            }
            sqlVeritabanı.baglanti().Close();
        }
    }
}