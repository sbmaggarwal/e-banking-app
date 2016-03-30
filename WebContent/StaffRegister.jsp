<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Registration</title>
</head>
<body>
	<style>
.smart-green {
	width: 400px;
	margin-right: auto;
	margin-left: auto;
	background: #FFF;
	padding: 30px 30px 20px 30px;
	box-shadow: rgba(194, 194, 194, 0.7) 0 3px 10px -1px;
	-webkit-box-shadow: rgba(194, 194, 194, 0.7) 0 3px 10px -1px;
	font: 12px Arial, Helvetica, sans-serif;
	color: #666;
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
}

.smart-green h1 {
	font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
	padding: 20px 0px 20px 40px;
	display: block;
	margin: -30px -30px 10px -30px;
	color: #FFF;
	background: #9DC45F;
	text-shadow: 1px 1px 1px #949494;
	border-radius: 5px 5px 0px 0px;
	-webkit-border-radius: 5px 5px 0px 0px;
	-moz-border-radius: 5px 5px 0px 0px;
	border-bottom: 1px solid #89AF4C;
}

.smart-green h1>span {
	display: block;
	font-size: 11px;
	color: #FFF;
}

.smart-green label {
	display: block;
	margin: 0px 0px 5px;
}

.smart-green label>span {
	float: left;
	margin-top: 10px;
	color: #5E5E5E;
}

.smart-green input[type="text"],.smart-green input[type="email"],.smart-green input[type="password"],.smart-green input[type="number"],.smart-green select
	{
	color: #555;
	height: 24px;
	width: 96%;
	padding: 3px 3px 3px 10px;
	margin-top: 2px;
	margin-bottom: 16px;
	border: 1px solid #E5E5E5;
	background: #FBFBFB;
	outline: 0;
	-webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
	box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
	font: normal 14px/14px Arial, Helvetica, sans-serif;
}

.smart-green password {
	height: 100px;
	padding-top: 10px;
}

.smart-green select {
	background: url('down-arrow.png') no-repeat right,
		-moz-linear-gradient(top, #FBFBFB 0%, #E9E9E9 100%);
	background: url('down-arrow.png') no-repeat right,
		-webkit-gradient(linear, left top, left bottom, color-stop(0%, #FBFBFB),
		color-stop(100%, #E9E9E9));
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	text-indent: 0.01px;
	text-overflow: '';
	width: 100%;
	height: 30px;
}

.smart-green .button {
	background-color: #9DC45F;
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-border-radius: 5px;
	border: none;
	padding: 10px 25px 10px 25px;
	color: #FFF;
	text-shadow: 1px 1px 1px #949494;
}

.smart-green .button:hover {
	background-color: #80A24A;
}
</style>

	<a href="index.jsp">Back to Home</a>
	<div id="registrationform">
		<form action="StaffRegistrationServlet" method="post"
			class="smart-green">
			<h1>
				Registration Form <span style="font-size: 20">Please fill all
					the texts in the fields.</span>
			</h1>
			<label> <span>Name :</span> <input id="name" type="text"
				name="name" />
			</label> <label> <span>User name :</span> <input id="name"
				type="text" name="username" />
			</label> <label> <span>Password :</span> <input id="password"
				type="password" name="password" />
			</label> <label> <span>6 digit Branch code :</span> <input id="name"
				type="number" name="branchcode" />
			</label> <label> <span>Branch Password :</span> <input id="name"
				type="text" name="branchpassword" />
			</label> <label> <span>Age (in years) :</span> <input id="name"
				type="number" name="age" />
			</label> <label> <span>&nbsp;</span> <input type="submit"
				class="button" value="Register" />
			</label>
		</form>
	</div>
</body>
</html>