<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_styles/allCss.jsp"%>
<style type="text/css">
header {
	background-color: rgb(46, 46, 46);
	height: 28vh;
	background-image: url("images/header.jpg");
	background-size: 50%;
}

.foot {
	background-color: rgb(0, 0, 0);
	margin-top: 2cm;
	padding-bottom: 3cm;
	background-image: url("images/header.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
}
body{
	background-color: #0c1429;
}
</style>
</head>
<body>

<%@include file="includes/header.jsp"%>
	<div>
		<h1>Hello....!</h1>
	</div>

<%@include file="includes/footer.jsp"%>

</body>
</html>