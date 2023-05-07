<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User FAQ</title>
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
	
	.faqinserttj{
	border: 2px solid black;
	border-radius: 20px;
	text-align: center;
	width: 500px;
	height: 770px;
	font-family: 'Cairo', sans-serif;
	color: #FFFFFF;
	margin-left: 480px;
	margin-bottom: 10px;
	background-color: #CCA43D;
	font-size: 20px;
	}
	.h1tj{
	text-align: center;
	font-family: 'Cairo', sans-serif;
	font-size: 40px;
	color: #FFFFFF;
	}
	.h2tj{
	text-align: center;
	font-family: 'Cairo', sans-serif;
	color: #FFFFFF;
	}
	.helplayout{
    border: 5px solid #CCA43D;
    margin: 25px 20px 20px 20px;
    text-align: center;
    border-radius: 20px;
	}
	.bttn1{
    margin: 8px 4px 4px 4px;
    width: 400px;
    height: 70px;
    background-color: #CCA43D;
    font-size: 16px;
    font-weight: bold;
    border-radius: 12px;

	}
	.bttn1:hover{
    transform: scale(1.2);
    background: white;
    color: #AA6C39;
    z-index: 2;
    box-shadow: 2px 2px 2px #000;
    cursor: pointer;
    
}
.foot {
	background-color: rgb(0, 0, 0);
	
	padding-bottom: 3cm;
	background-image: url("images/header.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
}
#imgFaqtj{
	width:600px;
	height:400px;
	margin-left: 480px;
	margin-top: -10px;
	
}
.paraFaqtj{
	font-size: 30px;
    font-family: 'Cairo', sans-serif;
    color: white;
    font-weight: normal;
    text-decoration: none;
    text-align: justify;
    font-variant: normal;
    text-transform: none;
    margin-left: 50px;
    margin-right: 50px;
    
}
.h3tj{
	text-align: center;
	font-family: 'Cairo', sans-serif;
	color: #FFFFFF;
	font-size: 20px;
	
}
.allFaqButtontj{
	text-align: center;
	margin-left: 700px;
}
.imgFaqtj1{
	height:300px;
	margin-right: 50px;
}
.inputStyle{
	margin-top:0px;
}

.formatemail{
	text-align:center;
	color: black;
	font-size: 15px;
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
<!-- header -->
<%@include file="includes/header.jsp" %>
<div class=bodytj>
<h1 class=h1tj >FAQs</h1>
<br>
<h2 class=h2tj>Check out the FAQs below</h2>

<!-- Faq type buttons -->
 <div class="helplayout">

        <button class="bttn1" type="button" id="btn1" onclick="loadData('btn1')"> FAQs - General </button>
        <button class="bttn1" type="button" id="btn2" onclick="loadData('btn2')"> FAQs - User </button>
        <button class="bttn1" type="button" id="btn3" onclick="loadData('btn3')"> FAQs - Registered User </button>
        <button class="bttn1" type="button" id="btn4" onclick="loadData('btn4')"> FAQs - Developer </button>
        <button class="bttn1" type="button" id="btn5" onclick="loadData('btn5')"> FAQs - Other </button>
        
    </div>
<br>
<img src="images/imagesFaq/FAQdefault.png" id="imgFaqtj">
<p class="paraFaqtj" id="paraFaqtj">We at BRIT do our very best to fulfill our user needs. If help is needed, check out the above displayed FAQs. If you did not
 find any relevant help for your matter please let us know your inquiry via the form below. We are here to serve you always. - Team BRIT</p>
<br>

<!-- faq insert form -->
<form action ='insert' method ="post" class=faqinserttj name=faqForm onsubmit="return validateForm()">
	<br>
	User Type (Developer/Registered User):
	<br><input type="text" name="type" placeholder="Enter user type"> <br>
	Name:
	<br> <input type="text" name="name" placeholder="Enter name"> <br>
	E-mail: <br>
	<p class=formatemail>(Format: [0-9 characters without symbols like $%^]@[email type].domain)</p>
	<input type ="text" name="email" placeholder="Enter e-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"><br>
	Phone:
	<br> <input type ="number" name="phoneno" placeholder="Enter phone number"><br>  
	Your Question:
	<br> <textarea name="question" style="width:250px; height:300px;"placeholder="Enter your question"></textarea> <br>
	
	<input type="checkbox" class="inputStyle" id="checkBox" onclick="enableButton()"> Accept Privacy Policy and Terms <br>
	<br>
	<input type="submit" name ="submit" id="submitBtn" value="Submit your inquiry" disabled>
	<br>
	
</form>
<br>

<!-- Button to check all faq inquiries user has submitted -->
<form action='retrive' method='post'>
<h3 class=h3tj>Check out all your Inquiries;</h3> 
<input type="submit" name ="submit" value="All Inquiries" class="allFaqButtontj">
</form>
<br><br>

</div>
<script>
<!-- Faq type buttons -->
function loadData(name){
    if(name=="btn1")
    {
        document.getElementById("paraFaqtj").innerHTML = "@What are FAQs? <br> --> FAQs are Frequently Asked Questions. <br> <b>What is Pegasus Apartments?</b> <br> --> Pegasus Apartments Pvt Ltd is a business organization that helps customers around Sri Lanka get their dream apartment. <br> <b>What services do we provide?</b> <br> --> At Pegasus Apartments, we let customers look for apartments and sellers are let to post advertisements for their respective apartments. <br> <b>When did Pegasus Apartments launch?</b> <br> --> We kickstarted Pegasus on the 6th of June 2010. <br> <b> How many employees are currently employeed?</b> <br> --> About 500 employees work for our company, Pegasus Apartments.";

        document.getElementById("imgFaqtj").src = "images/imagesFaq/FAQGeneral.png";
    }

    else if(name=="btn2")
    {
        document.getElementById("paraFaqtj").innerHTML = "<Strong>What can I do in the website?</Strong> <br> -> Users can visit the website and search for apartments. <br> <b>How can I make myself a Customer or a Seller Account?</b> <br> -> You could register yourself using the register button on the top right hand of your screen. Include your details and register, yes it is that easy! <br> <b>How can I login to my Customer or Seller Account?</b> <br> -> You could login to your account using the login option in the top right side of your screen. Include Correct details and you are ready to go! <br> <b>Do I have to login to interact with the website?</b> <br> -> Nope, but if you want to do more things related to booking, buying or selling you should have an account for yourself.";

        document.getElementById("imgFaqtj").src = "images/imagesFaq/FAQUser.png";
    }

    else if(name=="btn3")
    {
        document.getElementById("paraFaqtj").innerHTML = "<b>What can a customer do?</b> <br> -> Customers can search for Apartments, Book apartment inspection tours, Add liked apartments to favourites section, Contact with Customer care regarding matters etc. <br> <b>Can I post apartments using my account? </b> <br> -> No, to post advertisments you should have a Seller account. <br> <b>Do you provide loans or insurance facilities to registered customers? </b> <br> -> Yes, you could contact one of partnering Banks or Insurance companies for more details. <br> <b>How can I book myself an inspection tour for an apartment?</b> <br> -> You can search the respective apartment through the apartments section and select an apartment. Afterwards you could see the option to book yourself an inspection tour for the relevant apartment.";
        
        document.getElementById("imgFaqtj").src = "images/imagesFaq/FAQRegUser.png";
    }

    else if(name=="btn4")
    {
        document.getElementById("paraFaqtj").innerHTML = "<b>What can a seller do?</b> <br> -> Sellers can post advertisments for apartments they own, they can also update and remove their respective apartments afterwards. <br> <b> Can I book inspection tours and proceed to buy apartments? </b> <br> -> Yes. A seller can do anything that a customer can do plus the additional seller facilities. <br> <b>What should I provide as legal documentation? </b> <br> -> A valid National Identity Card, your address, relevant deeds and other legal documents. <br> <b>How can I contact administration?</b> <br> -> You can visit our Contact Us page and directly contact us through the options available or you could visit our main building in Colombo 07. <br> <b>Is there a limit of apartments that can be posted at one time?</b><br> -> No, there is no such limit. You could post advertisments of any number of apartments after approval.";
        
        document.getElementById("imgFaqtj").src = "images/imagesFaq/FAQDeveloper.png";
    }

    else if(name=="btn5")
    {
        document.getElementById("paraFaqtj").innerHTML = "<b>How safe is using your system with activities that goes on?</b> <br> -> We guarantee the safety of all users of the system and their information will not be shared publicly. <br><b>What nationality should I be to be a registered customer or a seller? </b><br> -> Any user from the around the world can access our system and use it but, to be a customer or a seller you should be a Sri Lankan.";

        document.getElementById("imgFaqtj").src = "images/imagesFaq/FAQOther.png";
    }
}

<!--enabling the submit button in the form only when terms are agreed -->
function enableButton(){
    if(document.getElementById("checkBox").checked)
    {
        document.getElementById("submitBtn").disabled=false;
    }
    else
    {
        document.getElementById("submitBtn").disabled=true;
    }
    
}
<!-- alertbox function to alert if there's any missing data section -->
function validateForm() {
	  let x = document.forms["faqForm"]["type"].value;
	  if (x == "") {
	    alert("User type section must be filled");
	    return false;
	  }
	  
	  let y = document.forms["faqForm"]["name"].value;
	  if (y == "") {
	    alert("Name section must be filled");
	    return false;
	  }
	  
	  let z = document.forms["faqForm"]["email"].value;
	  if (z == "") {
	    alert("Email section must be filled");
	    return false;
	  }
	  
	  let a = document.forms["faqForm"]["phoneno"].value;
	  if (a == "") {
	    alert("Phone no section must be filled");
	    return false;
	  }
	  
	  let b = document.forms["faqForm"]["question"].value;
	  if (b == "") {
	    alert("You must enter a question!");
	    return false;
	  }
	 
	}

</script>
<!-- Footer -->
<%@include file="includes/footer.jsp" %>
</body>
</html>