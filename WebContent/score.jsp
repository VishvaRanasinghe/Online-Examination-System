





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="Online Examination System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="result,profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View Result Online Examination System</title>

 <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
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


<body style="background-color: #279EFF;">
    <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
       <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
      		<script type="text/javascript" src="script1.js"></script>
             <script src="assets/js/jquery-1.js" type="text/javascript"></script>
                <script src="assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="assets/js/application_1.js" type="text/javascript"></script>
                    
<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="#" class="brand"> <img src="./assets/img/logo.jpg" alt="Exam Show" width="60px" height="60px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Online Examination System</h1>
<form action="logout" method="post" class="pull-right">

</form>
<p class="pull-right" style="color:white;">
<br />


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
                    <a href="facultyprofile.jsp" >Profile</a>
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
                    <center><h1 style='color:#808080;'> ScoreCard: </h1></center><br/>


              <table id='sortTableExample' class='table zebra-striped'>
                  <thead><tr>
                <th class="header">S No.</th>
                <th class="red header">Username</th>
                <th class="green header">Correct</th>
                <th class="red header">Wrong</th>
                <th class="yellow header">Skipped</th>
                <th class="blue header headerSortUp">Score</th>
                      </tr></thead>
                <tbody>




                
                          </tbody></table>

                    <br/>
                    <button type="submit" class="btn btn-success">Go Back to Profile</button>
                </form>

                </div>





<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="height: 800px; width: 700px">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
<h3 id="myModalLabel">Feedback form</h3>
</div>
<div class="modal-body">
 <form action="feedback" id="contact-form2" class="form-horizontal" method="post">

                                                      <div class="control-group">
						      <label class="control-label" for="fname">Name</label>
						      <div class="controls">

                                                        <input type="text" class="input-large span5" name="fname"  required id="fname" placeholder="Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>

                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="email">Email Address</label>
                                                      <div class="controls">
                                                       <input type="email" class="input-large span5" name="email" required id="email" placeholder="Email address"/>
                                                       </div>
                                                    </div>
						    <div class="control-group">
						      <label class="control-label" for="number">Mobile No.</label>
						      <div class="controls">
                                                <input type="text" class="input-large span5" name="number" id="number" required maxlength="10" placeholder="Mobile number"/>
					           </div>
                                                    </div>
                                                     <div class="control-group">
						      <label class="control-label" for="comment">Comment</label>
						      <div class="controls">
                                                        <textarea required="true" class="form-control span5" name="comment" id="comment" rows="8" placeholder="Put youe Comment......" required="true">
                                                        </textarea>
                                                        <span id="err"> </span>
                                                        </div>
						    </div>
           <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-success btn-large" data-loading-text="Loading...">Send</button>
                                                                        </div>
                                                                                </div>
      </form>


</div>
</div>

<div id="myModal3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
    <h3 id="myModalLabel">Contact Us</h3>
    </div>
    <div align="center" class="modal-body lead" style='color:#808080 ;font-weight: bold;' >
   

        
    </div>
</div>

</body>
</html>