<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Login Form</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<section class="container">
		<div class="login">
			<h1>Login to your Account</h1>
			<form method="post" action="Login">
				<p>
					<input type="text" name="username" value=""
						placeholder="Username or Email">
				</p>
				<p>
					<input type="password" name="password" value=""
						placeholder="Password">
				</p>
				<p class="submit">
					<input type="submit" name="commit" value="Login">
				</p>
			</form>
		</div>

		<div class="login-help">
			<p>
				Forgot your password? <a href="index.html">Click here to reset
					it</a>.
			</p>
		</div>
	</section>
</body>
</html>