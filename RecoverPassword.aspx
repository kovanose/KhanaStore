<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset your password !!</title>
     <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="images/logo.png" height="40" /></span>KhanaStore</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="about.aspx">About</a></li>
                            <li><a href="contact.aspx">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All_Items</a></li>  
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Uni Mall<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="menulist.aspx?id=1">Spicy Cuisine</a></li>
                                         <li><a href="menulist.aspx?id=2">Domino's</a></li>
                                         </ul>
                                        </li>
                                    <li role="separator" class="divider"></li>
                                     <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">BH-1 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="menulist.aspx?id=3">s.k foods</a></li>
                                         <li><a href="menulist.aspx?id=4">p.j foods</a></li>
                                         <li><a href="menulist.aspx?id=5">southern express</a></li>
                                         </ul>  
                                        </li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown dropdown-submenu">
                                        <a href="#" cslass="dropdown-toggle" data-toggle="dropdown">BH-2 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="menulist.aspx?id=3">vascos</a></li>
                                         <li><a href="menulist.aspx?id=4">talk of the town</a></li>
                                         <li><a href="menulist.aspx?id=5">pizza express</a></li>
                                         <li><a href="menulist.aspx?id=3">kikeez</a> </li>
                                         </ul>  
                                        </li>
                                </ul>
                            </li>
                            <li><a href="SignIn.aspx">SignIn</a></li>
                            </ul>
                    </div>
                </div>
            </div>
    </div>
       <div class="container">
            <div class="form-horizontal">
                <h2>Reset Password</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="lblMsg" runat="server" CssClass="col-md-2 control-label" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                    </div>
                
                <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" CssClass="col-md-2 control-label" Text="new Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbNewPass" CssClass="form-control" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="Please enter your new password !" ControlToValidate="tbNewPass"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="lblRetypePass" runat="server" CssClass="col-md-2 control-label" Text="Confirm Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbConfirmPass" CssClass="form-control" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                       
                        
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Both  Password must be same !" ControlToValidate="tbNewPass" ControlToCompare="tbConfirmPass"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                      
                        <asp:Button ID="btRecPass" runat="server" CssClass="btn btn-default" Text="reset" Visible="False" OnClick="btRecPass_Click" ></asp:Button>
                         <asp:Label ID="lblPassRec" runat="server" ></asp:Label>
                    </div>
                </div>
            </div>

        </div>
</form>
     <!--- Footer  -->

        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2015 TechCybo.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        <!--- Footer -->

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
