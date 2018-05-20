<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html >
<html>
<head>
	
	<title>List Inventorys</title>
	
	<!-- reference our style sheet -->
	<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	<div id = "wrapeer">
		<div id = "header">
			<h2> Commodity Inventory Management System</h2>
		</div>
	</div>
	
	<div id = "container">
		<div id = "content">
		
			<!-- put new button: Add Customer -->
			<input type = "button" value = "Add Inventory" 
					onclick = "window.location.href='showFormForAdd'; return false;"
					class="add-button"
			/>
			
			<!--  add a search box -->
			<form:form action="search" method="POST">
				Search inventory: <input type="text" name="theSearchId" />
				
				<input type="submit" value="Search" class="add-button" />
			</form:form>
			
			<!-- add our html table here -->
			<table>
				<tr>
					<th> Inventory ID </th>
					<th> Name </th>
					<th> Description </th>
					<th> Value </th>
					<th> Price </th>
					<th> Action </th>
				</tr>
				
				<!-- loop over and print out customers -->
				<c:forEach var = "tempInventory" items = "${inventorys}">
					<c:url var = "updateLink" value = "/inventory/showFormForUpdate">
						<c:param name = "inventoryId" value = "${tempInventory.id }" />
					</c:url>
					
					<c:url var = "deleteLink" value = "/inventory/delete">
						<c:param name = "inventoryId" value = "${tempInventory.id }" />
					</c:url>
					<tr>
						<td> ${tempInventory.inventoryId } </td>
						<td> ${tempInventory.name } </td>
						<td> ${tempInventory.description } </td>
						<td> ${tempInventory.value } </td>
						<td> ${tempInventory.price } </td>
						<td> 
							<a href = "${updateLink}"> Update </a> 
							|
						 	<a href = "${deleteLink}"
						 		onclick="if(!(confirm('Are you sure to delete?'))) return false"> Delete </a> 
						 </td>
					</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
</body>
</html>