<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="index_login_login" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html>
<head>
<title>SecRBAC :: :: Login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Ribbon Login Form Responsive Templates, Iphone Compatible Templates, Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!--/webfonts-->
</head>
<body>
<!--start-main-->
<h1>Welcome!<span>Please login...</span></h1>
<div class="login-box">
		<form id="form1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" class="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox>
			<%--<input type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >--%>
			<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" placeholder="Password"></asp:TextBox>
<%--            <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">--%>
		
		<div class="remember">
			
			<h4><a href="../index.aspx">Home</a></h4>
		</div>
		<div class="clear"> </div>
		<div class="btn">
			<%--<input type="submit" value="LOG IN" >--%>
            <asp:Button ID="Button1" runat="server" Text="LOG IN" value="LOG IN" OnClick="Button1_Click"/>
		</div>
		<div class="clear"> </div>
            </form>
</div>
<!--//End-login-form-->
<!--start-copyright-->
<div class="copy-right">
	<p>Template by <a href="http://w3layouts.com">w3layouts</a></p> 
</div>
<!--//end-copyright-->		
</body>
</html>