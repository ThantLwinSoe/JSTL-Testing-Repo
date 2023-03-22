<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Expression Test</title>
</head>
<body>
	<% 
		request.setAttribute("data1", 500);
		request.setAttribute("data2", 200);
		request.setAttribute("data3", 1000);
		request.setAttribute("data4", 100);
		request.setAttribute("list", List.of("Servlet","Java","React"));
		request.setAttribute("Map", Map.of("key1","Thant","key2","Thet"));
	%>
	<h1>El Expression Testing</h1>
	<h2>Arithmetic Testing</h2>
	<table width="50%">
		<tr>
			<td>Expression One</td>
			<td>Expression Two</td>
			<td>Results</td>
		</tr>
		<tr>
			<td>[ A + B ]</td>
			<td>${data1} + ${data2}</td>
			<td>${data1 + data2}</td>
		</tr>
		<tr>
			<td>[ A - B ]</td>
			<td>${data1} - ${data2}</td>
			<td>${data1 - data2}</td>
		</tr>
		<tr>
			<td>[ A * B ]</td>
			<td>${data1} * ${data2}</td>
			<td>${data1 * data2}</td>
		</tr>
		<tr>
			<td>[ A / B ]</td>
			<td>${data1} / ${data2}</td>
			<td>${data1 / data2}</td>
		</tr>
		<tr>
			<td>[ C / D ]</td>
			<td>${data3} / ${data4}</td>
			<td>${data3 div data4}</td>
		</tr>
		<tr>
			<td>[ A % B ]</td>
			<td>${data1} % ${data2}</td>
			<td>${data1 % data2}</td>
		</tr>
		<tr>
			<td>[ C % D ]</td>
			<td>${data3} % ${data4}</td>
			<td>${data3 mod data4}</td>
		</tr>												
	</table>
	
	<table>
		<tr>
			<td>Expression One</td>
			<td>Expression Two</td>
			<td>Results</td>
		</tr>
		<tr>
			<td>A ? B</td>
			<td>${data1} equal ${data2}</td>
			<td>${data1 eq data2 ? "${data1} equal? ${data2}" : " A is not equal B"}</td>
		</tr>
		<tr>
			<td>list</td>
			<td>${list[0]}</td>
			<td>${list[1]}</td>			
			<td>${list[2]}</td>
		</tr>
		<tr>
			<td>Map</td>
			<td>${Map["key1"]}</td>
			<td>${Map["key2"]}</td>
		</tr>						
	</table>
	
</body>
</html>