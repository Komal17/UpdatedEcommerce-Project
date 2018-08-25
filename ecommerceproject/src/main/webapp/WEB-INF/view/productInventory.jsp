<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container" style="width:100%;">
        <div class="page-header">
            <h1>Product  Page</h1>
        <table class="table-responsive table-hover col-lg-12 col-md-12" >
           <thead class="bg-success">
            <tr >
            	<td></td>
                <td colspan="5"><h1>Details</h1></td>
            </tr>
            </thead> 
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:50%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} INR </td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>View</a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-trash"></span>Delete</a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>Edit</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <br>
         <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary" style="padding:15px 25px;">Add Product</a>
</div></div></div>
       

<%@ include file="/WEB-INF/view/templates/footer.jsp" %>