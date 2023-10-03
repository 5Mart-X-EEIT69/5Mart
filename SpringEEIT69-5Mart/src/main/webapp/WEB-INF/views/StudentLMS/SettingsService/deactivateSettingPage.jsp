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

<title>5Mart線上教學平台</title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->

<!-- bootstrap 公版-->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
				<li class="active my-1">
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
						<i class="fa-solid fa-gear pe-3" style="color: #ffffff;"></i>設定
					</a>
					<ul id="sublist4" class="list-unstyled collapse">
						<li>
							<a href="<c:url value="/pictureSettingPage"></c:url>" class="text-decoration-none ps-4">個人資料設定</a>
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

			<div class="dashboard-content px-3 my-3">
				${member.account}
				<h2>停用帳號頁面</h2>
				<hr>
				<div class="d-flex justify-content-center mt-5">
					<button type="button" class="btn btn-danger btn-lg"
						data-toggle="modal" data-target="#myModal">停用帳號</button>
				</div>
			</div>
			<!-- 弹出式模态框 -->
			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- 模态框内容 -->
						<div class="modal-body">
							<div class="row">
								<div class="col-11">
									<h4>警告</h4>
								</div>
								<div class="col-1">
									<button type="button" class="btn-close" aria-label="Close"></button>
								</div>
							</div>
							<p>停用帳號會無法保留已購買的課程</p>
						</div>



						<!-- 模态框底部的关闭按钮 -->
						<div class="modal-footer">
							<button type="submit" class="btn btn-danger btn-lg"
								data-dismiss="modal">停用</button>
						</div>
					</div>
				</div>
			</div>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
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


</body>
</html>