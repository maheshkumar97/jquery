<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script type="text/javascript">
	$(function() {
		$('#dialogMsg').dialog();
	});
	</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form id="dialogMsg" title = "Student Form" action="processForm" modelAttribute="student">
		
		First Name: <form:input path="firstName" ></form:input>
		<br><br>
		Last Name: <form:input path="lastName"></form:input>
		<br><br>
		Select country: <form:select path="country">
		                    <form:options items ="${student.countryOptions}" />
						</form:select>
		<br><br>
		Select Gender: <form:radiobutton path = "gender" value="male" /> Male
					   <form:radiobutton path = "gender" value="female" /> Female
		<br><br>			   
		Hobbies: <form:checkbox path="hobby" value="Reading Books" />Reading
				 <form:checkbox path="hobby" value="Listenig songs" />Listening
				 <form:checkbox path="hobby" value="Playing Cricket" />Playing
		<br><br>
		
		<%-- <br><br>
		Select Country: <form:select path="country">
							<form:option value="India">India</form:option>
							<form:option value="USA">USA</form:option>
							<form:option value="UK">UK</form:option>
						</form:select>
						<br><br> --%>
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>