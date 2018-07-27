<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendee Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style type="text/css">

	.error{
		color:#ff0000;
		
	}
	.errorblock{
	
		color:#000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
	
	}
	
</style>
</head>
<body>

<div class="container">
<u><a href ="?language=en">English</a></u>&nbsp;
<u><a href ="?language=es">Spanish</a></u>

<%-- ${event.getName()} --%>



	<form:form  modelAttribute = "attendee">
	
		<form:errors path="*" cssClass="errorblock" element="div"/> 
		<label for="textinput1"><spring:message code="attendee.name"/></label>
		<form:input path="name" cssErrorClass="error"/>
		<form:errors path="name" cssClass="error"/> 
		<br/>
		<label for="textinput2"><spring:message code="attendee.email"/></label>
		<form:input path="email" cssErrorClass="error"/>
		<form:errors path="email" cssClass="error"/> 
		<br/>
		<label for="textinput3"><spring:message code="attendee.phone"/></label>
		<form:input path="phone" cssErrorClass="error"/>
		<form:errors path="phone" cssClass="error"/> 
		<br/>
		<input type="submit" class="btn" value="Enter Attendee">
		
	</form:form>
	

</div>

</body>
</html>