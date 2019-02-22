<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=full-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>capstone_Home</title>
    <script src="js/jquery-3.3.1.min.js"></script>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>
    <link href="netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
</head>
<style>
    ul.nav li:hover > ul.dropdown-menu {
        display: block;
    }

    .dropdown-submenu > .dropdown-menu {
        top: 0;
        left: 100%;
    }
    .bn:hover img{
        transform: scale(1.3);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            transition-duration: 1.1s
    }
</style>
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
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="about.aspx">About</a></li>
                            <li><a href="contact.aspx">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Food Stalls<b class="caret"></b></a>
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
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">BH-2 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="menulist.aspx?id=3">vascos</a></li>
                                         <li><a href="menulist.aspx?id=4">talk of the town</a></li>
                                         <li><a href="menulist.aspx?id=5">pizza express</a></li>
                                         <li><a href="menulist.aspx?id=3">kikeez</a> </li>
                                         </ul>  
                                        </li>
                                   
                                </ul>
                            </li>
                            <li>
                     <a href="Cart.aspx?">Cart<span class="badge" id="pCount" runat="server"></span></a>
                            </li>
                            <li id="btnSignUp" runat="server" ><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                            <li id="btnSignIn" runat="server" ><a href="SignIn.aspx"><span class="glyphicon glyphicon-log-in"></span>SigIn</a></li>                  
                        <li>
                            <asp:Button ID="btnSignOut" runat="server" class="btn btn-default nav-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                         </li>
                        </ul>
                    </div>
                </div>
            </div>
        <marquee> <asp:Label ID="lblSuccess" runat="server" CssClass="text-success>"></asp:Label></marquee>
        <!--- Carousel -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/c2.jpg" alt="..."/>
                        <div class="carousel-caption">
                            <h3>Chicken Curry</h3>  
                            <p><a class="btn btn-lg btn-primary" href="ProductView.aspx?PID=53" role="button">Order Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/c3.jpg" alt="..."/>
                        <div class="carousel-caption" >
                            <h3>South thali</h3>
                            <p><a class="btn btn-lg btn-primary" href="ProductView.aspx?PID=45" role="button">Order Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/c1.jpg" alt="..."/>
                        <div class="carousel-caption">
                            <h3>Pizza</h3>
                            <p><a class="btn btn-lg btn-primary" href="ProductView.aspx?PID=26" role="button">Order Now</a></p>
                            
                        </div>
                    </div>

                      <a class="left carousel-control" href="#c2" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="c1" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        <!--- Carousel -->
    
    </div>
        <br />
        <br />

        <!--- Middle Contents -->
       
        <div class="container center">
            <div class="whykhana-header" >
                <h3>Why Khanastore </h3>
                <p>Ordering food from good stalls is even easier than eating it.</p>
                </div>
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/m1.JPG" alt="thumb01" width="140" height="140" />
                    <h2>No Minimum Order</h2>
                    <p>Order in for yourself or for the group, with no restrictions on order value</p>
                    
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/m2.JPG" alt="thumb02" width="140" height="140" />
                    <h2>Easy Ordering</h2>
                    <p>Search, order, eat. Simple as that.</p>
                   
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/m3.png" alt="thumb03" width="140" height="140" />
                    <h2>Lightning-Fast Delivery</h2>
                    <p>KhanaStore's superfast delivery for food delivered fresh & on time</p>
                   
                </div>
            </div>
        </div>
        
        <!--- Middle Contents -->

    <!--- Extra -->

        <div class="container center">
            <div class="extra" >
                <h3>Famous Food Items </h3>
                </div>
           
            <div class="row" style="padding-top:50px">
                <div class="bn col-lg-2">
                    <a href="ProductView.aspx?PID=34"><img class="img-rounded" src="Images/aloopoori.JPG" alt="thumb01" width="140" height="140"/></a>       
                </div>
                <div class="bn col-lg-2">
                     <a href="ProductView.aspx?PID=22"><img class="img-rounded" src="Images/french-fries.JPG" alt="thumb02" width="140" height="140"/></a> 
                </div>
                <div class="bn col-lg-2">
                     <a href="ProductView.aspx?PID=35"><img class="img-rounded" src="Images/bonda.jpg" alt="thumb03" width="140" height="140" />  </a> 
                </div>
                <div class="bn col-lg-2">
                    <a href="ProductView.aspx?PID=38"><img class="img-rounded" src="Images/Dosa.jpg" alt="thumb03" width="140" height="140" /> </a> 
                </div>
                 <div class="bn col-lg-2">
                     <a href="ProductView.aspx?PID=37"><img class="img-rounded" src="Images/idli.jpg" alt="thumb03" width="140" height="140" /> </a>  
                </div>
                 <div class="bn col-lg-2">
                     <a href="ProductView.aspx?PID=50"><img class="img-rounded" src="Images/noodles.jpg" alt="thumb03" width="140" height="140" /> </a>  
                </div>

            </div>
               
        </div>
        




    <!--- Extra -->

         <!--- Footer  -->

        <hr />
       
        <footer>
            <section class="nb-footer">
             <div class="container">
             <div class="row">
             <div class="col-md-3 col-sm-6">
             <div class="footer-single">
	<!-- 	<img src="images/logo.png" class="img-responsive" alt="Logo"> -->

		<!-- This is only for better view of theme if you want your image logo remove div dummy-logo bellow and replace your logo in logo.png and uncomment logo tag above-->
	<!--<div class="dummy-logo"> -->   
	<div class="icon pull-left brand">
		<img src="images/l1.png" class="img-responsive" alt="Logo"/>
	</div>
		<h2>KhanaSTore</h2>
		<p>order food here</p>
	<!--</div>-->

		<p>There will be immediate response to the customer after placing the order. Customers can see the food menu of particular stalls and can place orders.</p>
	</div>

     </div>
    <div class="col-md-3 col-sm-6">
	<div class="footer-single useful-links">
	 <div class="footer-title"><h2>Navigation</h2></div>
	 <ul class="list-unstyled">
            <li><a href="Default.aspx">Home <i class="fa fa-angle-right pull-right"></i></a></li>
            <li><a href="about.aspx">About Us <i class="fa fa-angle-right pull-right"></i></a></li>
            <li><a href="contact.aspx">Contact Us <i class="fa fa-angle-right pull-right"></i></a></li>
         </ul>
        </div>
    </div>
    <div class="clearfix visible-sm"></div>
    <div class="col-md-3 col-sm-6">
	
	<div class="col-sm-12 left-clear right-clear footer-single footer-project">
		<div class="footer-title"><h2>Latest Projects</h2></div>
		<div class="col-xs-4">
			<a href="https://drive.google.com/open?id=16939ycEf_uGm27J3WMoIqPf38jAs1Uab" target="_blank"><img src="images/projects.jpeg" class="img-circle"/></a>
		</div>
		<div class="col-xs-4">
			<a href="https://github.com/veerendrasai/Railway-Reservation-system" target="_blank"><img src="images/projects.jpeg" class="img-circle"/></a>
		</div>
		<div class="col-xs-4">
		    <a href="https://github.com/veerendrasai/Blood-Donation-1" target="_blank"><img src="images/projects.jpeg" class="img-circle"/></a>
		</div>
		

	</div> 
        

    </div> 
       
    <div class="col-md-3 col-sm-6">
	<div class="footer-single">
		<div class="footer-title"><h2>Contact Information</h2></div>
		<address>
			Lovely Professional University, Paghwara<br/>
			Punjab, India <br/>
			<i class="fa fa-phone"></i>  987 654 3210 <br/>
			<i class="fa fa-fax"></i> 012 123 2345<br/>
			<i class="fa fa-envelope"></i> infokhanastore@gmail.com<br/>
		</address>					
	</div>

    </div>

    </div>
    </div>
    </section>	

   <section class="nb-copyright">
   <div class="container">
   <div class="row">
   <div class="col-sm-6 copyrt xs-center">
	2015 © All Rights Reserved. <a href="">Terms & Conditions</a> | <a href="">Privacy Policy</a>
   </div>
   <div class="col-sm-6 text-right xs-center">
	<ul class="list-inline footer-social">
		<li><a href="https://www.facebook.com/Khana-Store-329844861159155/" target="_blank"><img class="img-circle" src="images/fi.png" alt=""/></a></li>
		<li><<a href="https://instagram.com/storekhana?utm_source=ig_profile_share&igshid=1iseiedtgxqb9" target="_blank"><img class="img-circle" src="images/i1.jpg" alt=""/></a></li>
		<li><<a href="#" target="_blank"><img class="img-circle" src="images/ti.png" alt=""/></a></li>
		
	</ul>
  </div>
  </div>
  </div>
  </section>

        </footer>
      
        <!--- Footer -->

    </form>
      
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
