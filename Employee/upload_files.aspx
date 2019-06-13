<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_files.aspx.cs" Inherits="Employee_upload_files" %>

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
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                            <asp:View ID="View1" runat="server">

                                <table class="table table-bordered table-responsive" style="border-style:double;border-color:#905a5a;background-color:#ead6d6">
                                    <tr>
                                        <td colspan="2">
                                            <div class="text-center"><asp:Label ID="Label1" runat="server" Text="Upload Files" Font-Size="Large" Font-Underline="True" ForeColor="#336600"></asp:Label></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="FileName" ForeColor="Black"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Filename" ForeColor="#ff0000" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Discription" ForeColor="Black"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="form-control" AutoCompleteType="Disabled" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Discription" ForeColor="#ff0000" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Upload File" ForeColor="Black"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;
                                            <div class="text-center">
                                                <asp:Button ID="Button1" runat="server" Text="Upload"  CssClass="btn btn-sm btn-success" OnClick="Button1_Click" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <p style="color: #000000">
                                <asp:DataList ID="DataList1" runat="server" CssClass="table table-bordered table-hover table-responsive" OnItemDataBound="DataList1_ItemDataBound" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                    <AlternatingItemStyle BackColor="#F7F7F7" />
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <ItemTemplate>
                                        <table class="table table-bordered table-hover table-responsive">
                                            <tr>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                                    <asp:Label ID="Label5" runat="server" Text='<%# bind("role") %>' ForeColor="Black"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DataList ID="DataList2" runat="server" CssClass="table table-bordered table-hover table-responsive" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
                                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                                        <ItemTemplate>
                                                            <table class="table table-bordered table-hover table-responsive" >
                                                                <tr>
                                                                    <td>
                                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                                        <asp:Label ID="Label6" runat="server" Text='<%# bind("sub_main_role") %>' ForeColor="Black"></asp:Label>
                                                                        <br />
                                                                        <asp:Label ID="Label80" runat="server" ForeColor="Black" Text='<%# bind("priority") %>' Visible="False" Font-Size="X-Large"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DataList ID="DataList3" runat="server">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="CheckBox3" runat="server" />
                                                                                <asp:Label ID="Label7" runat="server" Text='<%# bind("sub_role") %>' ForeColor="Black"></asp:Label>
                                                                                <asp:Label ID="Label8" runat="server" ForeColor="Black" Text='<%# bind("Priority") %>' Visible="false"></asp:Label>
                                                                            </ItemTemplate>
                                                                        </asp:DataList>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                                    </asp:DataList>
                                                </td>
                                            </tr>
                                           
                                        </table>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                </asp:DataList>
                                    </p>
                                <div class="text-center">
                            <asp:Button ID="Button2" runat="server" Text="Privacy" CssClass="btn btn-sm btn-success" OnClick="Button2_Click" />
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