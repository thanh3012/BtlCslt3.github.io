<%@ Page Title="" Language="C#" MasterPageFile="~/Site01.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="WebDongHo.Detail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style.css" rel="stylesheet" />
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Literal ID="DanhSachDongHo" runat="server"></asp:Literal>


    <div style="clear: both"></div>


    <asp:Literal ID="PhanTrang" runat="server"></asp:Literal>
    

    <div style="clear: both"></div>
    

</asp:Content>
