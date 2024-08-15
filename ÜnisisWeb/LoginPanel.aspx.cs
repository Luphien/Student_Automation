using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ÜnisisWeb
{
    public partial class LoginPanel : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection(@"Data Source=ALPEREN\SQLEXPRESS;Initial Catalog=SiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBL_OGRENCI where Numara=@p1 and OgrSıfre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("numara", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                TxtNumara.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBL_Ogretmen where OgrtNumara=@p1 and OgrtSıfre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ogrtnumara", TxtNumara.Text);
                Response.Redirect("Default.aspx");
            }
            else
            {
                TxtNumara.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }
    }
}