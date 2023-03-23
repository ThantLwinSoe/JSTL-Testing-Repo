<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSTL</title>
</head>
<body>
	<%
	List<String> list = new ArrayList<>();
	list.add("HTML");
	list.add("CSS");
	list.add("JAVA");
	list.add("Javascripts");
	list.add("Ruby");
	pageContext.setAttribute("show", list);
	%>
	<c:set var="name" scope="page" value="JSTL"></c:set>
	<section>
		<h1>JSTL C set variable</h1>
		<ul>
			<li>${name}</li>
		</ul>
	</section>

	<section>
		<h1>JSTL C ForEach</h1>
		<ul>
			<c:forEach var="show_list" items="${show }">
				<li>${show_list }</li>
			</c:forEach>
		</ul>
	</section>

	<section>
		<h1>For Each and if statement</h1>
		<c:forEach var="check" items="${show }">
			<c:choose>
				<c:when test="${check eq 'HTML'}">
					<p>This is ${check} page</p>
				</c:when>
				<c:when test="${check eq 'JAVA'}">
					<p>This is ${check } page	</p>
				</c:when>
				<c:otherwise>
					<p>This is ${check } page</p>
				</c:otherwise>
			</c:choose>
		</c:forEach>

	</section>

</body>
</html>