

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String fuser = (String)session.getAttribute("facultyname");
String user = (String)session.getAttribute("studentid"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home Online Examination System</title>
<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
		
		<script>
    window.onload = function() {
      document.querySelector('a[href="./<%=session.getAttribute("which")%>profile.jsp"]').click();
    };
  </script>
               
</head>


<body style="background-color: #7fffd4;">
    <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
    <script type="text/javascript" src="assets/js/modal.js"></script>
             <%
                    if(user != null ||fuser!=null)
               {%>

        <%@include file="header1.jsp" %>
        <%  }
                else
                {%>
                 <%@ include file="header.jsp" %>
                 <% }
   %>
<div class="container well">
    <div class="row">
        <div class="span2">
       
            <ul class="nav nav-tabs nav-stacked nav-justified"  style='background-color:white;'>
                    <li>
                    <a href="#" data-toggle="tab">Home</a>
                    </li>
                    <li>
                    <a href="#" data-toggle="tab">Online Examination System</a>
                    </li>
                    <li>
                         <a href="./<%=session.getAttribute("which")%>profile.jsp">Profile</a>
                    </li>
            </ul>
        </div>

        <div class="span10">
            <center>    <img src="assets/img/back.png" alt="Online Exam System" height="300px" width="400px"/>  </center>
        <p style="font-weight: bold;font-size:20px;color:black;line-height: 25px;">
            <bold style="color:red;">Online Examination System</bold>  is a user-friendly website designed to streamline and automate the process of conducting online exams. It provides a comprehensive set of features for administrators, instructors, and students. Administrators can create exams, manage user accounts, and generate detailed reports. Instructors have the flexibility to customize exams, set grading criteria, and monitor student progress. Students can conveniently take exams online, submit their answers, and receive immediate feedback. The system ensures fairness and security through measures to prevent cheating and unauthorized access. With its intuitive interface and robust functionality, the Online Examination Management System simplifies the entire examination process for educational institutions and organizations.

        </p>
        <p style="font-weight: bold;font-size:20px;color:black;line-height: 25px;"  >
The effective use of "Online Examination System", any Educational Institute or training centers can be use it to develop their strategy for putting the exams, and for getting better results in less time.
        </p>
        </div>
        
    </div>
<br/><br/>
</div>
<br/><br/><br/><br/>
 <%@include file="footer.jsp" %>
</body>

</html>