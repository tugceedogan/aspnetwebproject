using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webproject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            DuyurularıGetir();

            object kullanici = Session["kullaniciadi"];
            if(kullanici != null)
            {
                pnlGiris.Visible = false;
                pnlKullanici.Visible = true;
                lblKullaniciAdi.Text = kullanici.ToString();


            }
            else
            {
                pnlKullanici.Visible = false;
                pnlGiris.Visible = true;
                

            }


        }

        private void DuyurularıGetir()
        {

            string sorgu = "Select * from Duyurular order by Tarih desc";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            lstDuyuru.DataSource = dr;
            lstDuyuru.DataBind();

            cnn.Close();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text != "" | txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

                string sorgu = "Insert into Kullanicilar(KullaniciAdi,Sifre) Values (@kullaniciadi,@sifre)";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();
                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();

                    cnn.Close();
                    lblSonuc.Text = "BAŞARIYLA KAYIT YAPILMIŞTIR.";

                }
                catch (Exception)
                {
                    lblSonuc.Text = "Kaydınız yapılmamıştır.";

                }



            }
            else
            {
                lblSonuc.Text = "Boş alanları doldurunuz.";
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string sorgu = "Select * from Kullanicilar Where KullaniciAdi= @kullaniciadi AND Sifre=@sifre";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("kullaniciadi", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("sifre", txtSifre.Text);

            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullaniciadi", dr["KullaniciAdi"].ToString());
                Response.Redirect(Request.RawUrl);


            }
            else
            {
                lblSonuc.Text = "Kullanıcı girişi sağlanamadı";
            }



        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }

}