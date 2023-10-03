<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 響應式的引入 -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 響應式的引入 -->

<title>學生管理首頁</title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->

<!-- bootstrap 公版-->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />

<!-- <link rel='stylesheet' -->
<%-- 	href="<c:url value=" --%>
<%-- 				/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />" --%>
<!-- 	type="text/css" /> -->
<!-- bootstrap 公版-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- google fonts的icon庫引入 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
<!-- google fonts的icon庫引入 -->

<!-- font awesome的icon庫引入 -->
<script src="https://kit.fontawesome.com/7ae43304d6.js"
	crossorigin="anonymous"></script>
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


<link rel='stylesheet'
	href="<c:url value='/assets/css/teacherNavBar.css' />" type="text/css" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@600&family=Noto+Serif+TC:wght@200;700&display=swap"
	rel="stylesheet">


<style type="text/css">
</style>

</head>

<body>
	<div class="main-container d-flex">
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
				<li class="my-1">
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
				<li class="my-1 active">
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
                    <div class="col-lg-auto pb-3" style="padding: 72px 0 0;"></div>
				  111
					<div class="col-2 border rounded max-vh-100" style="overflow-y: scroll;">
			<div class="my-2">
				<h4 class="ps-3">私人訊息</h4>
				<div class="list-group">
					<a href="#"	class="list-group-item list-group-item-action active d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
				</div>
			</div>
		</div>
				<div class="col-6">
			<div style="overflow-y: scroll; max-height: 95vh;">
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">08:41</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer own">
						<img class="inlineIcon"
							src="https://www.pinclipart.com/picdir/middle/205-2059398_blinkk-en-mac-app-store-ninja-icon-transparent.png">
						<div class="ownBubble own">都是抄來的</div>
					</div>
					<span class="own">08:55</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">全部都是抄來的</div>
					</div>
					<span class="other">10:13</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer own">
						<img class="inlineIcon"
							src="https://www.pinclipart.com/picdir/middle/205-2059398_blinkk-en-mac-app-store-ninja-icon-transparent.png">
						<div class="ownBubble own">抄來的</div>
					</div>
					<span class="own">11:07</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer own">
						<img class="inlineIcon"
							src="https://www.pinclipart.com/picdir/middle/205-2059398_blinkk-en-mac-app-store-ninja-icon-transparent.png">
						<div class="ownBubble own">都是抄來的</div>
					</div>
					<span class="own">12:12</span>
				</div>
			</div>
			<div class="input-group" style="min-height: 5vh">
				<input type="text" class="form-control" aria-describedby="send">
				<button class="btn btn-outline-secondary" type="button"	id="send">送出</button>
			</div>
		</div>

									</div>
				  111

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
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
			integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
			integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
			integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
			integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
			crossorigin="anonymous"></script>
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
		</script>
		<script>
			/* globals Chart:false, feather:false */

			(
					function() {
						'use strict'

						feather.replace()

						// Graphs
						var ctx = document.getElementById('myChart')
						// eslint-disable-next-line no-unused-vars
						var myChart = new Chart(ctx, {
							type : 'line',
							data : {
								labels : [ 'Sunday', 'Monday', 'Tuesday',
										'Wednesday', 'Thursday', 'Friday',
										'Saturday' ],
								datasets : [ {
									data : [ 15339, 21345, 18483, 24003, 23489,
											24092, 12034 ],
									lineTension : 0,
									backgroundColor : 'transparent',
									borderColor : '#007bff',
									borderWidth : 4,
									pointBackgroundColor : '#007bff'
								} ]
							},
							options : {
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : false
										}
									} ]
								},
								legend : {
									display : false
								}
							}
						})
					})()
		</script>
</body>
</html>