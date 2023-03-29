<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Jetty Plug in</title>
</head>
<body>


	<section>
		<fmt:bundle basename="com.jdc.tls.Greeting" prefix="lan.">
			<h1>
				<fmt:message key="eng">
					<fmt:param value="Thet Lay"></fmt:param>
				</fmt:message>
			</h1>

			<h1>
				<fmt:message key="jap">
					<fmt:param value="タイ　ム"></fmt:param>
				</fmt:message>
			</h1>
		</fmt:bundle>

	</section>

	<section>
		<h1>私は タイ りん ソウ です。</h1>

		<ul>
			<fmt:setBundle basename="com.jdc.tls.hello" var="yes" />
			<fmt:message bundle="${yes }" key="test" var="show">
				<fmt:param value="あ"></fmt:param>
				<fmt:param value="い"></fmt:param>
				<fmt:param value="う"></fmt:param>
				<fmt:param value="え"></fmt:param>
				<fmt:param value="お"></fmt:param>
				<fmt:param value="さ"></fmt:param>
			</fmt:message>
 
			<c:forEach items="${ fn:split(show,',') }" var="result">
				<li><c:out value="${result }"></c:out></li>
			</c:forEach>

		</ul>

	</section>

</body>
</html>