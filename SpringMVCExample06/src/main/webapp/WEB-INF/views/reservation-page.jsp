<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Form</title>
</head>
<body>
	<h3>Railway Reservation Form</h3>
	<form:form action="submitForm" modelAttribute="reservation">
	First name: <form:input path="firstName" />
		<br><br>
	Last name : <form:input path="lastName" />
	<br><br> 
	Gender : Male :
	<form:radiobutton path="Gender" value="Male" />
	Female :
	<form:radiobutton path="Gender" value="Female" />
	<br><br>
	Meals:
	BreakFast<form:checkbox path="Food" value ="BreakFast"/>
	Lunch<form:checkbox path="Food" value ="Lunch"/>
	Dinner<form:checkbox path="Food" value ="Dinner"/>
	<br><br>
	Leaving from: <form:select path="cityFrom">
	<form:option value="Ghaziabad" label="Ghaziabad"/>
	<form:option value="Mozinagar" label="Mozinagar"/>
	<form:option value="American-Thor" label="American-Thor"/>
	<form:option value="LongAn" label="LongAn"/>
	</form:select>
	<br><br>
	Going to:<form:select path="cityTo">
	<form:option value="Ghaziabad" label="Ghaziabad"/>
	<form:option value="Mozinagar" label="Mozinagar"/>
	<form:option value="American-Thor" label="American-Thor"/>
	<form:option value="LongAn" label="LongAn"/>
	</form:select>
	<input type="submit" value="Submit" />
	</form:form>
	
	

</body>
</html>