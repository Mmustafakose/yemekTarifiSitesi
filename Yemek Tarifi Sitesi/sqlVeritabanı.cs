using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public class sqlVeritabanı
    {
        public SqlConnection baglanti()
        { 
            SqlConnection con = new SqlConnection(@"Server=.\SQL_MUSTAFA;Database=yemekTarifi;User Id=MUSTAFA;Password=Mm42614261++;");
            con.Open();
            return con;
        }
    }
}