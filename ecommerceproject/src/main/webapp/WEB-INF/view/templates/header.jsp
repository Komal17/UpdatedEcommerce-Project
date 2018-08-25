<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<!DOCTYPE HTML>
<html>
<head>
<title>Adidas| Home :: </title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <!-- Angular.JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- MaCarouselin CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">


    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${js}/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this)();
                $(".dropdown dt a span")(text);
                $(".dropdown dd ul").hide();
                $("#result")("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value")();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="${css}/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${js}/megamenu.js"></script>

<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="${js}/move-top.js"></script>
<script type="text/javascript" src="${js}/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>


<div class="header-top">
	 <div class="wrap"> 
		<div class="logo">
			<a href="${pageContext.request.contextPath}"><img src="${images}/logo.png" alt=""/></a>
	    </div>
	  
	
		
		<div class="clear"></div>
 	</div>
   </div>
   <div class="header-bottom">
   	<div class="wrap">
   		<!-- start header menu -->
		<ul class="megamenu skyblue">
		    <li><a class="color1" href="/ecommerceproject/">Home</a></li>
			<li class="grid"><a class="color2" href="<c:url value="/product/productList/all" />">All Products</a></li>
  			   <li class="active grid"><a class="color4" href="<c:url value="/about" />">About Us</a></li>				
				<li><a class="color5" href="<c:url value="/contact" />">ContactUs</a></li>
				<li><a class="color6" href="<c:url value="/help" />">Help</a></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a class="color7" href="#">Welcome: ${pageContext.request.userPrincipal.name}</a></li>				
					<li><a class="color8" href="<c:url value="/j_spring_security_logout" />">Logout</a>	</li>			
					<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						<li><a class="color9" href="<c:url value="/customer/cart"  />">Cart</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<li><a class="color10" href="<c:url value="/admin/" />">Admin</a></li>
					</c:if>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null}">
				<li><a class="color11" href="<c:url value="/login" />">Login</a></li>
				<li><a class="color12" href="<c:url value="/register" />">SignUp</a></li>
				</c:if>
		   </ul>
		   <div class="clear"></div>
     	</div>
       </div>
