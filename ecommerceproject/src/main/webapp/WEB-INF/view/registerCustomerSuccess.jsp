<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>your's registration is successfully done.............</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/product/productList" />" class="btn btn-primary" style="padding:15px 25px;">Go to Products</a></p>
        </section>
</div></div>
<%@ include file="/WEB-INF/view/templates/footer.jsp" %>