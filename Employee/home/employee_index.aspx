<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_index.aspx.cs" Inherits="Employee_employee_index" %>

<!DOCTYPE html>

<html lang="en">

<head>
	<title>Adviser A Corporate Category Bootstrap Responsive Website Template | Home :: W3layouts</title>
	<!-- Meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Adviser Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Bootstrap Css -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //Font-awesome Css -->
	<link rel="stylesheet" type="text/css" href="css/style7.css" />
	<!--//menu slider -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<!--// Flexslider-CSS -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Required Css -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<!--//fonts-->

</head>

<body>
	<!--Slider-->
	<div class="banner-w3-agileits-slider">
		<div class="overlay overlay-contentpush">
			<button type="button" class="overlay-close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>
			<nav>
				<ul>
					<li>
						<a href="employee_index.aspx">Home</a>
					</li>
					<li>
						<a href="../upload_files.aspx">Upload Files</a>
					</li>
                    <li>
						<a href="../change_profile.aspx">Change Profile</a>
					</li>
                    <li>
						<a href="../access_files.aspx">Access Files</a>
					</li>
                     <li>
						<a href="../access_denied_files.aspx">Access_Denied_files</a>
					</li>
                     <li>
						<a href="../approved_files.aspx">Approved_Files</a>
					</li>
                     <li>
						<a href="../my_requsets.aspx">Received Requests</a>
					</li>
                      <li>
						<a href="../modify_fileaspx.aspx">Modify File</a>
					</li>
                     <li>
						<a href="../../index/index.aspx">Logout</a>
					</li>
					
				</ul>
			</nav>
		</div>
		<section class="header-w3layouts-top">
			<button id="trigger-overlay" type="button">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
			<h1>
				<a href="index.html">
					<span>E</span>mployee</a>
			</h1>
		</section>
		<div class="container">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-info-wthree">
							<h3>We offer a range of</h3>
							<p>Corporate</p>
							<h3>Management Services​​​​​​​</h3>
						</div>
						
					</li>
					<li>
						<div class="slider-info-wthree">
							<h3>We offer a range of</h3>
							<p>Conflict</p>
							<h3>Management Services​​​​​​​</h3>
						</div>
						
							
					</li>
					<li>
						<div class="slider-info-wthree">
							<h3>We offer a range of</h3>
							<p>Investment</p>
							<h3>Management Services​​​​​​​</h3>
						</div>
						
					</li>

				</ul>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--//Slider-->
	<!--//Header-->
	<!-- banner-w3-agileits-btm -->
	
	<!-- //banner-w3-agileits-bottom -->
	<!-- stats -->
	
	<!-- //stats -->

	<!-- What-we-do -->
	
	<!--// What-we-do -->

	<!--footer-w3-->
	
	
	
	<!--/footer-w3 -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<!-- //menu -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/demo7.js"></script>
	<!-- //menu -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({
	                scrollTop: $(this.hash).offset().top
	            }, 1000);
	        });
	    });
	</script>
	<!-- start-smoth-scrolling -->
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
	    $('.counter').countUp();
	</script>
	<!-- //stats -->

	<script src="js/responsiveslides.min.js"></script>
	<script>
	    // You can also use "$(window).load(function() {"
	    $(function () {
	        // Slideshow 3
	        $("#slider3").responsiveSlides({
	            auto: true,
	            pager: false,
	            nav: true,
	            speed: 500,
	            namespace: "callbacks",
	            before: function () {
	                $('.events').append("<li>before event fired.</li>");
	            },
	            after: function () {
	                $('.events').append("<li>after event fired.</li>");
	            }
	        });

	    });
	</script>
	<!-- FlexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
	    $(function () {

	    });
	    $(window).load(function () {
	        $('.flexslider').flexslider({
	            animation: "slide",
	            start: function (slider) {
	                $('body').removeClass('loading');
	            }
	        });
	    });
	</script>
	<!-- FlexSlider -->

	<!-- smooth scrolling -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
	        $().UItoTop({
	            easingType: 'easeOutQuart'
	        });
	    });
	</script>


	<a href="#home" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- //smooth scrolling -->
	<script type="text/javascript" src="js/bootstrap.js"></script>

</body>

</html>
