<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<title>Products</title>
<style>
body {
	background-image: url("/images/bg-img.png");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body class="bg-dark text-white">
	<h2 class="text-center mt-3">Products</h2>
	<ul class="list-unstyled ms-5 mt-5">
		<li><a href="/products/show-all-products" class="btn btn-warning">Display
				All Products</a></li>
		<li><a href="/products/show-all-products-by-merchant-name"
			class="btn btn-primary mt-2">Display Products By Merchant Name</a></li>
		<li><a href="/products/add-product" class="btn btn-dark mt-2">Add
				Product</a></li>
		<li><a href="/products/update-products" class="btn btn-info mt-2">Update
				Product</a></li>
		<li><a href="/products/show-all-available-products" class="btn btn-warning mt-2">Display 
		        All Available Products</a></li>
		<li><a href="/products/show-all-unavailable-products" class="btn btn-light mt-2">Display 
		        All Unavailable Products</a></li>
		<li><a href="/" class="btn btn-secondary mt-2">Back To Index
				Page</a></li>

	</ul>
</body>
</html>







