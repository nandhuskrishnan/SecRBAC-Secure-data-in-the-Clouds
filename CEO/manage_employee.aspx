<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_employee.aspx.cs" Inherits="CEO_manage_employee" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
    
<title>SecRBAC  :: :: CEO</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Business Field web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
   
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<link href="http://localhost:4090/fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://localhost:4090/fonts.googleapis.com/css?family=Athiti:200,300,400,500,600,700&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
</head>
<body> 
   
    <form id="form1" runat="server">
<!-- banner-2 -->
<div class="main-agile">
	<div class="banner-w3l-2">
		<!-- header -->
		<div class="header">
			<div class="logo">
                
				<h1><a href="index.html"><span>SecR</span>BAC<label> Secure data in the Clouds
</label></a></h1>
			</div>
		<!-- //header -->
		<!-- top-nav -->
		<nav class="cd-stretchy-nav edit-content">
			<a class="cd-nav-trigger" href="#0"> Menu <span aria-hidden="true"></span> </a>
			<ul>
				<li><a href="home/ceo_index.aspx"><span>Home</span></a></li>
				<li><a href="manage_employee.aspx"><span>Manage_Employees</span></a></li>   
				<li><a href="manage_roles.aspx"><span>Manage_Roles</span></a></li>
                				<li><a href="Approve_requests.aspx"><span>Approve_Requests</span></a></li>

				<li><a href="set_roles_to_employees.aspx"><span>Set_roles_to_Employees</span></a></li> 
                                				<li><a href="view_files.aspx"><span>View Files</span></a></li> 

                				<li><a href="../index/index.aspx"><span>Logout</span></a></li> 
	</ul> 
			<span aria-hidden="true" class="stretchy-nav-bg"></span>
		</nav> 
		<!-- //top-nav -->
	</div>
</div>
<!-- //banner-2 -->	
<!-- w3_short -->
<div class="services-breadcrumb">
	<div class="agile_inner_breadcrumb">
	   <ul class="w3_short">
			<li><a href="home/ceo_index.aspx">Home</a><i>||</i></li>
			<li>Manage Employee</li>
		</ul>
	</div>
</div>
<!-- //w3_short -->
<!-- mail -->
	
			
			<div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6">
                        <br /><br />
                        <table class="table table-bordered table-responsive" style="background-color:#d5e5ee">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="Black"></asp:Label>

                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Name" ForeColor="#ff0000" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Age" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Age" ForeColor="#ff0000" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Enter Valid Age" ForeColor="#ff0000" ControlToValidate="TextBox5" ValidationExpression="\d{2}"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Gender" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Address" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Address" ForeColor="#ff0000" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Email" ForeColor="Black"></asp:Label>
                                   
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Email" ForeColor="#ff0000" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                                                         <asp:RegularExpressionValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Enter Valid Email" ForeColor="#ff0000" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Contact" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Contact" ForeColor="#ff0000" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter Valid Phone NUmber" ForeColor="#ff0000" ControlToValidate="TextBox2" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Profile Picture" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                </td>
                            </tr>
                            <tr>
                             <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" Text="Register"  CssClass="btn btn-sm btn-success" OnClick="Button1_Click" />
                              </td>
                            </tr>
                        </table>






                    </div>

                    <div class="col-lg-3"></div>

                </div>
			</div>
		
	
		<div class="map wow fadeInUp animated" data-wow-delay=".5s">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50996.31320435244!2d-122.06676498187694!3d36.97949802442312!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808e441b7c36d549%3A0x52ca104b2ad7f985!2sSanta+Cruz%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1469096018666" style="border:0"></iframe>
	</div>

<!-- //mail -->


<!-- footer -->
<footer>
	<div class="agileits-w3layouts-footer-top">
		<div class="container">
			<div class="col-md-6 agileits-w3layouts-footer-top-left">
				<p><i class="fa fa-phone" aria-hidden="true"></i> +1 234 567 8901 agileits-w3layouts-footer-top-left">
				<p><i class="fa fa-envelope" aria-hidden="true"></i> Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="agileits-footer-bottom">
		<div class="container">
			<div class="agileits-footer-bottom-grids">
				<div class="col-md-6 footer-bottom-left">
					<h2>About Us</h2>
					<div class="footer-img-grids">
						<div class="footer-img">
							<img src="images/f1.jpg" alt="" />
						</div>
						<div class="footer-img-info">
							<p>Suspendisse potenti. Pellentesque pulvinar tellus at est ullamcorper, at elementum nibh laoreet. Nunc id diam in nulla sollicitudin auctor. Donec elementum felis turpis, vel interdum libero congue non. Mauris non magna convallis</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 footer-bottom-right">
					<h5>We are social</h5>
					<div class="agileinfo-social-grids">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
							<li><a href="#"><i class="fa fa-vk"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 w3l-footer one tweet footer-bottom-right">
					<h5>Tweets</h5>
					<ul>
						<li>
							<a href="#"><i class="fa fa-twitter"></i>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accus.
							<i>http//example.com</i></a>
							<span>About 15 minutes ago<span>
						</span></span></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<div class="container">
			<p>© 2017 Business Field. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
	</div>
</footer>
<!-- //footer -->

<!-- js-scripts -->		
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->
<!-- menu-js --> 	
<script src="js/modernizr.js"></script> <!-- Modernizr -->	
<script src="js/menu.js"></script> <!-- Resource jQuery -->	
<!-- //menu-js --> 	 
<!-- smooth scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->
<!-- //js-scripts -->

    </form>

</body>
</html>