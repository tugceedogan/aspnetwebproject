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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDurum.Visible = false;
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
                   
                    pnlKayit.Visible = false;
                    pnlDurum.Visible = true;
                    Session.Add("kullaniciadi", txtKullaniciAdi.Text);
                    lblDurum.Text = "Başarıyla kayıt yapılmışıtr";

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
    }
}
