<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5Mart線上教育平台</title>
<link rel="shortcut icon" href="\SpringEEIT69-5Mart\assets\images\favicon.ico" type="image/x-icon">
</head>
<body>

	<h1>Upload Video to 5Mart Database</h1>

	<!-- 用於顯示上傳狀態的區域 -->
	<div id="message">${message != null ? message : ""}</div>

	<!-- 上傳影片的表單 -->
	<form action="<c:url value='/uploadVideo' />" method="post"
		enctype="multipart/form-data">

		<label for="unitId">Course ID:</label> <input type="text" id="unitId"
			name="unitId"><br>
		<br> <label for="videoNumber">Video Unit Number:</label> <input
			type="text" id="videoNumber" name="videoNumber"><br>
		<br> <label for="videoName">Video Name:</label> <input
			type="text" id="videoName" name="videoName"><br>
		<br>

		<!-- 選擇影片檔案，同時有檔案限制規範，這邊限制為MP4影片檔案 -->
		<label for="file">Choose Video:</label> <input type="file" id="file"
			name="file" accept="video/mp4"><br>
		<br>

		<button type="submit">Upload</button>
	</form>
			<!-- 限制上傳檔案的大小 -->
	<script>
			const inputElement = document.querySelector('input[type="file"]');
			inputElement.addEventListener('change', function() {
			    const fileSize = this.files[0].size;
			    // 檢查檔案大小（以位元組為單位）
			    if (fileSize > 52428800) {  // 例如，限制為 50MB
			        alert('檔案太大，不能超過 50MB');
			        this.value = '';  // 清空檔案輸入
			    }
			});
	</script>
</body>
</html>
