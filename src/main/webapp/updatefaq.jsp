<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update FAQ Form</title>
<link rel="shortcut icon" type="x-icon" href="images/logo.png">
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
		
		.faqupdatetj{
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

	<!-- retrieving the data for the sections from the database -->
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
	<h1 class=h1tj>Update your FAQ Inquiry</h1>
	<br>
	<h2 class=h2tj>You can update your previously submitted FAQ Inquiry form below.</h2>
	
	<form action="update" method="post" class=faqupdatetj>
	
			FAQ Id:<br>
			<input type ="text" name ="faq_id" value="<%= faq_id %>" readonly >
		<br>
	    
	    	User Type:<br>
	    	<input type="text" name="type" value="<%= userType %>" >
	    <br>
	    	Name: <br>
	    	<input type="text" name="name" value="<%= name %>" >
	    <br>
	       Email: <br>
	        <input type ="text" name="email" value="<%= email %>" >
	    <br>
	       Phone:<br>
	    	<input type ="number" name="phoneno" value="<%= phone %>" >
	    <br>
	    	Your Question:<br>
	    	<input type="text" name="question" style="width:250px; height:250px;" value="<%= question %>" >
	   
	<br><br>
	<input type="submit" name="submit" value="Update FAQ Inquiry">
	
	</form>
	<br>
	<h2 class=h2tj>Changed your mind? Go back to your inquiries;</h2>
		<!--<c:url value="userfaq.jsp" var="faqretrieve">
		<c:param name = "faq_id" value ="${faq_id}"/>
		<c:param name = "userType" value ="${userType}"/>
		<c:param name = "name" value ="${name}"/>
		<c:param name = "email" value ="${email}"/>
		<c:param name = "phone" value ="${phone}"/>
		<c:param name = "question" value ="${question}"/> 
		
	</c:url> -->
	
	<!-- go back to all inquiries page -->
	<form action='retrive' method='post'>
	<input type="submit" name ="submit" value="All Inquiries" class="allFaqButtontj">
	</form>
	<br><br>
	</div>
	
	<!-- Footer -->
	<%@include file="includes/footer.jsp" %>
</body>
</html>