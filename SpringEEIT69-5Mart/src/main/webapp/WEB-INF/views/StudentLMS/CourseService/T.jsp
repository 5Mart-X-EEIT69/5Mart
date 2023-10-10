<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 響應式的引入 -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 響應式的引入 -->

<title>5Mart線上教育平台</title>
<link rel="shortcut icon" href="\SpringEEIT69-5Mart\assets\images\favicon.ico" type="image/x-icon">

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->

<!-- bootstrap 公版-->
<link rel='stylesheet' href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />" type="text/css" />

<!-- <link rel='stylesheet' -->
<%-- 	href="<c:url value=" --%>
<%-- 				/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />" --%>
<!-- 	type="text/css" /> -->
<!-- bootstrap 公版-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- google fonts的icon庫引入 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
<!-- google fonts的icon庫引入 -->

<!-- font awesome的icon庫引入 -->
<script src="https://kit.fontawesome.com/7ae43304d6.js" crossorigin="anonymous"></script>
<!-- font awesome的icon庫引入 -->

<!-- <!-- CDN引入 -->
<!-- <link -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" -->
<!-- 	crossorigin="anonymous" /> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<!-- <!-- CDN引入 -->


<link rel='stylesheet' href="<c:url value='/assets/css/teacherNavBar.css' />" type="text/css" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@600&family=Noto+Serif+TC:wght@200;700&display=swap" rel="stylesheet">


<style type="text/css">
</style>
 <style>
      /* 自定義CSS，讓tab分頁佔滿寬度 */
      .tab-pane {
        width: 100%;
      }
 </style>
</head>

<body>
	<div class="main-container d-flex">
 <div class="sidebar" id="side_nav">
 		<div class="sidebar" id="side_nav">
			<div class="header-box ms-2 px-2 pt-3 pb-4 d-flex justify-content-between">
				<h1 class="fs-4">
					<span class="bg-white text-dark rounded shadow px-2 me-2">S</span><span class="text-white me-2">mart</span>
				</h1>
				<button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
					<i class="fa-solid fa-bars-staggered"></i>
				</button>
			</div>
			<ul class="list-unstyled px-2">
				<li class="my-1">
					<a href="<c:url value="/studentIndex"></c:url>#sublist" data-bs-toggle="collapse" id="dropdown" class="text-decoration-none px-3 py-2 d-block ">
						<i class="fa-solid fa-tv pe-3" style="color: #ffffff;"></i>Dashboard
					</a>
					<%-- <ul id="sublist" class="list-unstyled collapse">
						<li>
							<a href="<c:url value="/studentCourseList"></c:url>" class="text-decoration-none ps-4">課程中心</a>
						</li>
						<li>
							<a href="<c:url value="/studentNotification"></c:url>" class="text-decoration-none ps-4">通知中心</a>
						</li>
						<li>
							<a href="<c:url value="/studentNotification"></c:url>" class="text-decoration-none ps-4">系統通知</a>
						</li>
						<li>
							<a href="<c:url value="/studentNotificationQA"></c:url>" class="text-decoration-none ps-4">課程問與答</a>
						</li>
						<li>
							<a href="<c:url value="/studentNotificationMessage"></c:url>" class="text-decoration-none ps-4">私人訊息</a>
						</li>
						<li>
							<a href="<c:url value="/cartServicePage"></c:url>" class="text-decoration-none ps-4">商務中心</a>
						</li>
					</ul> --%>
				</li>
				<li class="my-1 active">
					<a href="<c:url value="/studentCourseList"></c:url>#sublist1" data-bs-toggle="collapse" id="dropdown" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between ">
						<span><i class="fa-solid fa-pencil pe-3" style="color: #ffffff;"></i>課程中心</span><span class="bg-dark rounded-pill text-white py-0 px-2">01</span>
					</a>
					<!-- <ul id="sublist1" class="list-unstyled collapse">
						<li>
							<a href="" class="text-decoration-none ps-4">問與答</a>
						</li>
						<li>
							<a href="" class="text-decoration-none ps-4">訊息</a>
						</li>
						<li>
							<a href="" class="text-decoration-none ps-4">公告</a>
						</li>
					</ul> -->
				</li>
				<li class="my-1">
					<a href="<c:url value="/studentNotification"></c:url>#sublist2" data-bs-toggle="collapse" id="dropdown" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between ">
						<span><i class="fa-solid fa-comment pe-3" style="color: #ffffff;"></i>通知中心</span><span class="bg-dark rounded-pill text-white py-0 px-2">02</span>
					</a>				
					<ul id="sublist2" class="list-unstyled collapse">
						<li>
							<a href="<c:url value="/studentNotification"></c:url>" class="text-decoration-none ps-4">系統通知</a>
						</li>
						<li>
							<a href="<c:url value="/studentNotificationQA"></c:url>" class="text-decoration-none ps-4">課程問與答</a>
						</li>
						<li>
							<a href="<c:url value="/studentNotificationMessage"></c:url>" class="text-decoration-none ps-4">私人訊息</a>
						</li>
					</ul>
				</li>
				<li class="my-1">
					<a href="#sublist3" data-bs-toggle="collapse" id="dropdown" class="text-decoration-none px-3 py-2 d-block">
						<i class="fa-solid fa-truck-fast pe-2" style="color: #ffffff;"></i>商務中心
					</a>
					<ul id="sublist3" class="list-unstyled collapse">
						<li>
							<a href="<c:url value="/cartServicePage"></c:url>" class="text-decoration-none ps-4">購物車</a>
						</li>
					</ul>
				</li>
				
				<!-- <li class="my-1">
					<a href="#sublist4" data-bs-toggle="collapse" id="dropdown" class="text-decoration-none px-3 py-2 d-block">
						<i class="fa-solid fa-user pe-2" style="color: #ffffff;"></i>講師個人資料
					</a>
					<ul id="sublist3" class="list-unstyled collapse">
						<li>
							<a href="" class="text-decoration-none ps-4">講師照片</a>
						</li>
						<li>
							<a href="" class="text-decoration-none ps-4">自我介紹</a>
						</li>
						<li>
							<a href="" class="text-decoration-none ps-4">收款帳戶</a>
						</li>
					</ul>
				</li> -->
			</ul>
			<hr class="h-color mx-2">

			<ul class="list-unstyled px-2">
				<li class="">
					<a href="<c:url value="/profileSettingPage"></c:url>#sublist4" data-bs-toggle="collapse" id="dropdown" class="text-decoration-none px-3 py-2 d-block">
						<i class="fa-solid fa-gear pe-3 " style="color: #ffffff;"></i>設定
					</a>
					<ul id="sublist4" class="list-unstyled collapse">
						<li>
							<a href="<c:url value="/profileSettingPage"></c:url>" class="text-decoration-none ps-4">帳號資料</a>
						</li>
						<li>
							<a href="<c:url value="/pictureSettingPage"></c:url>" class="text-decoration-none ps-4">帳號照片</a>
						</li>
						<li>
							<a href="<c:url value="/safetySettingPage"></c:url>" class="text-decoration-none ps-4">安全性</a>
						</li>
						<li>
							<a href="<c:url value="/privacySettingPage"></c:url>" class="text-decoration-none ps-4">隱私權</a>
						</li>
												<li>
							<a href="<c:url value="/paymentSettingPage"></c:url>" class="text-decoration-none ps-4">付款資訊</a>
						</li>
												<li>
							<a href="<c:url value="/deactivateSettingPage"></c:url>" class="text-decoration-none ps-4">停用帳號</a>
						</li>
					</ul>
				</li>

			</ul>
		</div>
		<div class="content">
			<nav class="navbar navbar-expand-md navbar-light bg-light">
				<div class="container-fluid">
					<div class="d-flex justify-content-between d-md-none d-block">
						<button class="btn px-1 py-0 open-btn me-2">
							<i class="fa-solid fa-bars-staggered"></i>
						</button>
						<a class="navbar-brand fs-4" href="#">
							<span class="bg-dark text-white rounded shadow px-2 py-0">5</span>mart
						</a>

					</div>
					<button class="navbar-toggler p-0 border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa-solid fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item">
								<a class="nav-link active dropdown-toggle" aria-current="page" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<img class="circleImg" src="<c:choose>
						<c:when test="${not empty base64Image}">data:image/jpeg;base64,${base64Image}</c:when>
						<c:otherwise>\SpringEEIT69-5Mart\assets\images\人像頭貼001.jpg</c:otherwise>
					</c:choose>" />
								</a>
								<ul class="dropdown-menu dropdown-menu-end px-1 fs-6">
									<li class="">
										<a class="dropdown-item" href="#">
											<span>${member.account}</span>
										</a>
									</li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li class="">
										<a class="dropdown-item" href="#">
											<i class="fa-regular fa-user " style="padding: 0 8px"></i>個人檔案
										</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">
											<i class="fa-solid fa-chalkboard" style="padding: 0 6px"></i>我的學習
										</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">
											<i class="fa-regular fa-heart " style="padding: 0 7px"></i>願望清單
										</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">
											<i class="bi bi-cart3" style="padding: 0 7px"></i>購物車
										</a>
									</li>

									<li>
										<hr class="dropdown-divider">
									</li>

									<li>
										<a class="dropdown-item" href="#">
											<i class="fa-regular fa-file" style="padding: 0 9px"></i>訂單紀錄
										</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">
											<i class="bi bi-gear" style="padding: 0 7px"></i>帳戶設定
										</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">
											<i class="fa-regular fa-credit-card" style="padding: 0 6px"></i>付款方式
										</a>
									</li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li>
										<a class="dropdown-item" href="<c:url value='/logout' />">
											<i class="fa-solid fa-arrow-right-from-bracket" style="padding: 0 7px"></i>登出
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="dashboard-content px-3 pt-4">
				<h2 class="fs-5">dashboard</h2>
				<p>這裡可以填入內容</p>
				 <div class="container mt-5">
      <h1>課程名稱</h1>
      <!-- 使用 Bootstrap Grid System 進行布局 -->
      <div class="row">
        <!-- 影片播放器 -->
      <div class="col-md-8">
        <video id="videoPlayer" width="800" controls>
		  <source id="videoSource" type="video/mp4">
		</video>
      </div>
        <!-- 章節和單元的選單（手風琴） -->
					<div class="accordion" id="accordionExample">
						<c:forEach items="${courseData.chapter}" var="chapter">
							<div class="accordion-item">
								<h1 class="accordion-header">
									<button class="accordion-button collapsed fs-4" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${chapter.chapterId}" aria-expanded="false" aria-controls="collapseOne">${chapter.chapterName}</button>
								</h1>
								<div id="collapse${chapter.chapterId}" class="accordion-collapse collapse ">
									<div class="">
										<ul class="list-group list-group-flush list-unstyled">
											<c:forEach items="${chapter.unit}" var="unit">
													<li class="ms-3">
														<button class="btn btn-light d-flex w-100 justify-content-between" onclick="loadVideo('${unit.video.uuid}')">
															<div class="d-flex w-100 justify-content-between">
																<p class="mb-1">${unit.unitName}</p>
																<small>07:20</small>
															</div>
														</button>
													</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
      </div>

      <!-- Tab分頁 -->
      <div class="mt-5">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" href="#overview" data-bs-toggle="tab"
              >課程總覽</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#qa" data-bs-toggle="tab">問與答</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#reviews" data-bs-toggle="tab">評論</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="overview">
            <!-- course overview code START -->
            <div class="container">
              <div class="row">
                <div>
                  <h3 style="font-weight: bold">關於此課程</h3>
                </div>
                <div>
                  Spring Boot 3: Learn Spring 6, Spring Core, Spring REST,
                  Spring MVC, Spring Security, Thymeleaf, JPA, Hibernate, MySQL
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">依編號</div>
                <div class="col-4">
                  <div>技能等級: ${courseData.level}</div>
                  <div>學生: 333617</div>
                  <div>語言: 英語</div>
                </div>
                <div class="col-4">
                  <div>影片: 總計 31 小時</div>
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">證書</div>
                <div class="col-4">
                  <div>完成整門課程，取得 Udemy 證書</div>
                  <br />
                  <div>
                    <div class="d-grid gap-2 col-6">
                      <button type="button" class="btn btn-outline-dark">
                        Udemy 證書
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">說明</div>
                <div class="col-4">
                  <div>
					${courseData.introduction}
                  </div>
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">講師</div>
                <div class="col-4">
                  <div class="row">
                    <div class="col-3">
						<div class="w-100 mb-3 border rounded"
							<c:if test="${empty base64Image}">style="height: 357px"</c:if>>
								<figure class="figure m-0 d-flex justify-content-center">
									<img src="<c:if test="${not empty base64Image}">
									data:image/jpeg;base64,${base64Image}</c:if>"
									class="ifigure-img img-fluid rounded">
								</figure>
						</div>
                    <div class="col-8">講師名稱 ${courseData.teacher.username}</div>
                  </div>
                  <br />
                  <div class="row">
                    講師簡介 ${courseData.teacher.introduction.introductionText}
                  </div>
                </div>
              </div>
            </div>
          </div>
          </div>
          <!-- course overview code END -->
          <div class="tab-pane" id="qa">這裡是問與答。</div>
          <div class="tab-pane" id="reviews">這裡是評論。</div>

      </div>
    </div>

	<!-- CDN引入 -->
	<!-- 		<script -->
	<!-- 			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" -->
	<!-- 			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" -->
	<!-- 			crossorigin="anonymous"></script> -->
	<!-- 	<script -->
	<!-- 		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" -->
	<!-- 		integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" -->
	<!-- 		crossorigin="anonymous"></script> -->
	<!-- CDN引入 -->

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- bootstrap -->
	<script type="text/javascript">
		$(".sidebar ul li").on('click', function() {
			$(".sidebar ul li.active").removeClass('active');
			$(this).addClass('active');
		})


		$(".sidebar ul li").mouseenter(function() {
			$(this).find('.fa-solid').css("color", "#123");
			
		})

		$(".sidebar ul li").mouseleave(function() {
			$(this).find('.fa-solid').css("color", "#eee");
		})

		$(".open-btn").on('click', function() {
			$(".sidebar").addClass('active');
		})

		$(".close-btn").on('click', function() {
			$(".sidebar").removeClass('active');
		})
		
		let contextPath = '<%= request.getContextPath() %>';

function loadVideo(uuid) {
	alert("TEST")

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
$('#photoContainer').on("change", "#imgbtn", function () {
	
    image = $(this).prev().children().children()[0]
    // console.log("test"+video)
    console.log(image)

    let input = $(this)[0].files;
    // console.log(input)
    // console.log(input.length)
    if (input.length > 0) {
        let fileReader = new FileReader();

        let fileToLoad = input[0];
        console.log("fileToLoad=" + fileToLoad.name);
        fileReader.onload = function (fileLoadedEvent) {
        	image.src = fileLoadedEvent.target.result;
        };
        fileReader.readAsDataURL(fileToLoad);
    }
	
    $('#photoContainer').children().children('div').eq(1).removeAttr('style')
})
	</script>


</body>
</html>