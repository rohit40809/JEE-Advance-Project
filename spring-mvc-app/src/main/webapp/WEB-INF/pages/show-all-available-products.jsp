<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Products</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body class="bg-dark text-white p-2">
	<h2 class="text-center mt-3">All details of Customers</h2>
	<table class="table table-primary table-hover mt-3">
		<thead>
			<tr>
				<th>Product Id</th>
				<th>Merchant Name</th>
				<th>Product Categories</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Inventory</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${availableProducts}" var="each">
				<tr>
					<td>${each.productId}</td>
					<td>${each.merchantName}</td>
					<td>${each.productCategories}</td>
					<td>${each.productName}</td>
					<td>${each.productPrice}</td>
					<td>${each.productInventory}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<a href="/products" class="btn btn-danger mt-2 ms-2">Back To
		Products</a>
</body>
</html>