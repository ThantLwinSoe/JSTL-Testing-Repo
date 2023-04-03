<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="app" uri="/WEB-INF/hereIscCustomfile.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>here is Custom Tags</title>
<app:bootstrapDemo></app:bootstrapDemo>
</head>
<body>
	<h1>
		<app:showMe></app:showMe>
		<app:showMe></app:showMe>
	</h1>
	
	<div class="p-3 mb-2 bg-warning text-dark">
		This is custom Tag.
	</div>
	
	<app:ulike value="Hello Darkness my old friend!!!!"></app:ulike>
</body>
</html>