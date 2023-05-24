<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<style>
		
		body {
			font-family: Arial, sans-serif;
			background-color: #f5f5f5;
		}
		h1 {
			color: #333;
			text-align: center;
			margin-top: 50px;
		}
		form {
			max-width: 500px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0,0,0,.2);
		}
		table {
			width: 100%;
			border-collapse: collapse;
			margin-bottom: 20px;
		}
		table, th, td {
			border: 1px solid #ccc;
			padding: 10px;
		}
		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-sizing: border-box;
			margin-bottom: 10px;
			font-size: 16px;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			font-size: 16px;
			margin-top: 10px;
			float: left;
		}
		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	
	
	
	</style>
</head>
<body>
	<%
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");	
			
	%>
	
	<h1> Customer Account Delete</h1>
	
	<form action = "delete" method ="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id%>"></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name%>" ></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%= email%>" ></td>
		</tr>
		<tr>
			<td>Phone number</td>
			<td><input type="text" name="phone" value="<%= phone%>"></td>
		</tr>
		<tr>
			<td>User name</td>
			<td><input type="text" name="uname" value="<%= userName%>"></td>
		</tr>

	</table>
		
		<input type = "submit" name = "submit" value = "Delete My Account">	<br><br><br>
	
	</form>
</body>
</html>