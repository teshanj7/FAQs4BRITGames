<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" type="x-icon" href="images/logo.png">
<title>Delete FAQ Form</title>
<style type="text/css">

		header {
			background-color: rgb(46, 46, 46);
			height: 28vh;
			background-image: url("images/header.jpg");
			background-size: 50%;
		}
	
		.bodytj{
			background-color: #0c1429;
		}

		body{
			background-color: #0c1429;
		}
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  	border: 1px solid black;
		}
		
		.faqdeletetj{
			border: 2px solid black;
			text-align: center;
			width: 500px;
			height: 740px;
			font-family: 'Cairo', sans-serif;
			color: #FFFFFF;
			margin-left: 480px;
			margin-top: 10px;
			background-color: #CCA43D;
			font-size: 20px;
		}
		.h1tj{
			color: #FFFFFF;
			font-family: 'Cairo', sans-serif;
			text-align: center;
			font-size: 40px;
		}
		
		.h2tj{
			color: #FFFFFF;
			font-family: 'Cairo', sans-serif;
			text-align: center;
			font-size: 20px;
		}
		.backbuttontj{
			text-align: center;
			margin-left: 660px;
		}
		.foot {
			background-color: rgb(0, 0, 0);
			padding-bottom: 3cm;
			background-image: url("images/header.jpg");
			background-size: 100%;
			background-repeat: no-repeat;
		}
		.allFaqButtontj{
			text-align: center;
			margin-left: 700px;
		}
		
		
	</style>
		<link rel="preconnect" href="https://fonts.googleapis.com">
   		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    	<link href="https://fonts.googleapis.com/css2?family=Macondo&display=swap" rel="stylesheet">
     
    	<link rel="preconnect" href="https://fonts.googleapis.com">
    	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    	<link href="https://fonts.googleapis.com/css2?family=Cairo&family=Macondo&display=swap" rel="stylesheet">

    	<link rel="preconnect" href="https://fonts.googleapis.com">
    	<link rel="preconnect" href="https://fonts.gstatic.com">
    	<link href="https://fonts.googleapis.com/css2?family=Cairo&family=Macondo&family=Padauk&display=swap" rel="stylesheet">
    	
    	<%@include file="all_styles/allCss.jsp" %>
</head>
<body>
<!-- Header -->
<%@include file="includes/header.jsp" %>
	
	<!-- retrieving all the data for the section from the database -->
	<%
		String faq_id = request.getParameter("faq_id");
		String userType = request.getParameter("userType");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String question = request.getParameter("question");
	
	%>
	<div class=bodytj>
	<br>
	<h1 class=h1tj>Delete your FAQ Inquiry</h1>
	<br>
	<h2 class=h2tj>You can delete your previously submitted FAQ Inquiry form below</h2>
	<form action="delete" method="post" class=faqdeletetj>
	
			FAQ Id:
			<br><input type ="text" name ="faq_id" value="<%= faq_id %>" readonly >
	    <br>
	    	User Type:
	    	<br><input type="text" name="type" value="<%= userType %>" readonly>
	    <br>
	    	Name: 
	    	<br><input type="text" name="name" value="<%= name %>" readonly>
	  
	    <br>
	       Email: 
	       <br><input type ="text" name="email" value="<%= email %>" readonly>
	    <br>
	    	Phone:
	    	<br><input type ="number" name="phoneno" value="<%= phone %>" readonly>
	    <br>
	    	Your Question: 
	    	<br><input type="text" name="question" style="width:250px; height:300px;" value="<%= question %>" readonly>
	    <br>
	
	<br>
	<input type="submit" name="submit" value="Delete FAQ Inquiry">
	
	</form>
	<br>
	<h2 class=h2tj>Changed your mind? Go back to your inquiries;</h2>
	
	<!-- go back to all inquiries button -->
	<form action='retrive' method='post'>
	<input type="submit" name ="submit" value="All Inquiries" class="allFaqButtontj">
	</form>
	<br><br>
	</div>
	
	<!-- Footer -->
	<%@include file="includes/footer.jsp" %>
</body>
</html>