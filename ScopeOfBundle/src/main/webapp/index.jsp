<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope of Curstomize Bundle</title>
</head>
<body>

	<fmt:setLocale value="${param.lang }" />
	
	<h1>${param.lang }</h1>
	
	<fmt:setBundle basename="com.jdc.tls.resources.language" var="ok" />
	<section>
		<h1>
			<fmt:message bundle="${ok }" key="lan.hello"></fmt:message>
		</h1>
		<h3>
			<fmt:message bundle="${ok }" key="lan.about"></fmt:message>
		</h3>
	</section>

	<section>
		<ul>
			<li><a href="?lang=en">English</a></li>
			<li><a href="?lang=ja">Japanese</a></li>
		</ul>
	</section>
	
	

</body>
</html>