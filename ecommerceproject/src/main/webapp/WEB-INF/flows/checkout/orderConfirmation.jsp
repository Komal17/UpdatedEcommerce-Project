<%@include file="/WEB-INF/view/templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Order</h1>

            <p class="lead">confirm Your's order</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1>Receipt Details</h1>
                       </div>
                       <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p style="text-align:left;color:red;">Shipping Date: <fmt:formatDate type="date" value="${now}" /></p>
                            </div>
                        <div class="row" style="background-color:silver;">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br/>
                                    ${order.cart.customer.shippingAddress.streetName}
                                <br/>
                                    ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                <br/>
                                     ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                </address>
                            </div>
                            
                        </div>

                        <div class="row" style="background-color:lightgray;">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br/>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br/>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br/>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <td>Product</td>
                                        <td></td>
                                        <td class="text-center">Price</td>
                                        <td class="text-center">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>Rs${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>


                        <input type="hidden" name="_flowExecutionKey" />

                        <br/><br/>

                        <button class="btn btn-info" style="padding:15px 25px;" name="_eventId_backToCollectShippingDetail">Back</button>

                        <input type="submit" value="Submit Order" style="padding:15px 25px;" class="btn btn-success" name="_eventId_orderConfirmed" />

                        <button class="btn btn-danger" style="padding:15px 25px;" name="_eventId_cancel">Cancel</button>
                    </div>
                </form:form>
            </div>
        </div>
</div>
</div>
<%@include file="/WEB-INF/view/templates/footer.jsp" %>

