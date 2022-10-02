<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body class=" bg-dark text-white">
	<h3 class="text-center mt-4">ADD ORDER</h3>
	<div class="d-flex mt-5">
		<div class="w-50">
			<form:form modelAttribute="command" method="post"
				action="/orders/update-order"
				class="rounded ms-1 me-1 p-2 border bg-white text-dark">
				<div>
					<label>SNo</label>
					<form:select path="id" id="id" class="form-control">
						<form:option value="0" label="select product id" />
						<c:forEach items="${orderlist}" var="each">
							<form:option value="${each.id}" label="${each.id}" />
						</c:forEach>
					</form:select>
				</div>
				<div>
					<label>Order ID</label>
					<form:select path="orderId" class="form-control" type="number">
						<form:option value="${orderlist[0]['orderId']}"
							label="${orderlist[0]['orderId']}" />
					</form:select>
				</div>
				<div>
					<label>Customer Name</label>
					<form:select path="orderPerson" id="orderPerson"
						class="form-control" type="text">
						<form:option value="select order person"
							label="select order person" />
						<form:option value="${orderlist[0]['orderPerson']}"
							label="${orderlist[0]['orderPerson']}" />
					</form:select>
				</div>
				<div>
					<label>Product ID</label>
					<form:select path="productId" class="form-control">
						<form:option value="0" label="select product id" />
						<c:forEach items="${list}" var="each">
							<form:option value="${each.productId}" label="${each.productId}" />
						</c:forEach>
					</form:select>
				</div>
				<div>
					<label>Quantity</label>
					<form:input path="quantity" id="quantity" class="form-control" />
				</div>
				<div class="m-2 text-center">
					<input type="submit" value="Update"
						class="btn btn-outline-danger w-100">
				</div>
			</form:form>
			<div class="text-danger text-center">${message}</div>
		</div>
		<div style="width: 48%">
			<div class="d-flex justify-content-between">
				<h5>Order Id:${orderlist[0]["orderId"]}</h5>
				<h5>Customer Name:${orderlist[0]["orderPerson"]}</h5>
			</div>
			<table class="table table-striped table-info ms-1 me-1 rounded">
				<thead>
					<tr>
						<th>SNO</th>
						<th>Product Id</th>
						<th>Quantity</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderlist}" var="each">
						<tr>
							<td>${each.id}</td>
							<td>${each.productId}</td>
							<td>${each.quantity}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<a href="/orders" class="btn btn-danger mt-2 ms-2">Back To Orders</a>
	<a href="/orders/show-orders-by-order-person"
		class="btn btn-danger mt-2 ms-2">Display Order By Order Id</a>
</body>
</html>






