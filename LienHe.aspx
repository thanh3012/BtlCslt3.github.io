<%@ Page Title="" Language="C#" MasterPageFile="~/Site01.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="WebDongHo.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 90%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
      <!--  <p><div><b>Liên hệ và hỗ trợ </b></div>
            <div><h4>Các hình thức liên hệ</h4></div>
       </p> -->
        <body>
 <h2 align ="center"><b>Liên hệ và hỗ trợ</b></h2>
 <!--<h4 align ="center">Các hình thức liên hệ hỗ trợ</h4> -->

 <table border="0" cellpadding="0" align="center"  class="auto-style1">
     <tr  bgcolor = "#EEEEEE">
	     <th  align ="left" width="20%">HOTLINE:</th>
		 <th  align ="left" width="80%"><a href="tel:19001234">19001234</a></th>
	 </tr>
	 <tr  bgcolor="#DDDDDD">
	     <th  align ="left" width="20%" >EMAIL:</th>
		 <th  align ="left" width="80%"><a href="mailto:Motconmeomap1234@gmail.com"> Motconmeomap1234@gmail.com  </a></th>
	 </tr>
	 <tr  bgcolor = "#EEEEEE">
	     <th align ="left"width="20%">FANPAGE</th>
		 <th align ="left" width="80%"><a href="https://www.facebook.com/donghochinhhangodanang">https://www.facebook.com/donghochinhhangodanang</a></th>
	 </tr>	 
     <tr  bgcolor = "#DDDDDD">
	     <th colspan="2"><a href="https://www.google.com/maps/d/viewer?msa=0&mid=1Aa7SSm_ikZMXJmHY8GgxIPUxGx8&ll=21.074168999999983%2C105.773524&z=18">
              <p>Liên hệ trực tiếp tại cửa hàng: </p>
             <p><img src="\HinhAnh\HVTC.jpg"</p></a>
             </th>		 
	 </tr>    
</body>                     
    </form>
    </table>
    <br />
</asp:Content>
