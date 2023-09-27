<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload Video to 5Mart ＭariaDB</title>
</head>
<body>

    <h1>Upload Video to 5Mart Database</h1>

    <!-- 用於顯示上傳狀態的區域 -->
    <div id="message">
        ${message != null ? message : ""}
    </div>

    <!-- 上傳影片的表單 -->
    <form action="<c:url value='/uploadVideo' />" method="post" enctype="multipart/form-data">
        
        <label for="unitId">Course ID:</label>
        <input type="text" id="unitId" name="unitId"><br><br>

        <label for="videoNumber">Video Unit Number:</label>
        <input type="text" id="videoNumber" name="videoNumber"><br><br>

        <label for="videoName">Video Name:</label>
        <input type="text" id="videoName" name="videoName"><br><br>

        <label for="file">Choose Video:</label>
        <input type="file" id="file" name="file"><br><br>

        <button type="submit">Upload</button>
    </form>

</body>
</html>
