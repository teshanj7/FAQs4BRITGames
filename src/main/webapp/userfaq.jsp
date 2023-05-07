<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User's FAQ Inquiries</title>
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
			font-family: Hind SemiBold;
			background-color: #0c1429;
		}
	
		table, th, td {
  			border: 2px solid white;
		}
		.faqcard{
		 	border: 5px solid #CCA43D;
    		margin-left: 430px ;
    		margin-top: 10px;
    		margin-right: 200px;
    		text-align: center;
    		height: 320px;
    		width: 600px;
    		border-radius: 20px;
		}
		.faqTabletj{
			text-align: center;
			margin-left: 150px  ;
			margin-top: 10px;
			margin-bottom: 0px;
			font-family: 'Cairo', sans-serif;
		}
		.headingtj{
			color: #CCA43D;
		}
		td{
			color: #FFFFFF;
		}
		.h1tj{
			color: #FFFFFF;
			font-family: 'Cairo', sans-serif;
			text-align: center;
			font-size: 40px;
			
		}
		.foot {
			background-color: rgb(0, 0, 0);
			padding-bottom: 3cm;
			background-image: url("images/header.jpg");
			background-size: 100%;
			background-repeat: no-repeat;
}
	</style>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Macondo&display=swap" rel="stylesheet">
     
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo&family=Macondo&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo&family=Macondo&family=Padauk&display=swap" rel="stylesheet">
    
    <%@include file="all_styles/allCss.jsp" %>
</head>
<body>
	<!-- Header -->
	<%@include file="includes/header.jsp" %>
	<div class=bodytj>
	<h1 class=h1tj>All Your Submitted FAQ Inquiries</h1>
	<br>
	<!-- retrieving the variable values -->
	<c:forEach var="faq" items="${faqAllDetails}">
	<div class=faqcard>
	<c:set var="faq_id" value="${faq.faq_id}"/>
	<c:set var="userType" value="${faq.userType}"/>
	<c:set var="name" value="${faq.name}"/>
	<c:set var="email" value="${faq.email}"/>
	<c:set var="phone" value="${faq.phone}"/>
	<c:set var="question" value="${faq.question}"/>
	<table class = faqTabletj>
	
	<tr>
		<td class=headingtj>FAQ ID</td>
		<td>${faq.faq_id}</td>
	</tr>
	<tr>
		<td class=headingtj>User Type</td>
		<td>${faq.userType}</td>
	</tr>
	<tr>
		<td class=headingtj>User's Name</td>
		<td>${faq.name}</td>
	</tr>
	<tr>
		<td class=headingtj>User's E-mail</td>
		<td>${faq.email}</td>
	</tr>
	<tr>
		<td class=headingtj>User's Phone No</td>
		<td>${faq.phone}</td>
	</tr>
	<tr>
		<td class=headingtj>User's Question</td>
		<td>${faq.question}</td>
	</tr>
	
	</table>
	<br><br>
	
	<!-- Faq update button -->
	<c:url value="updatefaq.jsp" var="faqupdate">
		<c:param name = "faq_id" value ="${faq_id}"/>
		<c:param name = "userType" value ="${userType}"/>
		<c:param name = "name" value ="${name}"/>
		<c:param name = "email" value ="${email}"/>
		<c:param name = "phone" value ="${phone}"/>
		<c:param name = "question" value ="${question}"/>
		
	</c:url>	
	<a href="${faqupdate}">
	<input type="button" name="update" value="Update your FAQ Inquiry">
	</a>
	<br>
	
	<!-- Faq delete button -->
	<c:url value="deletefaq.jsp" var="faqdelete">
		<c:param name = "faq_id" value ="${faq_id}"/>
		<c:param name = "userType" value ="${userType}"/>
		<c:param name = "name" value ="${name}"/>
		<c:param name = "email" value ="${email}"/>
		<c:param name = "phone" value ="${phone}"/>
		<c:param name = "question" value ="${question}"/>
	
	</c:url>
	<a href="${faqdelete}">
	<input type="button" name="delete" value= "Delete your FAQ Inquiry">
	</a>
	</div>
	</c:forEach>
	<br><br>
	</div>
	
	<!-- Footer-->
	<%@include file="includes/footer.jsp" %>
</body>
</html>