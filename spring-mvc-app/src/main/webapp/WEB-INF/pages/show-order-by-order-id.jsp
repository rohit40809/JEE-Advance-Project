<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Order By Order Id</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body class="p-2 d-flex flex-column align-items-center bg-dark">
	<form method="post" action="/orders/show-order-by-order-id"
		class="p-2 w-50 border mt-5 rounded bg-white">
		<div>
			<label>Order Id</label> <select type="number" name="orderId"
				id="orderId" class="form-control">
				<option>Select Order Id</option>
				<c:forEach items="${orderIdList}" var="each">
					<option value="${each.orderId}" name="${each.orderId}">${each.orderId}</option>
				</c:forEach>
			</select>
		</div>
		<div class="m-2 text-center">
			<input type="submit" value="Find"
				class="btn btn-outline-success w-100">
		</div>
	</form>
	<table class="table table-primary table-hover mt-3">
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