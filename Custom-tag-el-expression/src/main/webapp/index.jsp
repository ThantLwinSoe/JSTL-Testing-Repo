<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="use" uri="/WEB-INF/custom-tag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<use:forBootstrap></use:forBootstrap>
<title>Custom Tag</title>
</head>
<body>
	<c:set value="Attribute with el expression" var="subT"></c:set>
	<div class="p-3 mb-2 bg-primary text-white">
		<use:hello></use:hello>
	</div>
	<div class="p-3 mb-2 bg-warning text-dark">
		<use:customAttribute
			subTitle="${ empty subT ? 'Default Attribute value' : subT }"></use:customAttribute>
	</div>

	<form action="index.jsp">
		<use:form name="username" label="Customer"
			placeholder="Enter Customer name"></use:form>
	</form>

	<%-- 	<c:set value="${username}" var="user" ></c:set> --%>
	<div class="p-3 mb-2 bg-primary text-white">${param.username }</div>

</body>
</html>