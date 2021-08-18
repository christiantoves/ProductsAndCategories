<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c:out value="${category.name}"></c:out></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<h1>
		<c:out value="${category.name}"></c:out>
	</h1>
	<ul>
		<c:forEach items="${category.products}" var="product">
			<li><c:out value="${product.name}"></c:out></li>
		</c:forEach>
	</ul>
	<form action="/categories/${category.id}/add" method="post">
		<p>
			<label for="product">Product</label> <select name="product"
				id="product">
				<c:forEach items="${products}" var="product">
					<option value="${product.id}">
						<c:out value="${product.name}" />
					</option>
				</c:forEach>
			</select>
			<c:out value="${error}"></c:out>
		</p>
		<input type="submit" value="Add" />
	</form>
</body>
</html>