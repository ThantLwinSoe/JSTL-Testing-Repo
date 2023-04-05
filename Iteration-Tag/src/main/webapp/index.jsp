<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="use" uri="/WEB-INF/custom-tag.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<use:bootstrap></use:bootstrap>
<title>Iteration Custom Tag</title>
</head>
<body>
	<h1 class="text-primary">Iteration Tag</h1>
	<div class="mb-2">
		<a href="load" class="btn btn-info">Load Data</a>
	</div>
	<use:forEach items="${courses }" item="course" title="Future Plan of Studying">
		<div class=" list-group-item">${course }</div>
	</use:forEach>
</body>
</html>