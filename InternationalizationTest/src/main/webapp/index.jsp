 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Internationalization</title>
</head>
<body>
	
	<fmt:setLocale value="ja"/>
	<section>
		<h1>Hello Internationalization</h1>
		<fmt:bundle basename="com.jdc.resources.Messages">
			<p><fmt:message key="title"></fmt:message></p><br>
			<p>
				<fmt:message key="message">
					<fmt:param value="Thant Lwin Soe"></fmt:param>
					<fmt:param value="Thet Hmue Lay"></fmt:param>
				</fmt:message>
			</p><br>
			
			<p>
				<fmt:message key="body">
					<fmt:param value="JDC"></fmt:param>
					<fmt:param value="Dawei Nurseing"></fmt:param>
				</fmt:message>
			</p>
			
		</fmt:bundle>
	</section>
	
</body>
</html>