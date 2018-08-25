<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/templates/header.jsp" %>

<br><br><br>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Details</h1>        
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3><span>Product Name:&nbsp;&nbsp;</span>:${product.productName}</h3>
                    <p><span>Product Description:&nbsp;&nbsp;</span>:${product.productDescription}</p>
                    <p><strong>Manufacturer:&nbsp;&nbsp;</strong>: ${product.productManufacturer}</p>
                    <p><strong>Category:&nbsp;&nbsp;</strong>: ${product.productCategory}</p>
                    <p><strong>Condition:&nbsp;&nbsp;</strong>: ${product.productCondition}</p>
                    <p><strong>Product Price:&nbsp;&nbsp;</strong>:${product.productPrice} &#8377;</p>

                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value = "${url}" />" class="btn btn-info" style="padding:15px 25px;">Back</a>
                        <a href="#" class="btn btn-warning" style="padding:15px 25px;" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart" />" style="padding:15px 25px;" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                    </p>

                </div>
            </div>
        </div>
	</div>
</div>

<!-- My -->
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>

<%@ include file="/WEB-INF/view/templates/footer.jsp" %>
