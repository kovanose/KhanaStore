<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="PlacedOrder.aspx.cs" Inherits="PlacedOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 460px;
        }
        .auto-style2 {
            height: 46px;
        }
        .auto-style3 {
            height: 76px;
        }
        .auto-style5 {
            width: 100%;
            height: 89px;
        }
        .auto-style6 {
            height: 77px;
        }
        .auto-style7 {
            width: 434px;
        }
        .auto-style8 {
            height: 60px;
        }
        .auto-style9 {
            height: 58px;
        }
        .auto-style10 {
            color: #990099;
        }
        .auto-style11 {
            color: #000000;
        }
    </style>

    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="KhanaStore"></asp:Label>
        <br />
        <br />
        <strong><em>Your Order had been placed succesfully, Thankyou.</em></strong><br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Generate Invoice as PDF"></asp:Label>
        <br />
        <br />
        Order Id :
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" ForeColor="#9900FF" Height="30px" OnClick="Button1_Click" Text="Download Invoice" Width="126px" />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="357px">
            <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style2" style="text-align: center">Retail Invoice</td>
                </tr>
                <tr>
                    <td class="auto-style3">Order no :
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <br />
                        <br />
                        Order Date :
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <table border="1" class="auto-style5">
                            <tr>
                                <td class="auto-style7">Buyer Address<br />
                                    <asp:Label ID="Label6" runat="server"></asp:Label>
                                </td>
                                <td>Seller Address<br />
                                    <asp:Label ID="Label7" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="833px">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="Sno">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PId" HeaderText="Product Id">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PName" HeaderText="Product Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PPrice" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">GrandTotal :
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Declaration : We declare that this invoice actual price of the items and that all particulars are true and authentic.<br /> Incase you find any discrepancy on this Invoice, please&nbsp; inform <span class="auto-style10"><a href="mailto:infokhanastore@gmail.com">infokhanastore@gmail.com</a><br />
                        <br />
                        </span><span class="auto-style11"><strong>This is a Computer generated Invoice and does not required signature.</strong></span></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>

</asp:Content>

