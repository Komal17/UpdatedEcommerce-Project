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
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="${js}/move-top.js"></script>
<script type="text/javascript" src="${js}/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) 
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
<%@include file="/WEB-INF/view/templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

         <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <div><label for="name">Name</label></div>
            <div><form:input path="cart.customer.customerName" id="name" class="form-Control" /></div>
        </div>

        <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control" />
        </div>

        <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control" />
        </div>

        <br/>

        

         <div class="col_1_of_2 span_1_of_2" style="float: left;">
         <h3>Billing Address:</h3>
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

         <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

       <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="billingCity">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
        </div>

         <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="billingState">State</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control" />
        </div>

         <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="billingCountry">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

       <div class="col_1_of_2 span_1_of_2" style="float: left;">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control" />
        

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-primary" style="padding:15px 25px;" name="_eventId_customerInfoCollected" />

        <button class="btn btn-warning" style="padding:15px 25px;" name="_eventId_cancel">Cancel</button>
	</div>
        </form:form>
</div>
</div>
<%@include file="/WEB-INF/view/templates/footer.jsp" %>