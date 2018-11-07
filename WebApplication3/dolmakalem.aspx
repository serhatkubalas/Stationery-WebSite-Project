<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="dolmakalem.aspx.cs" Inherits="WebApplication3.dolmakalem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="vitrin" style="padding-top:5px;">
          <asp:Repeater ID="Repeaterdolma" runat="server">
        <ItemTemplate>
            <div class="border" style="background-color:white;">
			<div class="vitrin-icerik">
                
				<a href="itemdetails.aspx?id=<%#Eval("urunId") %>">
                    <div class="esya"> <img src="<%#Eval("resimYolu") %>" alt="Resim Yüklenemedi."/>  </div>
                    
                <h3 style="display:block;width:200px;margin:auto;color:#151211;font-family:Calibri;font-size:15px;text-align:center;" ><%#Eval("urunAd") %></h3> <br />
                    
                <h2 style="color:#151211;text-align:center;font-family:ZillaSansCondensed,Roboto,Arial;font-weight:700;font-size:23px;"><%#Eval("fiyat") %> ₺ </h2>
              </a>
			
         </div>
                </div>
        </ItemTemplate>
       </asp:Repeater>
    
   
    </div>
</asp:Content>
