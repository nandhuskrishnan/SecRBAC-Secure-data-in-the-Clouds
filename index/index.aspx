﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index_index" %>

<!DOCTYPE html>

<html lang="zxx">
<head>
<title>SecRBAC</title>
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
<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Athiti:200,300,400,500,600,700&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
</head>
<body> 
<!-- banner -->
<div class="main-agile">
	<div class="banner-w3l">
		<!-- header -->
		<div class="header">
			<div class="logo">
                
				<h1><a href="index.html"><span>SecR</span>BAC<label> Secure data in the Clouds
</label></a></h1>
			</div>  
			<div class="clearfix"> </div>
		</div>
		<!-- //header -->
		<!-- top-nav -->
		<nav class="cd-stretchy-nav edit-content">
			<a class="cd-nav-trigger" href="#0"> Menu <span aria-hidden="true"></span> </a>
			<ul>
				<li><a href="#home" class="scroll active"><span>Home</span></a></li>
				<li><a href="login/login.aspx" class="fa fa-signup"><span>Login</span></a></li>
				
			</ul> 
			<span aria-hidden="true" class="stretchy-nav-bg"></span>
		</nav> 
		<!-- //top-nav -->
		<div class="container">
			<div class="agile_banner_info">
				<div class="agile_banner_info1">
					<h3>Secure Your Data In <span>Cloud</span></h3>
					<div id="typed-strings" class="agileits_w3layouts_strings">
						<p>start your <i>business</i> to complete your dream</p>
						<p>Our <i>business</i> is Your business</p>
						<p>Best Of <i>business</i> Planning advisors & specialist</p>
					</div>
					<span id="typed" style="white-space:pre;"></span>
				</div>
				<div class="banner_agile_para">
					<p></p>
				</div>
				<div class="wrapper-inner-tab-backgrounds">
					<div class="wrapper-inner-tab-backgrounds-first"><a href="index.aspx"><div class="sim-button button17">Welcome</div></a></div>
				</div>
			</div>
            <br /><br /><br />
		</div>
	</div>
</div>
<!-- //banner -->	
<!-- welcome -->

<!-- //welcome -->
<!-- middle -->

<!-- //middle -->
<!-- screen -->

<!-- //screen -->
<!-- services -->

<!-- //services -->
<!-- news -->

<!-- //news -->
<!-- newsletter -->

<!-- //newsletter -->
<!-- footer -->

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
<!-- banner-type-text -->
<script src="js/typed.js" type="text/javascript"></script>
<script>
    $(function () {

        $("#typed").typed({
            // strings: ["Typed.js is a <strong>jQuery</strong> plugin.", "It <em>types</em> out sentences.", "And then deletes them.", "Try it out!"],
            stringsElement: $('#typed-strings'),
            typeSpeed: 30,
            backDelay: 500,
            loop: false,
            contentType: 'html', // or text
            // defaults to false for infinite loop
            loopCount: false,
            callback: function () { foo(); },
            resetCallback: function () { newTyped(); }
        });

        $(".reset").click(function () {
            $("#typed").typed('reset');
        });

    });

    function newTyped() { /* A new typed object */ }

    function foo() { console.log("Callback"); }
</script>
<!-- //banner-type-text -->
<!-- responsiveslider -->
<script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider3").responsiveSlides({
            auto: true,
            pager: false,
            nav: false,
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
<!-- //responsiveslider -->
<!-- //js-scripts -->

</body>
</html>