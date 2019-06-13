<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_roles.aspx.cs" Inherits="CEO_manage_roles" %>

<!DOCTYPE html>

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
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.btnn12 {
    background-color: gray;
    color: white;
    padding: 16px;
    font-size: 2px;
    border: none;
}

.dropdown {
    position: absolute;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: lightblue}

.dropdown:hover .dropdown-content {
    display: block;
}

.btnn12:hover, .dropdown:hover .btnn12 {
    background-color: lightblue;
}
</style>
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
           <asp:Button ID="Button7" runat="server" Text="Manage Roles" CssClass="btn" />
<div class="dropdown">
  <button class="btnn12" >
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content">
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add Roles</asp:LinkButton>
			<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Remove Roles</asp:LinkButton>
      
  </div>
</div>
		</ul>
	</div>
</div>
<!-- //w3_short -->
<!-- mail -->
	
			<br /><br />
			<div class="container">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        
	<div class="copyright">
        <div class="banner-agileinfo">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="-1">
                <asp:View ID="View1" runat="server">
                    <table class="table table-bordered table-responsive">
                            <tr>
                                <td>
                                    <table class="table table-bordered table-responsive">
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Label ID="Label1" runat="server" Text="Add Roles" Font-Size="Large"></asp:Label>
                                                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text="Role"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                                                                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Enter Role" ForeColor="#ff0000" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Priority Of roles</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Select Priority</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Button ID="Button1" runat="server" CausesValidation="false" Text="Add Role" OnClick="Button1_Click" CssClass="btn btn-sm btn-primary"/>
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table class="table table-bordered table-responsive">
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Label ID="Label3" runat="server" Text="Add Sub Roles" Font-Size="Large"></asp:Label>
                                                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="Roles"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="SubRole"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                                                                                                                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter SubRole" ForeColor="#ff0000" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Priority Of roles</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Select Priority</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Button ID="Button2" runat="server" CausesValidation="false" Text="Add Sub Role" OnClick="Button2_Click" CssClass="btn btn-sm btn-primary"/>
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table class="table table-bordered table-responsive">
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                                                                    <asp:Label ID="Label6" runat="server" Text="Add Sub Roles Of Technologies" Font-Size="Large"></asp:Label>
                                       </div>
     </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="Role"></asp:Label>
                                            </td>
                                            <td>
                                                
                                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
                                                        </asp:DropDownList>
                                                    
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="Sub Role"></asp:Label>
                                            </td>
                                            <td>
                                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                                        </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="Sub Roles of Sub Role"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                                                                                                                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Role" ForeColor="#ff0000" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>


                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Priority Of roles</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Select Priority</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Button ID="Button3" runat="server" CausesValidation="false" Text="Add SubRoles Of Technologies" OnClick="Button3_Click" CssClass="btn btn-sm btn-primary" />
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                </asp:View>
                <asp:View ID="View2" runat="server">

                    <table class="table table-bordered table-responsive">
                            <tr>
                                <td>
                                    <table class="table table-bordered table-responsive">
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Label ID="Label10" runat="server" Text="Remove Roles" Font-Size="Large"></asp:Label>
                                                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text="Role"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged"></asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Button ID="Button4" runat="server" Text="Remove Role" OnClick="Button4_Click" CssClass="btn btn-sm btn-primary"/>
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table class="table table-bordered table-responsive">
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Label ID="Label12" runat="server" Text="Remove Sub Roles" Font-Size="Large"></asp:Label>
                                                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label13" runat="server" Text="Roles"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label14" runat="server" Text="SubRole"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged"></asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Button ID="Button5" runat="server" Text="Remove Sub Role" OnClick="Button5_Click" CssClass="btn btn-sm btn-primary"/>
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table class="table table-bordered table-responsive">
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                                                                    <asp:Label ID="Label15" runat="server" Text="Remove Sub Roles Of Technologies" Font-Size="Large"></asp:Label>
                                       </div>
     </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text="Role"></asp:Label>
                                            </td>
                                            <td>
                                                
                                                        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged1">
                                                        </asp:DropDownList>
                                                    
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text="Sub Role"></asp:Label>
                                            </td>
                                            <td>
                                                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text="Sub Roles of Sub Role"></asp:Label>
                                            </td>
                                            <td>
                                               <asp:DropDownList ID="DropDownList10" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td colspan="2">
                                                <div class="text-center">
                                                <asp:Button ID="Button6" runat="server" Text="Remove SubRoles Of Technologies" OnClick="Button6_Click" CssClass="btn btn-sm btn-primary" />
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>

                </asp:View>
            </asp:MultiView>
        </div>
	</div>
                        
	
                    </div>
                    <div class="col-lg-1"></div>
                </div>
			</div>
			
			
			</div>
		
	
		

<!-- //mail -->


<!-- footer -->
<footer>
	<div class="agileits-w3layouts-footer-top">
		<div class="container">
			<div class="col-md-6 agileits-w3layouts-footer-top-left">
				<p><i class="fa fa-phone" aria-hidden="true"></i> +1 234 567 8901 agileits-w3layouts-footer-top-left">
				gileits-w3layouts-footer-top-left">
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