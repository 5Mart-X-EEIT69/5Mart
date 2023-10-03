<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href="<spring:url value='/css/styles.css' />" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div align='center'>
		<h3>客戶資料</h3>
		
		<a href='customers'>顯示客戶資料</a><br> <a href='insertCustomer'>新增客戶資料</a><br>
		<hr>
		<a href="<spring:url value='/' />">回首頁</a><br>
		<hr>
	</div>
</body>
</html>