<%@page import="com.vss.model.User"%>
<%
   User u1 = (User) session.getAttribute("user");
   if (u1 == null)
   {
      response.sendRedirect("login.jsp?msg=Session expired. Login again");
   }
   else
   {
%>
<!DOCTYPE html>
<!-- 
Template Name: BRILLIANT Bootstrap Admin Template
Version: 4.5.6
Author: WebThemez
Website: http://www.webthemez.com/ 
-->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="" name="description" />
<meta content="webthemez" name="author" />
<title>Video Surveillance System</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="welcome.jsp"><strong><i
						class="icon fa fa-video-camera"></i> Blockchain VSS</strong></a>

				<div id="sideNav" href="">
					<i class="fa fa-bars icon"></i>

				</div>
			</div>

			<div
				style='float: right; margin-top: 20px; margin-right: 20px; font-weight: bold;'>Fourmusketeers.co</div>

		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a href="welcome.jsp"><i
							class="fa fa-home"></i> Welcome</a></li>
					<li><a href="verification.jsp"><i
							class="fa fa-check"></i> Account Verification</a></li>
					<li><a class="active-menu" href="retrieval.jsp"><i
							class="fa fa-camera"></i> Footage Retrieval</a></li>							
							
					<li><a class="active-menu" href="#"><i class="fa fa-user"></i> <%=u1.getFname() %> <%=u1.getLname() %><span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="updateprofile.jsp">Edit Profile</a></li>
							<li><a href="changepassword.jsp">Change Password</a></li>
							<li><a href="account?request_type=deleteprofile">Delete Profile</a></li>
							<li><a href="account?request_type=logout">Logout</a></li>
						</ul></li>

				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">
					Update Profile <small>Blockchain Based Video Surveillance System</small>
				</h1>

			</div>
			<div id="page-inner">

				<!-- /. ROW  -->

				<div class="row" > 
					<div class="board">
						<div class="panel panel-primary" >
						
						<%
						   String msg = request.getParameter("msg");
						%>
						<%
						   if (msg != null)
						   {
						%>
						<div class="alert alert-success alert-dismissable" style='width:50%;'>
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Message!</strong>
							<%=msg%>.
						</div>
						<%
						   }
						%>
					<form action='account' method='post' class='col-md-6'>
							<input type=hidden name='request_type' value='updateprofile' />
							<label> Enter your Email ID </label> <input type=text
								readonly="readonly" class='form-control' name='email'
								placeholder='Email ID' value='<%=u1.getEmail()%>' /> <br />
							<label> Enter your First name </label> <input type=text
								class='form-control' name='fname' placeholder='First name'
								value='<%=u1.getFname()%>' /> <br /> <label> Enter
								your Last name </label> <input type=text class='form-control'
								name='lname' placeholder='Last name'
								value='<%=u1.getLname()%>' /> <br /> <label> Select
								your Gender </label><br /> <input type="radio"
								<%if (u1.getGender().equals("Male"))
				{%>
								checked="checked" <%}%> name='gender' value='Male' /> Male
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
								<%if (u1.getGender().equals("Female"))
				{%>
								checked="checked" <%}%> name='gender' value='Female' /> Female
							<br /> <br /> <label> Enter your Mobile number </label> <input
								type=text class='form-control' name='mobile'
								placeholder='Mobile number' value='<%=u1.getMobile()%>' /> <br />
							<label> Enter your Address </label>
							<textarea class='form-control' name='addr' placeholder='Address'><%=u1.getAddr()%></textarea>
							<br /> <br /> 
				<button class="btn btn-primary" type="submit">Update Profile</button>
						</form>
						
						
						</div>
					</div>
				</div>







				<footer>
					<p>All right reserved.</p>


				</footer>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="assets/js/morris/morris.js"></script>


	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>

	<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>


	<!-- Chart Js -->
	<script type="text/javascript" src="assets/js/Chart.min.js"></script>
	<script type="text/javascript" src="assets/js/chartjs.js"></script>

</body>

</html>

<% } %>