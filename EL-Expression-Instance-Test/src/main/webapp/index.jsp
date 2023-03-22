<%@page import="com.jdc.tls.UserDataTwo"%>
<%@ page import="com.jdc.tls.UserData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instance Member</title>
</head>
<body>
	<%
	pageContext.setAttribute("data", 100);

	request.setAttribute("data", 200);

	session.setAttribute("data", 300);

	application.setAttribute("data", 400);

	session.setAttribute("user", new UserData("Hmue", "09789765", 500, 600));

	pageContext.setAttribute("record", new UserDataTwo(500, 500));
	%>

	<section>
		<h1>Scope of El Expression</h1>
		<ul>
			<li>Page Scope "data" ${data}</li>
			<li>request Scope "data" ${requestScope.data}</li>
			<li>Session Scope "data" ${sessionScope.data}</li>
			<li>Application Scope "data" ${applicationScope.data}</li>
		</ul>
	</section>

	<section>
		<h1>Instance Members in the Scriptless</h1>
		<ul>
			<li>name of getter method "${user.name }"</li>
			<li>phone of getter method "${user.phone}"</li>
			<li>Sub of numbers "${user.numberOne - user.numberTwo}"</li>
			<li>instance method "${user.result()}</li>
		</ul>
	</section>

	<section>
		<h1>Record members of Scriptless</h1>
		<ul>
			<li>Record getResults method "${record.getResults() }"</li>
			<li>Record number One "${record.num1() }"</li>
			<li>Record number Two "${record.num2() }"</li>
		</ul>
	</section>

</body>
</html>