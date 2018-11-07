<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="itemdetails.aspx.cs" Inherits="WebApplication3.itemdetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="detail" style="padding-top:5px;">
          <asp:Repeater ID="Repeaterdetail" runat="server">
            <ItemTemplate>
            <div class="itemdetails">
                <div class="itemdetailsContent">
                    <img  src="<%#Eval("resimYolu") %>" alt="Resim Yüklenemedi." />
                </div>
                <div class="itemdetailContent">
                    <div style="width:950px;left:29px;">
                        <h1 style="font-size: 30px;font-family:Century Gothic;font-weight: 700;"><%#Eval("urunAd") %></h1>
                    </div>
                    <div class="fiyat" style="font-size:28px;left:30px;font-family:Century Gothic;font-weight:700;top:15px;"><%#Eval("fiyat") %> TL</div>
                    <hr style="top:15px;width:160px;left:30px;height:5px;background-color:orange;border:none;" />
                    <div class="urunTur" style="font-size:25px;left:30px;font-family:Nexa;top:25px;"><%#Eval("turAd") %></div>
                    <hr style="top:25px;width:240px;left:30px;height:3px;background-color:orange;border:none;" />
                    <div class="urunRenk" style="font-size:25px;left:30px;font-family:Nexa;top:30px;" ><%#Eval("renkAd") %></div>
                    <hr style="top:30px;width:130px;left:30px;height:2px;background-color:orange;border:none;" />
                    <asp:Button Text="SEPETE EKLE" class="basket" runat="server" /> <br /> <br /> <br /> <br /> <br />
                    <p style="left:30px;font-family:Nexa;">Saat 14:00'e kadar vereceğiniz siparişler <b>aynı gün</b>  kargoya verilecektir.</p>
                </div>





                
                
            </div>
                </div>
                 <div class="tab" id="tıklanacak">
                     <div style="font-family:'Century Gothic';font-weight:bold;"> Ürün Açıklaması</div>
                </div>    


           
                  
                    <div  class="tabicerik" id="aciklama" style="display:none;"  >
                      
                      <p style="font-family:'Comic Sans MS';"><%#Eval("aciklama") %></p>
                    </div>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script>
                    $(document).ready(function () {
                        $("#tıklanacak").click(function () {
                            $("#aciklama").slideToggle("normal");

                        });
                    });
                </script>
        
        </ItemTemplate>
              </asp:Repeater>
    
        
        
   
    
    
               
</asp:Content>
