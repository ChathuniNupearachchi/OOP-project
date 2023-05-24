<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User Details</title>

	<style type="text/css">
		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		h1 {
			font-size: 2.5em;
			margin: 1em 0;
			text-align: center;
			color: #333;
		}
		
		table {
			background-color: #fff;
			border-collapse: collapse;
			margin: 0 auto;
			margin-bottom: 2em;
			max-width: 800px;
			width: 90%;
			box-shadow: 0px 0px 20px #ddd;
		}
		th, td {
			border: 1px solid #ccc;
			padding: 0.5em;
			text-align: left;
			vertical-align: top;
		}
		th {
			background-color: #eee;
			font-weight: bold;
		}

		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		.button-container{
			display: flex;
		  	justify-content: center;
		  	margin-top: 2em;
		
		}
		button {
			  background-color: #4CAF50;
			  border: none;
			  color: #fff;
			  cursor: pointer;
			  display: inline-block;
			  font-size: 1em;
			  padding: 0.5em 1em;
			  text-align: center;
			  text-decoration: none;
			  border-radius: 5px;
			  transition: background-color 0.3s ease-in-out;
			  margin: 0 1em;
		}
		button:hover {
  			background-color: #555;
		}
		
		.form-group {
			display: flex;
			flex-direction: column;
			margin-bottom: 1em;
			width: 80%;
		}
	</style>
	
</head>
<body>

	<h1>Your Details</h1>
	
<table >

	<c:forEach var="cus" items="${cusDetails}">
	
	<!--<c:set var="id" value="${cus.id}"/>-->
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<!--<c:set var="password" value="${cus.password}"/>-->					

	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>	
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>	
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>	
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>	
	</tr>
	<tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>	
	</tr>					
	
	</c:forEach>

</table>

	<c:url value = "updatecustomer.jsp" var="cusupdate">
	
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="pass" value="${password}"/>				
								
	
	</c:url>
		
	<c:url value = "deletecustomer.jsp" var = "cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="phone" value="${phone}"/>		
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<div class = "button-container">
		<a href="${cusupdate}" class="container">

		<button type="button" name="update">Update My Data</button><br>
		
		</a>
					
		<a href = "${cusdelete}" class="container">
			<button name="delete">Delete My Account</button>
		</a>
	</div>
		

</body>
</html>