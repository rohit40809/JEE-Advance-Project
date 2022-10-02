<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Orders By Order Id</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body
	class=" bg-dark text-white d-flex flex-column align-items-center justify-content-center mt-5">
	<h3 class="text-white">Search and Update Order</h3>
	<form method="post" action="/orders/orders-by-order-id"
		class="rounded p-2 w-50 border bg-white text-dark">
		<div>
			<label>Order Id</label> <select name="orderId" id="orderId"
				class="form-control" type="number">
				<option>select OrderId</option>
				<c:forEach items="${orderidlist}" var="each">
					<option value="${each.orderId}" name="${each.orderId}">${each.orderId}</option>
				</c:forEach>
			</select>
		</div>
		<div class="m-2 text-center">
			<input type="submit" value="Proceed for Update"
				class="btn btn-outline-dark w-100">
		</div>
	</form>
	<a href="/orders" class="btn btn-danger mt-2 ms-2">Back To Orders</a>
	<a href="/orders/show-orders-by-order-person"
		class="btn btn-danger mt-2 ms-2">Display Order By Order Id</a>
</body>
</html>



