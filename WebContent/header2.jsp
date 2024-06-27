<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.DBConnection"%>
<head>
<link rel="shortcut icon" type="image/x-icon" href="assets/img/icon.ico"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
 <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
           .navbar-inner {
	background: #279EFF;

	height: 70px;
}

.navbar-inner .brand {
	color: #000;}
</style>
</head>
<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="#" class="brand"> <img src="./assets/img/logo.jpg" alt="Exam Show" width="60px" height="50px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Online Examination System</h1>
<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary" > Logout </button>
</form>
<p class="pull-right" style="color:black;">

<%
   String uname = session.getAttribute("facultyname").toString();
    out.println("<b> Welcome , <a href='studentprofile.jsp' style='color:black'>" +uname+ "</a></b>");
%>
&nbsp;&nbsp;

</p>

</div>
</div>

</div>