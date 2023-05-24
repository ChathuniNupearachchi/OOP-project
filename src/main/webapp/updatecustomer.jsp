<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Updated Details</title>
	
		<style type="text/css">
		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
		}
		h1 {
			text-align: center;
			margin-top: 50px;
			color: #333;
		}
		form {
			width: 400px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
		}
		input[type="text"],
		input[type="password"] {
			width: 80%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 5px;
			margin-bottom: 20px;
			font-size: 16px;
		}
		input[type="submit"],
		input[type="reset"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
		}
		input[type="submit"]:hover,
		input[type="reset"]:hover {
			background-color: #006B9E;
		}
		table {
			width: 100%;
			border-collapse: collapse;
			margin-bottom: 20px;
		}

		table th,
		table td {
			padding: 10px;
			border: 1px solid #ccc;
			text-align: left;
			font-size: 16px;
			color: #333;
		}

		table th {
			background-color: #ddd;
		}
	</style>
	
</head>
<body>

	<%
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userName = request.getParameter("uname");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pass");	
			
	%>
		<h1>Update Details</h1>

	<form action ="update" method ="post">
	
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%=id%>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%=name%>"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%=email%>"></td>
		</tr>
		<tr>
			<td>Phone number</td>
			<td><input type="text" name="phone" value="<%=phone%>"></td>
		</tr>
		<tr>
			<td>User name</td>
			<td><input type="text" name="uname" value="<%=userName%>"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="pass" value="<%=password%>"></td>
		</tr>
	</table>
		
		<br>
		
		<input type = "submit" name = "submit" value = "Update"><br>		
	
	</form>

</body>
</html>