<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Save Inventory</title>
	
	<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/resources/css/style.css" />
	<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/resources/css/add-inventory-style.css" >

</head>
<body>
	<div id = "wrapper">
		<div id = "header">
			<h2>Commodity Inventory Management System</h2>
		</div>
	</div>
	
	<div id = "container">
		<h3>Save Inventory</h3>
		<form:form action="saveInventory" modelAttribute="inventory" method = "POST">
		
			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			
			<table>
				<tbody>
					<tr>
						<td><label>Inventory ID:</label></td>
						<td><form:input path="inventoryId" /></td>
					</tr>
					<tr>
						<td><label>Name:</label></td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td><label>Description:</label></td>
						<td><form:input path="description" /></td>
					</tr>
					<tr>
						<td><label>Value:</label></td>
						<td><form:input path="value" /></td>
					</tr>
					<tr>
						<td><label>Price:</label></td>
						<td><form:input path="price" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type = "submit" value = "Save" class = "save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style = "clear; both;"></div>
		<p>
			<a href = "${pageContext.request.contextPath}/inventory/list"> Back to List</a>
		</p>
	</div>
</body>
</html>