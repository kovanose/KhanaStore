<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 71%;
        }
        .auto-style2 {
            height: 52px;
        }
        .auto-style3 {
            height: 46px;
        }
        .auto-style4 {
            height: 52px;
            width: 258px;
        }
        .auto-style5 {
            height: 46px;
            width: 258px;
        }
        .auto-style6 {
            width: 63%;
            color: #9999FF;
            margin-right: 1px;
            margin-top: 31px;
        }
        .auto-style7 {
            width: 128px;
            height: 91px;
            color: #000000;
        }
        .auto-style8 {
            width: 128px;
            height: 117px;
            color: #000000;
        }
        .auto-style9 {
            height: 117px;
            width: 227px;
        }
        .auto-style10 {
            height: 91px;
            width: 227px;
        }
    </style>


    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="KhanaStore"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Italic="True" ForeColor="#6699FF" Text="Checkout in Cart"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Order ID</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Order Date</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" GridLines="None" Height="218px" ShowFooter="True" style="margin-top: 38px" Width="532px" CellSpacing="1">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No" />
                <asp:BoundField DataField="PId" HeaderText="Product Id" />
                <asp:BoundField DataField="PName" HeaderText="Product Name" />
                <asp:BoundField DataField="PPrice" HeaderText="Price" />
                <asp:BoundField DataField="totalprice" HeaderText="Total price" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Height="50px" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;
        <table border="1" class="auto-style6">
            <tr>
                <td class="auto-style7">Type Your Address</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="69px" TextMode="MultiLine" Width="402px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Mobile Number</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="222px"></asp:TextBox>
                </td>
            </tr>
        </table>
       
        <asp:Button ID="Button1" runat="server" Text="Place Order" Height="40px" OnClick="Button1_Click" style="margin-top: 23px" Width="193px" />

</asp:Content>

