<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
  <div class="col-sm-3 col-md-3">
      <a style=" text-decoration:none;" href="ProductView.aspx?PID=<%#Eval("PID") %>">
    <div class="thumbnail">
      <img src="images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extension") %>" alt="<%#Eval("ImageName") %>">
      <div class="caption">
        <div class="probrand"><%#Eval("PName") %></div>
        <div class="proPrice"><%#Eval("PPrice") %><span class="proPriceDiscount">(0 off)</span></div>
        
      </div>
    </div>
          </a>
  </div>
                </ItemTemplate>
            </asp:Repeater>
</div>
</asp:Content>

