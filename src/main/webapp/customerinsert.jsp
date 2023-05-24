<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Register Page</title>
	<style>
		body {
			font-family: 'Hind', sans-serif;
			background-color: #f5f5f5;
			color: #333;
		}
		
		h1 {
			text-align: center;
			margin-top: 50px;
			margin-bottom: 20px;
			font-size: 36px;
		}
		
		form {
			width: 400px;
			margin: 0 auto;
			background-color: #fff;
			padding: 30px;
			border-radius: 10px;
			box-shadow: 0 5px 10px rgba(0,0,0,0.2);
		}
		
		input[type="text"],
		input[type="password"] {
			display: block;
			width: 100%;
			margin-bottom: 20px;
			padding: 10px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.1);
		}
		
		input[type="submit"] {
			display: block;
			width: 50%;
			margin-top: 20px;
			padding: 10px;
			background-color: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}
		
		input[type="submit"]:hover {
			background-color: #555;
		}
	</style>
</head>
<body>

	<h1>Register</h1>
 
  	<form action="insert" method="post">
  		Name:			<input type="text" name="name"><br>
  		Email:			<input type="text" name="email"><br>
  		Phone Number:	<input type="text" name="phone"><br>
  		User Name:		<input type="text" name="uid"><br>
  		Password:		<input type="password" name="pswd"><br><br>
  		
  		<input type="submit" name="submit" value="Create Account">
  	</form>

</body>
</html>