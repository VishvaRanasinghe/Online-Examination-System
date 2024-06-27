
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.DBConnection"%>
   <%@ page import="java.lang.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="update,view,result,profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View Paper Online Examination System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
		
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
            
<style type="text/css">
         .navbar-inner {
	background: #279EFF;
	
	height: 70px;
}

.navbar-inner .brand {
	color: #000;}

</style>
</head>


<body style="background-color: #7fffd4;">
    <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="script1.js"></script>
<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="#" class="brand"> <img src="./assets/img/logo.jpg" alt="Exam Show" width="60px" height="60px""/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Online Examination System</h1>
<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary" > Logout </button>
</form>

<p class="pull-right" style="color:black;">
<br>

<%
response.setHeader("cache-control","no-cache");
response.setHeader("cache-control","no-store");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
             String uname = (String)session.getAttribute("facultyname");
             if(uname==null)
                {
                    response.sendRedirect("index.jsp");
                }
            else
            {
                   out.println("<b> Welcome , <a href='facultyprofile.jsp' style='color:black'>" +uname+ "</a></b>");
            }
%>
&nbsp;&nbsp;

</p>

</div>
</div>

</div>

<div class="container well">
    <div class="row">

        <div class="span2">
            <ul class="nav nav-tabs nav-stacked nav-justified"  style='background-color:white;'>
                    <li class="active">
                    <a href="home.jsp" data-toggle="tab">Home</a>
                    </li>
                    <li>
                    <a href="<%=session.getAttribute("which")%>profile.jsp" >Profile</a>
                    </li>
                     <li>
                    <a href="#viewsub" data-toggle="tab">View Subjects</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span9 pull-right">
            <div id="myTabContent" class="tab-content">
                <div id="paper" class="tab-pane fade in active">
                <form action="facultyprofile.jsp" method="post">
                    <%
                     PrintWriter writer=response.getWriter();
                     String scode=request.getParameter("scode");
                     String sname="";

                     session.setAttribute("subcode",scode);
                     String author = (String)session.getAttribute("facultyid");
                     //session.setAttribute("subname",sname);
                     

                    Connection con=null;
                    Statement st=null;
                    ResultSet rs=null;
                    DBConnection c = new DBConnection();
                    con = c.getcon();
                    st=con.createStatement();
                    int cnt=0;
                    try
                        {
                        String   qry = "select count(*) as col from subjects where subjectcode='"+scode+"' and author='"+author+"'";
                            rs = st.executeQuery(qry);
                            if(rs.next())
                                cnt = Integer.parseInt(rs.getString("col"));

                            if(cnt==0)
                                response.sendRedirect("facultyprofile.jsp?ErrorPaper=True");
                            else
                                {

                               qry = "select subjectname from subjects where subjectcode='"+scode+"'";
                                rs = st.executeQuery(qry);
                                if(rs.next())
                                    sname = rs.getString("subjectname");
                                session.setAttribute("subname",sname);
                                out.println("<h1 style='color:3399FF;'> "+sname+" </h1>");

                            String query="select * from " +scode;
                            rs=st.executeQuery(query);
                            out.println("<table class='table table-hover' style='background-color:white;' >");
                            while(rs.next())
                        {
                       %>


                          <tr style="font-weight:bold;">
                              <td>Qno:<%=rs.getString("qno")%></td>
                              <td><%=rs.getString("qname") %></td>
                          </tr>
                          <tr>

                              <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt1")%>' /></td>
                              <td><%=rs.getString("opt1")%></td>
                          </tr>
                          <tr>
                              <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt2")%>' /></td>
                              <td><%=rs.getString("opt2")%></td>
                          </tr>
                          <tr>
                              <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt3")%>' /></td>
                              <td><%=rs.getString("opt3")%></td>
                          </tr>
                          <tr>
                              <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt4")%>' /></td>
                              <td><%=rs.getString("opt4")%></td>
                          </tr>


                         <%
                                }
                            out.println(" </table>");
                            }//else
                     }
                    catch(Exception e)
                        {
                    			e.printStackTrace();
                        }
                    %>
                    <br/>
                    <button type="submit" class="btn btn-success">Go Back to Profile</button>
                </form>
<br/>
                             <br/>
                </div>


                <div id="viewsub" class="tab-pane fade in">

                  <%

                                try
                                {
                               
                                    st=con.createStatement();
                                    String query="select * from subjects";
                                    rs=st.executeQuery(query);
                                    out.println("<table class='table table-striped'");
                                    while(rs.next())
                                    {
                                        out.println("<tr>");
                                        out.println("<td>"+rs.getString("subjectname")+"</td>");
                                        out.println("<td>"+rs.getString("subjectcode")+"</td>");
                                        out.println("</tr>");
                                    }
                                    out.println("</table>");
                                }
                                catch(Exception e){}

                    con.close();
                  %>

                </div>
       
            </div>
            </div>
        </div>

    </div>
 <%@include file="footer.jsp" %>
</body>
</html>