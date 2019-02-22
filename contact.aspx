﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="bgcolor" style="background-color:#2196F3;">
    <br />
    <br />
    <br />
    <br />
   
   <h1 align="center">Contact Us Now..</h1>
    <br />

<table align="center" border = "0" style="width: 409px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label><br />
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" ValidationGroup = "contact"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="txtName">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label><br />
        </td>
        <td>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
             ControlToValidate = "txtSubject"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label><br />
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <asp:RegularExpressionValidator id="valRegEx" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression=".*@.*\..*"
            ErrorMessage="*Invalid Email address."
            display="dynamic">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                ControlToValidate="txtEmail">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align = "top" >
            <asp:Label ID="Label4" runat="server" Text="Message:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" Rows="4" Width="250px" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                ControlToValidate="txtBody">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
   <tr>
        <td></td>
        <td>
            <asp:Button ID="btnSend" runat="server" Text="Send" onClick="btnSend_Click"/>
       </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor = "Green"></asp:Label>
       </td>
    </tr>
</table>
         </div>
</asp:Content>


