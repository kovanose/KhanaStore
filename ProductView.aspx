<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="padding-top: 50px">
        <div class="col-md-5">
            <asp:Repeater ID="rptrImages" runat="server">
            <ItemTemplate>
            <div style="max-width: 480px" class="thumbnail">
                <img src="images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extension") %>" alt="<%#Eval("Name") %>" />
            </div>
            </ItemTemplate>
            </asp:Repeater>
        </div>
       <div class="col-mg-7">
           <asp:Repeater ID="rptrProductDetails" runat="server">
               <ItemTemplate>
           <div class="divDet1">
           <h1 class="ProNameView"><%#Eval("PName") %></h1>
           <span class="proPrice"><%#Eval("PPrice") %></span><span class="proPriceDiscount">0 OFF</span>
            </div>
           <div class="divDet1">
          <asp:LinkButton ID="btnAddToCart" OnCommand="btnAddToCart_Command" CssClass="mainButton" runat="server" CommandName="Cart" CommandArgument='<%#Eval("PId") %>'>Add to Cart </asp:LinkButton>
               </div>
           <div>
               <h5 class="h5Size">Description</h5>
               <p> <%#Eval("PDescription") %> </p>
           </div>
           <div class="divDet1">
               <p><%# ((int)Eval("FreeDelivary")==1)?"Free Delivery":"" %></p>
               <p><%# ((int)Eval("COD")==1)?"Cash On Delivery":"" %></p>
           </div>
                    <asp:HiddenField ID="hfCatID" Value='<%# Eval("PcategoryID") %>' runat="server" />
                    <asp:HiddenField ID="hfSubCatID" Value='<%# Eval("PSubCatID") %>' runat="server" />
                    </ItemTemplate>
                   </asp:Repeater>
            </div>
        </div>
</asp:Content>

