<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
    <title>Index Page</title>
</head>
<body>
    <h1>Welcome to the Index Page</h1>
    <p>Available routes:</p>
    
    <%
    List<String> urls = (List<String>) request.getAttribute("urls");
    for(String url : urls) {
%>
        <li><a href="<%= url %>"><%= url %></a></li>
<%
    }
%>
    
    
    
<%--     <ul>
        <c:forEach var="url" items="${urls}">
            <li><a href="${url}">${url}</a></li>
        </c:forEach>
    </ul> --%>
</body>
</html>
