<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<style type="text/css">
body {
	background-image: url("/images/bg-img.png");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body class="bg-dark text-white">
	<h2 class="text-center mt-3">Products</h2>
	<ul class="list-unstyled ms-5 mt-5" s>
		<li><a href="/orders/show-orders-by-order-person"
			class="btn btn-warning">Display Orders By Order Person</a></li>
		<li><a href="/orders/show-order-by-order-id"
			class="btn btn-primary mt-2">Display Order By Order Id</a></li>
		<li><a href="/orders/add-order" class="btn btn-info mt-2">Add
				Order</a></li>
		<li><a href="/orders/orders-by-order-id"
			class="btn btn-secondary mt-2">Update Order</a></li>
		<li><a href="/" class="btn btn-dark mt-2">Back To Index Page</a></li>
	</ul>
</body>
</html>





