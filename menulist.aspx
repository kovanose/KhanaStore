<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="menulist.aspx.cs" Inherits="itemmenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style>
        .bn a:hover img{
            transform: scale(1.3);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            transition-duration: 1.1s;
        }
        table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
    </style>

 <div class="abc" style="background:url(images/b1.jpg)";>
       
 <fieldset>
 <legend><h2>Food Stall menu</h2></legend>

<h2>
    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></h2>
<table style="width:50%">
  <tr>
    <th>Items</th>
    <th colspan="2">Price</th>
  </tr>
  <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
  </tr>
   <tr>
    <td>
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
    <td>
        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
  </tr>
</table>
</fieldset>

    <div class="bn col-md-5">
        <a href="Products.aspx"><img src="images/buynow.png" alt="buynow" width="140" height="140" /></a>
    </div>
    </div>
    
</asp:Content>

