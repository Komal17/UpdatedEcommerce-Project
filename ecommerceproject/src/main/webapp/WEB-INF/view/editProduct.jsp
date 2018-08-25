<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/templates/header.jsp" %>

<br><br><br>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>


            <p class="lead">update the product information</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct"
                   method="post" commandName="product" enctype="multipart/form-data">

         <form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
            </div>

            

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}" />
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Avilable Stockk</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

            <br/><br/>

            <input type="submit" value="submit" class="btn btn-success" style="padding:15px 25px;">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-danger" style="padding:15px 25px;">Cancel</a>

        </form:form>

</div></div>
<%@ include file="/WEB-INF/view/templates/footer.jsp" %>