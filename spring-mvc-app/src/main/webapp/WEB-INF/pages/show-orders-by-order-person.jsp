<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders By Users</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body class="p-2 d-flex flex-column align-items-center bg-dark">
	<form method="post" action="/orders/show-orders-by-order-person"
		class="p-2 w-50 border mt-5 rounded bg-white">
		<div>
			<label>Order Person</label> <select type="text" name="orderPerson"
				id="orderPerson" class="form-control">
				<option>Select Order By Order Person</option>
				<c:forEach items="${orderPersonList}" var="each">
					<option value="${each.orderPerson}" name="${each.orderPerson}">${each.orderPerson}</option>
				</c:forEach>
			</select>
		</div>
		<div class="m-2 text-center">
			<input type="submit" value="Find"
				class="btn btn-outline-success w-100">
		</div>
	</form>
	<table class="table table-primary table-hover mt-2">
		<thead>
			<tr>
				<th>Order Id</th>
				<th>Order Person</th>
				<th>Product Id</th>
				<th>Quantity</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="each">
				<tr>
					<td>${each.orderId}</td>
					<td>${each.orderPerson}</td>
					<td>${each.productId}</td>
					<td>${each.quantity}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/orders" class="btn btn-danger mt-2 ms-2">Back To Orders</a>
</body>
</html>