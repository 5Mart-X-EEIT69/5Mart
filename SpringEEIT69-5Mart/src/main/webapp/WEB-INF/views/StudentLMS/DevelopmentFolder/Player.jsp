<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <title>5Mart線上教育平台</title>
<link rel="shortcut icon" href="\SpringEEIT69-5Mart\assets\images\favicon.ico" type="image/x-icon">
    <style>
      /* 自定義CSS，讓tab分頁佔滿寬度 */
      .tab-pane {
        width: 100%;
      }
    </style>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
  </head>

  <body>

<!-- HTML5 Video Player -->
<video id="videoPlayer" width="800" controls>
  <source id="videoSource" type="video/mp4">
</video>

<!-- Buttons to load video by UUID -->
<button onclick="loadVideo('9f250c1e-6bb2-4c0a-8dd0-c404128fd0ce')">Load Video 1</button>
<button onclick="loadVideo('adbfca88-3b10-452f-945b-06ac126d1605')">Load Video 2</button>

<script>

let contextPath = '<%= request.getContextPath() %>';

function loadVideo(uuid) {
    console.log("UUID:", uuid);  // 顯示UUID以確認它是否正確

    let curl = contextPath + '/api/videos/' + uuid;  // 直接用 JavaScript 來拼接 URL
    $.ajax({
        url: curl,
        type: 'GET',
        xhrFields: {
            responseType: 'blob'
        },
        success: function(response){
            // 使用 Blob 來處理影片資料
            var blob = new Blob([response], { type: 'video/mp4' });
            console.log("成功");
            var url = window.URL.createObjectURL(blob);
            var videoPlayer = document.getElementById('videoPlayer'); // 更新為您指定的 video 標籤的 id
            videoPlayer.src = url;
        },
        error: function(response){
            console.log("失敗", response);
        }
    });
} 


  /* function loadVideo(uuid) {
    // 發送 AJAX 請求到後端
    fetch(`/getVideo?uuid=${uuid}`)
      .then(response => response.blob())
      .then(blob => {
        const videoUrl = URL.createObjectURL(blob);
        document.getElementById('videoSource').src = videoUrl;
        document.getElementById('videoPlayer').load();
      });
  } */
  
</script>
<!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
