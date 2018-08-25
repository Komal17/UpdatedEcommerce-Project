<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/view/templates/header.jsp"%>
<br>
<br>
<br>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">

			<div class="register_account">
				<div class="wrap">
					<h4 class="title">Create an Account</h4>
					<form:form action="${pageContext.request.contextPath}/register"
						method="post" commandName="customer">
						<div class="col_1_of_2 span_1_of_2">
							<h3>Basic Details</h3>

							<div class="form-group">
								<div>
									<label for="name">Name</label>
								</div>
								<div>
									<form:errors path="customerName" cssStyle="color: #ff0000" />
								</div>
								<div>
									<form:input path="customerName" id="name" class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="email">Email</label>
								</div>
								<div>
									<span style="color: #ff0000">${emailMsg}</span>
								</div>
								<div>
									<form:errors path="customerEmail" cssStyle="color: #ff0000" />
								</div>
								<div>
									<form:input path="customerEmail" id="email"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="phone">Phone</label>
								</div>
								<div>
									<form:input path="customerPhone" id="phone"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="username">Username</label>
								</div>
								<div>
									<span style="color: #ff0000">${usernameMsg}</span>
								</div>
								<div>
									<form:errors path="username" cssStyle="color: #ff0000" />
								</div>
								<div>
									<form:input path="username" id="username" class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="password">Password</label>
								</div>
								<div>
									<form:errors path="password" cssStyle="color: #ff0000" />
								</div>
								<div>
									<form:password path="password" id="password" class="form-Control" />
								</div>
							</div>
						</div>
						<br />


						<div class="col_1_of_2 span_1_of_2" style="float: left;">
							<h3>Address:</h3>
							<div class="form-group">
								<div>
									<label for="billingStreet">Street Name</label>
								</div>
								<div>
									<form:input path="billingAddress.streetName" id="billingStreet"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="billingApartmentNumber">Apartment Number</label>
								</div>
								<div>
									<form:input path="billingAddress.apartmentNumber"
										id="billingApartmentNumber" class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="billingCity">City</label>
								</div>
								<div>
									<form:input path="billingAddress.city" id="billingCity"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="billingState">State</label>
								</div>
								<div>
									<form:input path="billingAddress.state" id="billingState"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="billingCountry">Country</label>
								</div>
								<div>
									<form:input path="billingAddress.country" id="billingCountry"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="billingZip">Zipcode</label>
								</div>
								<div>
									<form:input path="billingAddress.zipCode" id="billingZip"
										class="form-Control" />
								</div>
							</div>
						</div>
						<br />
						<div class="col_1_of_2 span_1_of_2">
							<h3>Office Address:</h3>

							<div class="form-group">
								<div>
									<label for="shippingStreet">Street Name</label>
								</div>
								<div>
									<form:input path="shippingAddress.streetName"
										id="shippingStreet" class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="shippingApartmentNumber">Apartment Number</label>
								</div>
								<div>
									<form:input path="shippingAddress.apartmentNumber"
										id="shippingApartmentNumber" class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="shippingCity">City</label>
								</div>
								<div>
									<form:input path="shippingAddress.city" id="shippingCity"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="shippingState">State</label>
								</div>
								<div>
									<form:input path="shippingAddress.state" id="shippingState"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="shippingCountry">Country</label>
								</div>
								<div>
									<form:input path="shippingAddress.country" id="shippingCountry"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<div>
									<label for="shippingZip">Zipcode</label>
								</div>
								<div>
									<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" />
								</div>
							</div>
						</div>

						<br />
						<br />

						<div>
							<button class="grey" style="margin-right: 25px;" type="submit">Submit</button>
							<a href="<c:url value="/" />"><button class="grey">Cancel</button></a>
							<p class="terms">By clicking 'Create Account' you agree to the 
							<a href="#">Terms&amp; Conditions</a>.
							</p>
							<div class="clear">
							</div>
					</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/view/templates/footer.jsp"%>