<%@ Page Language="C#" AutoEventWireup="true" CodeFile="set_roles_to_employees.aspx.cs" Inherits="CEO_set_roles_to_employees" %>

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
<style>
.button {
    background-color: lightgreen;
    border: none;
    color: white;
    padding: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
}

.button1 {border-radius: 2px;}
.button2 {border-radius: 4px;}
.button3 {border-radius: 8px;}
.button4 {border-radius: 15px;}
.button5 {border-radius: 50%;}


.butt {
    background-color: lightblue;
    border: none;
    color: white;
    padding: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
}

.button1 {border-radius: 2px;}
.button2 {border-radius: 4px;}
.button3 {border-radius: 8px;}
.button4 {border-radius: 15px;}
.button5 {border-radius: 50%;}

.butt1 {
    background-color: Highlight;
    border: none;
    color: white;
    padding: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
}

.button1 {border-radius: 2px;}
.button2 {border-radius: 4px;}
.button3 {border-radius: 8px;}
.button4 {border-radius: 15px;}
.button5 {border-radius: 50%;}


img {
    max-width: 100%;
    height: auto;
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
			<li>Set Roles To Employees</li>
		</ul>
	</div>
</div>
<!-- //w3_short -->
<!-- mail -->
	
			
			<div class="container">
                <div class="row">
                  
                    <div class="col-lg-6">
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="View The Roles Of Employees" Font-Size="Large" Font-Underline="True" ForeColor="Blue"></asp:Label>
                        <br /><br />

                        





                        <asp:DataList ID="DataList1" runat="server" CssClass="table  table-responsive" RepeatColumns="1" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand1">
                            <EditItemTemplate>
                                <table class="table table-responsive" style="border: thick solid #808080">
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image1" runat="server" CssClass="img img-rounded" Height="120px" ImageUrl='<%# bind("pro_pic") %>' Width="150px" />
                                            <br />
                                            <br />
                                            <br />
                                            <span class=" fa fa-graduation-cap" style="font-size:large"></span>&nbsp; Designation:<br />
                                            <asp:Label ID="Label16" runat="server" Font-Size="Large" ForeColor="#6699FF" Text='<%# bind("role") %>'></asp:Label>
                                        </td>
                                        <td><span class="fa fa-user" style="font-size:large"></span>&nbsp;
                                           <asp:TextBox ID="TextBox1" runat="server"  Text='<%# bind("name") %>' ></asp:TextBox>
                                            <br />
                                            <br />
                                            <span class="fa fa-phone" style="border-bottom-color:forestgreen; font-size: large;"></span>&nbsp;
                                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("contact") %>'></asp:TextBox>
                                            <br />
                                            <br />
                                            <span class="fa fa-envelope" style="font-size:large"></span>&nbsp;
                                            <asp:Label ID="Label14" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                            <br />
                                            <br />
                                            <span class="fa fa-home" style="font-size:large"></span>&nbsp;
                                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("address") %>'></asp:TextBox>
                                        </td>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button ID="Button1" runat="server" CommandName="update" CssClass="butt button-4" Text="update" />
                                                &nbsp;&nbsp;
                                                 <asp:Button ID="Button3" runat="server" CommandName="cancel" CssClass="butt1 button-4" Text="Cancel" BackColor="#FF5050" />
                                            </td>
                                        </tr>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                              
                                    <table class="table table-responsive" style="border: thick solid #808080">
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image1" runat="server" CssClass="img img-rounded" Height="120px" ImageUrl='<%# bind("pro_pic") %>' Width="150px" />
                                            <br />
                                            <br />
                                            <br />
                                  <span class=" fa fa-graduation-cap" style="font-size:large"></span> &nbsp;            Designation:<br />
                                            <asp:Label ID="Label16" runat="server" Font-Size="Large" ForeColor="#6699FF" Text='<%# bind("role") %>'></asp:Label>
                                        </td>
                                        <td>
                                     <span class="fa fa-user" style="font-size:large"></span> &nbsp;     <asp:Label ID="Label12" runat="server"  Text='<%# bind("name") %>'></asp:Label>
                                            <br /><br />
                                            <span class="fa fa-phone"  style="border-bottom-color:forestgreen; font-size: large;"></span>&nbsp;
                                            <asp:Label ID="Label15" runat="server" Text='<%# bind("contact") %>'></asp:Label> 
                                             <br /><br />
                                             <span class="fa fa-envelope" style="font-size:large"></span> &nbsp; <asp:Label ID="Label14" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                            <br /><br /> <span class="fa fa-home" style="font-size:large"></span> &nbsp;  <asp:Label ID="Label13" runat="server" Text='<%# bind("address") %>'></asp:Label>
                                           

                                        </td>
                                   
                                   
                                  
                                    
                                        <tr>
                                            <td colspan="2">
                                            
  <asp:Button ID="Button1" runat="server" Text="edit" CssClass="butt button-4" CommandName="edit"/>
                                                &nbsp;&nbsp;
                                              <asp:Button ID="Button2" runat="server" Text="Change Designation" CssClass="button btn btn-sm" CommandName="upd" CommandArgument='<%# bind("email") %>'/>
                                            </td>
                                        </tr>
                                   
                                   
                                  
                                    
                                </table>
                              
                            </ItemTemplate>
                        </asp:DataList>

                        





                    </div>
                    <div class="col-lg-5" >

                      <br /><br />
                        <asp:Label ID="Label5" runat="server" Text="Set Roles Here" Font-Size="Large" Font-Underline="True" ForeColor="Blue"></asp:Label>
                        <br /><br />
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <table class="table table-borderd table-respponsive">
                                <tr>
                                    <td>
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text="Roles" ForeColor="#990033"></asp:Label>
                                    </td>
                                    <td>
                                       
                                        <table class="table table-bordered table-responsive" >
                                            <tr>
                                                <td>
                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                        </table>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Sub Roles" Visible="False" ForeColor="#990033"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Visible="False">
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="Sub Roles Of Developer" Visible="False" ForeColor="#990033"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Visible="False">
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                       
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:Image ID="Image2" runat="server"  ImageUrl="~/index/7661.jpg"  CssClass="img img-responsive  img-rounded"   Height="289px" Width="356px"/>
                        </asp:Panel>
                        


                    </div>

                    <div class="col-lg-1"></div>

                </div>
			</div>
		
	
		

<!-- //mail -->


<!-- footer -->
        <br /><br />    <br /><br />    <br /><br />    <br /><br />    <br /><br />    <br /><br />    <br /><br />    <br /><br />    <br /><br />
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
