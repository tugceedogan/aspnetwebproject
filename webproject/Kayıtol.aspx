<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayıtol.aspx.cs" Inherits="webproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kayıt Ol</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div style="width: 285px; margin:0 auto; margin-top:50px;">
        <div class="sol-taraf">
            <asp:Panel ID="pnlKayit" runat="server">
              <div class="hizli-kayit">
                  <div class="ust">Hızlı Kayıt Ol</div>
                  
                  <div class="alt">
                      <div class="Kullanici">
                        <span>Kullanıcı Adı</span>
                        <asp:TextBox ID="txtKullaniciAdi" CssClass="textbox" runat="server"></asp:TextBox>


                     </div>
                     
                     <div class="Sifre">
                         <span>Şifre</span>
                         <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>
                     </div>
                        <a href="/" class="btnGiris">İPTAL</a>
                        <asp:Button ID="btnKayit" CssClass="btnKayit" Text="KAYIT" runat="server"  onclick="btnKayit_Click"/>
                        <asp:Label ID="lblSonuc"   Text="" runat="server" />
                        
                    </div>

                </div>
            
            </asp:Panel>

            <asp:Panel ID="pnlDurum" runat="server" Style="background-color: #fff; padding:10px;" >
                <asp:Label ID="lblDurum"   Text="" runat="server" />
                <br />
                <a href="/" class="btnGiris">ANASAYFAYA GİT</a>
               

            </asp:Panel>
            </div>
         </div>
   
    </form>
</body>
</html>
