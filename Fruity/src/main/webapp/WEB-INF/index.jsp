<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>frutas</title>
		<link rel="stylesheet" href="/css/index.css" />
	</head>
	<body>
		<h1>
			Fruit Store
		</h1>
		<div>
			<table>
				<thead>
					<tr>
						<th class='titulo'> Name </th>
						<th class='titulo'> Price </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="fruit" items="${listaFrutas}">
						<tr>
							<th><c:out value="${fruit.getName()}"/></th> 
							<th><c:out value="${fruit.getPrice()}"/></th>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>