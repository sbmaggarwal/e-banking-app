<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
<title>The Bank</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/subscribe.css" />
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
	<div id="main">
		<header>
			<div id="logo">
				<div id="logo_text">
					<h1>
						<a href="index.jsp">Money<span class="logo_colour">Bank</span></a>
					</h1>
					<h2>Trust. Profit. Business.</h2>
				</div>
			</div>
			<nav>
				<ul class="sf-menu" id="nav">
					<li class="selected"><a href="index.jsp">Home</a></li>
					<li><a>Register</a>
						<ul>
							<li><a href="Register.jsp">User</a></li>
							<li><a href="StaffRegister.jsp">Staff</a></li>
						</ul></li>
					<li><a>Make Payments</a>
						<ul>
							<li><a href="comingsoon.html">Credit Card</a></li>
							<li><a href="comingsoon.html">Water</a></li>
							<li><a href="comingsoon.html">Electricity</a></li>
							<li><a href="comingsoon.html">Phone</a></li>
						</ul></li>
					<li><a>Transfer</a>
						<ul>
							<li><a>RTGS</a>
								<ul>
									<li><a href="comingsoon.html">Same bank</a></li>
									<li><a href="comingsoon.html">Other Bank</a></li>
								</ul></li>
							<li><a>NEFT</a>
								<ul>
									<li><a href="comingsoon.html">Same bank</a></li>
									<li><a href="comingsoon.html">Other Bank</a></li>
								</ul></li>
						</ul></li>
					<li><a>Loans</a>
						<ul>
							<li><a href="comingsoon.html">Term Loans</a></li>
							<li><a href="comingsoon.html">Lines of Credit</a></li>
							<li><a href="comingsoon.html">SBA Loans</a></li>
							<li><a href="comingsoon.html">Construction Loans</a></li>
						</ul></li>
					<li><a href="Contact.jsp">Contact Us</a></li>
					<li><a href="About.jsp">About Us</a></li>
					<%
          session = request.getSession(true);
          if(session == null || session.getAttribute("userName") == null) { %>
					<li><a href="Login.jsp">Login</a></li>
					<% } else {
        	  %>
					<li><a href="Logout">Logout</a></li>
					<% }
          %>

				</ul>
			</nav>
		</header>
		<div id="site_content">
			<ul id="images">
				<li><img src="images/Bank.jpg" width="600" height="300"
					alt="The Bank" /></li>
				<li><img src="images/2.jpg" width="600" height="300"
					alt="Profit" /></li>
				<li><img src="images/3.jpg" width="600" height="300"
					alt="Profit" /></li>
				<li><img src="images/4.jpg" width="600" height="300"
					alt="Profit" /></li>
				<li><img src="images/5.jpg" width="600" height="300"
					alt="Profit" /></li>
				<li><img src="images/7.jpg" width="600" height="300"
					alt="Profit" /></li>
			</ul>
			<div id="sidebar_container">
				<div class="sidebar">
					<h3>Latest News</h3>
					<h4>FD Rates Revised</h4>
					<h5>January 1st, 2014</h5>
					<p>
						RBI recently revised the rates for the banks in its new financial
						report..<br />
						<a href="#">Read more</a>
					</p>
					<h4>Zero money required!</h4>
					<h5>March 1st, 2014</h5>
					<p>
						We are offering Zero opening balance account<br />
						<a href="#">Read more</a>
					</p>
				</div>
			</div>
			<div class="content">
				<h1>Welcome to The Bank</h1>
				<p>With us, your precious hard-earned money never stops growing.
				</p>
				<p>
				<h3>Don't just borrow, GROW!</h3>
				This is what we offer and this is what we follow.
			</div>
		</div>

		<footer>
			<p>
				Copyright &copy; The Bank | This Website is safety audited |
				<%! int pageCount() {
    	  count++;
    	  return count;
    	  } %>
				<%! int count = 0 ; %>
				Visitors yet :
				<%= pageCount() %></p>
		</footer>
		<section class="subscribe">
			<div class="subscribe-pitch">
				<h3>Subscribe</h3>
				<p>Subscribe to our newsletter to get the latest scoop right to
					your inbox.
				<p>
			</div>
			<form action="Subscriber.asp" method="post" class="subscribe-form">
				<input type="email" name="email" class="subscribe-input"
					placeholder="Email address">
				<button type="submit" class="subscribe-submit">
					<img src="images/tick.jpg" width="85%" height="75%" />
				</button>
			</form>
		</section>
	</div>
	<p>&nbsp;</p>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
	<script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
	<script type="text/javascript">
    $(document).ready(function() {
      $('#images').kwicks({
        max : 600,
        spacing : 2
      });
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>
