<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="web.aspx.cs" Inherits="webproject.web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Web Nedir?</h4>

İngilizcedeki web söcüğünden gelmektedir. Kumaş dokusundan esinlenerek, bilgisayar ağını ifade etmek için kullanıldığı söylenebilir. <br />
    Ancak, bu açıklama, yalnızca donanım anlamını içerdiğinden, web’in bu günkü anlamını açıklayamaz. Web, internet üzerindeki servislerden birisidir. <br />
    İnternet üzerinde yazı, grafik, resim, ses ve hareketli görüntülerden oluşan dökümanları uzaktaki bilgisayarlara iletir.<br />
    Bu hizmetin görülebilmesi için geri planda çalışan bir çok yazılım vardır. Kullanıcı, bunları görmez ve bilmez. <br />
    O, kullanıcı dostu bir grafiksel arayüz yardımıyla www servisinden kolayca yararlanır.

Bilgisayar ekranında gördüğümüz her bir web dökümanına bir web sayfası denir. <br />
    Bir kişi ya da kurum, hazırladığı bütün web sayfalarını bir araya getirerek bir web sitesi oluşturabilir.<br />
    Her web sitesinin internet üzerindeki yerini belirleyen bir adresi vardır. Buna URL (Uniform Resource Locator) denilir.<br />

Web dökümanları internete bağlı her bilgisayardan yayımlanabilir ve görülebilir. Yayımı ve görüntüyü sağlayan özel yazılımlar olmadan ne yayım olur ne de görüntü sağlanır.<br />
    <br />

Bir web sayfasının internette bize ulaşması için geçirdiği başlıca evreler şunlardır:<br />

1.                  Web sayfasının hazırlanması,<br />

2.                  Web sayfasının sunulması,<br />

3.                  Web sayfasının izlenmesi.<br />

Bu üç işlemin yapılması ayrı ayrı yazılımların çalışmasını gerektirir. Bunların nasıl olduğunu kısaca inceleyeceğiz.<br />

   <h4> 1.      Web Sayfasının Hazırlanması</h4><br />
Web sayfaları özel bir programlama dili ile yazılır. Bu dile HTML (Hypertext Markup Language) denir. Bu dil yalnız yazıları değil grafik, resim, ses iletimini de yapabilmektedir. Yazı, resim ve grafiklere hareket katarak, kısaca video diye adlandırılan dinamik web sayfaları oluşturulabilmektedir.  Bunların hazırlanabilmesi için çok sayıda yazılım kullanılır. Bu yazılımların her biri ayrı uzmanlık ister. Ancak, kullanıcı bunları bilmek zorunda değildir. Web sayfasını hazırlayanlar, kullanıcının önüne etkileşimli kullanıcı dostu menüler koyarlar. Fare yardımıyla, kullanıcı, web servisinin izin verdiği her işi yapabilir. 

<h4>2.      Web Sunucuları</h4><br />
Internete bağlı olan ve bir IP (Internet Protocol) numarası olan her bilgisayar web sunuculuğu yapabilir. Hazırlanan bir web sayfasının internette yayımlanabilmesi için sunumu yapan bir yazılımın olması gerekir. Bunu yapan çeşitli yazılımlar vardır. En yaygın olanı Apache Server adıyla bilinen yazılımdır. İnternete bağlı ve üzerinde bir web sunucu yazılımı olan bilgisayar bir web sunucudur. Bir web sunucu bir çok web sayfasını ve web sitesini yayımlayabilir. Bu işi yapan bilgisayarlara web sunucuları denir. Web sunuculuğu yapan bir çok ticari ve resmi kuruluş vardır.

<h4>3.      Web Tarayıcıları</h4><br />
Web dökümanlarını (web sayfalarını) görüntüleyen yazılımlardır. Zamanla, bu yazılımlara başka işlevler de yüklenmiştir. Örneğin, e-posta, newsgroups vb. Web tarayıcıları arasında en yaygın olanları Lynks, Mosaic, MS Internet Explorer ve Netscape Navigator ’dır. Bunlara ek olarak yeni web tarayıcıları ortaya çıkmıştır. Opera, NeoPlanet gibi web tarayıcıları bunlara gösterilebilecek iyi örneklerdir.  Bunlar hemen hemen benzer işlevlere sahiptir. Aralarında, ayrılıklar, ek hizmetlerle ilgilidir. Özellikle, Opera küçük boyutu ve hızıyla dikkat çekicidir. Kullanıcı, genellikle ilk alıştığı web tarayıcısını tercih eder. Web tarayıcıları ücretsizdir. İnternet’ten indirilebilir.

Protokol<br />
İnternet üzerinde farklı türden veri alış-verişi (servisler) yapılabilir. Her servisin amacı ve yöntemi farklıdır. Her servisi belirleyen ve yöneten bir yazılım vardır. Bu yazılımların her birine bir protokol denilir. FTP, http, Email, IP, TCP, TCP/IP, Gopher, WAIS, Veronica,... internet üzerindeki farklı servislere örnek verilebilir.


</asp:Content>
