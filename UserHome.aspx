<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>capstone_userhome</title>
    <script src="js/jquery-3.3.1.min.js"></script>
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
    <style>
        ul.nav li:hover > ul.dropdown-menu{ display:block;}
        .dropdown-submenu>.dropdown-menu{top:0;left:100%;}
    </style>
<body>
    <form id="form1" runat="server">
   <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
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
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Food Stalls<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All_Items</a></li>  
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Uni Mall<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="#">Spicy cousin</a></li>
                                         <li><a href="#">Domino's</a></li>
                                         </ul>
                                        </li>
                                    <li role="separator" class="divider"></li>
                                     <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">BH-1 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="#">s.k foods</a></li>
                                         <li><a href="#">p.j foods</a></li>
                                         <li><a href="#">southern express</a></li>
                                         </ul>  
                                        </li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">BH-2 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="#">vascos</a></li>
                                         <li><a href="#">talk of the town</a></li>
                                         <li><a href="#">pizza express</a></li>
                                         <li><a href="ProductView.aspx?PID=12">kikeez</a> </li>
                                         </ul>  
                                        </li>
                                   
                                </ul>
                            </li>
                             <li>
                                  <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                  cart <span class="badge" id="pCount" runat="server"></span></button>
                            </li>
                            <li>
                                <asp:Button ID="btnSignIn" runat="server" Text="Sign In" Class="btn btn-default navbar-btn" OnClick="btnSignIn_click" />
                                <asp:Button ID="btnSignOut" runat="server" Text="Sign out" Class="btn btn-default navbar-btn" OnClick="btnSignOut_click" />
                            </li>
                           
                            </ul>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
    </form>
    <!--- Footer  -->

        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; KhanaStore.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        <!--- Footer -->

     
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
