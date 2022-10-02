<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Product By Merchant Name</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<style type="text/css">
</style>
</head>
<body class="p-2 d-flex flex-column align-items-center bg-dark">
	<h3 class="text-light mt-3">Products By Merchant Name</h3>
	<form method="post"
		action="/products/show-all-products-by-merchant-name"
		class="p-2 w-50 border mt-5 rounded bg-white">
		<div>
			<label>Merchant Name</label> <select name="merchantName"
				id="merchantName" class="form-control" type="text">
				<option>select merchant name</option>
				<c:forEach items="${merchantlist}" var="each">
					<option value="${each.merchantName}" name="${each.merchantName}">${each.merchantName}</option>
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
				<th>Product Id</th>
				<th>Merchant Name</th>
				<th>Product Categories</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Inventory</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="each">
				<tr>
					<td>${each.productId}</td>
					<td>${each.merchantName}</td>
					<td>${each.productCategories}</td>
					<td>${each.productName}</td>
					<td>${each.productPrice}</td>
					<td>${each.productInventory}</td>
				</tr>
			</c:forEach>
			<a href="/products" class="btn btn-danger mt-2 ms-2">Back To
				Products</a>
		</tbody>
</body>
</html>


