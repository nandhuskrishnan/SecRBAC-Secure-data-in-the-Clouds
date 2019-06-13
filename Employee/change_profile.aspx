<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change_profile.aspx.cs" Inherits="Employee_change_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<<html lang="zxx">
<head>
<title>SecRBAC  :: :: Employee</title>
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
				<li><a href="home/employee_index.aspx"><span>Home</span></a></li>
          		<li><a href="upload_files.aspx"><span>Upload_File</span></a></li> 
                 <li>
						<a href="change_profile.aspx">Change Profile</a>
					</li>
				<li><a href="access_files.aspx"><span>Access_Files</span></a></li>
				<li><a href="access_denied_files.aspx"><span>Access_Denied_files</span></a></li>   
				<li><a href="approved_files.aspx"><span>Approved_Files</span></a></li>
				<li><a href="my_requsets.aspx"><span>Received Requests</span></a></li> 
                 <li>
						<a href="modify_fileaspx.aspx">Modify File</a>
					</li>
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
                 
                    <div class="col-lg-12">
                        
                        <br /><br />
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                            <asp:View ID="View1" runat="server">

                                <table class="table table-responsive">
                                    <tr style="text-align:center">
                                        <td colspan="2">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#6666FF" Text="PROFILE"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="text-align:center">
                                        <td colspan="2" >
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="Age"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="Contact Number"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text="Username"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text="Password"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                       <tr>
                                        <td>
                                            <asp:Label ID="Label18" runat="server" Text="Designation"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="Button1" runat="server" Text="UPDATE PROFILE" CssClass="form-control" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                </table>

                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table class="table table-responsive">
                                    <tr style="text-align:center">
                                        <td colspan="2">
                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#6666FF" Text="PROFILE"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="text-align:center">
                                        <td colspan="2">
                                            <asp:Image ID="Image1" runat="server" Height="190px" Width="248px" CssClass="img img-circle" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="Age"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Text="Contact Number"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Username"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" Text="Designation"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="Button3" runat="server" Text="EDIT PROFILE" CssClass="form-control" OnClick="Button3_Click" />
                                        </td>
                                    </tr>
                                </table>
                                <div class="text-center">
                                </div>
                            </asp:View>
                        </asp:MultiView>




                        

                    </div>

                    

                </div>
			</div>
        </div>
		<br /><br /><br />
	
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
				velope" aria-hidden="true">f="mailto:example@email.com"> mail@example.com</a></p>
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
