<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ff" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Format Method</title>
</head>
<body>
	<h1>Format Demolation</h1>
	
	<c:choose>
		<c:when test="${empty number}">
			<c:url value="/format" var="format_page"></c:url>
			<a href="${format_page}"> Formatting Data</a>
		</c:when>
		
		<c:otherwise>
			<table>
				<tr>
					<td>Number</td>
					<td>
						<ff:formatNumber  
						value="${number }" groupingUsed="true"></ff:formatNumber>
					</td>
				</tr>
				<tr>
					<td>Float Number</td>
					<td>
						<ff:formatNumber  
						value="${floatNumber}" maxFractionDigits="6" groupingUsed="true"></ff:formatNumber>
					</td>
				</tr>				
				
				<tr>
					<td>Currency</td>
					<td>
						<ff:formatNumber  
						value="${currency}" type="currency" currencySymbol="MMK" groupingUsed="true"></ff:formatNumber>
					</td>
				</tr>
				
				<tr>
					<td>Pattern</td>
					<td>
						<ff:formatNumber  
						value="${Pattern}" type="number" pattern="###.###" groupingUsed="true"></ff:formatNumber>
					</td>
				</tr>
				
				<tr>
					<td>Date</td>
					<td>
						<ff:formatDate value="${Date}" type="both"/>
					</td>
				</tr>
				<tr>
					<td>Full Date</td>
					<td>
						<ff:formatDate value="${Date}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
				</tr>
				
				<tr>
					<td>Newyork Time</td>
					<td>
						<ff:formatDate value="${Date}" timeZone="America/New_York" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
				</tr>
				
				<tr>
					<td>Japan Time</td>
					<td>
						<ff:formatDate value="${Date}" timeZone="Asia/Tokyo" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
				</tr>
				
				<tr>
					<td>Shanghai Time</td>
					<td>
						<ff:formatDate value="${Date}" timeZone="Asia/Shanghai" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
				</tr>
						
			</table>	
			
			<div>
			 	<h3>Switching Time Zone</h3>
			 	<ul>
			 		<li><a href="?tz=America/New_York&number=12">New York</a></li>
			 		<li><a href="?tz=Asia/Tokyo">Tokyo</a></li>
			 		<li><a href="?tz=Asia/Shanghai">Shanghai</a></li>
			 	</ul>
			</div>
			
			<% String ny = request.getParameter("tz"); 	%>
			
			<c:set value="Asia/Rangoon" var="yangon"></c:set>
			
<!-- 		Same Working -->
<%-- 		<ff:setTimeZone value="${empty ny ? yangon : ny }" /> --%>
			<ff:setTimeZone value="${empty params.tz ? yangon : params.tz }" />
			<div>
				<ff:formatDate value="${Date}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</div>
			
			
			
			
				
		</c:otherwise>
	</c:choose>
</body>
</html>