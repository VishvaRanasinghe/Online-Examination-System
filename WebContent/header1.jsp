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

<a href="index.jsp" class="brand"> <img src="./assets/img/logo.jpg" alt="Exam Show" width="60px" height="60px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold; font-family: ">Online Examination System</h1>
<!-- <h3 class="brand" style="font-weight:bold;"><a href="home.jsp">Home</a></h3> -->
<h3 class="brand" style="font-weight:bold;" align="center"><a href="upcomingevents.jsp">Exams</a></h3>




<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary" > Logout </button>

<button class="btn btn-primary" a href="#myModal" data-toggle="modal"> Need any help? </button>

<!-- <div align="right"><a href="#myModal" data-toggle="modal">Need any help?</a></div>  -->

<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	style="height: 800px; width: 700px">

	<div class="modal-body">
		<form action="feedback" id="contact-form2" class="form-horizontal"
			method="post">

			<div class="control-group">
				<label class="control-label" for="fname">Name</label>
				<div class="controls">

					<input type="text" class="input-large span5" name="fname"
						id="fname" placeholder="Name" onkeyup="loadXMLDoc()" /> <span
						id="err"> </span>

				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="email">Email Address</label>
				<div class="controls">
					<input type="text" class="input-large span5" name="email"
						id="email" placeholder="Email address" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="number">Mobile No.</label>
				<div class="controls">
					<input type="text" class="input-large span5" name="number"
						id="number" maxlength="10" placeholder="Mobile number" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="comment">Comment</label>
				<div class="controls">
					<textarea class="form-control span5" name="comment" id="comment"
						rows="8" placeholder="Put youe Comment......" required="true">
                                                        </textarea>
					<span id="err"> </span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<button type="submit" class="btn btn-success btn-large"
						data-loading-text="Loading...">Send</button>
				</div>
			</div>
		</form>


	</div>
</div> 

</form>


<p class="pull-right" style="color: black; padding-top: 10px">

<%
   String uname = (String)session.getAttribute("username");
    String fname = (String)session.getAttribute("facultyname");
    if(uname!=null)
        {
    out.println("<b> Welcome , <a href='studentprofile.jsp' style='color:black'>" +uname+ "</a></b>");
        }
    else
        {
        out.println("<b> Welcome , <a href='facultyprofile.jsp' style='color:black'>" +fname+ "</a></b>");
        }
    %>

&nbsp;&nbsp;

</p>

</div>
</div>

</div>