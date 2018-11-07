<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bigBanner">
    <asp:Repeater ID="Repeaterbanner" runat="server">
        <ItemTemplate>
    
        <div class="banner-vitrin">
            <div class="banner" > <img src="<%#Eval("bannerYol") %>" alt="Resim Yüklenemedi."/>  </div>
        </div>
    
            </ItemTemplate>
     </asp:Repeater>
       </div>
</asp:Content>
