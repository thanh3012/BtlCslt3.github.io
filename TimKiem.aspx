<%@ Page Title="" Language="C#" MasterPageFile="~/Site01.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="WebDongHo.TimKiem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
            <asp:TextBox ID="TextBox_Timkiem" runat="server"></asp:TextBox>
            <asp:Button ID="Button_Timkiem" runat="server" Text="Tìm kiếm" class="btn btn-outline-success" OnClick="click_timkiem" />
            <br />
    </form>

    <asp:Literal ID="DanhSachDongHo" runat="server"></asp:Literal>


    <div style="clear: both"></div>


    <asp:Literal ID="PhanTrang" runat="server"></asp:Literal>
     

</asp:Content>
