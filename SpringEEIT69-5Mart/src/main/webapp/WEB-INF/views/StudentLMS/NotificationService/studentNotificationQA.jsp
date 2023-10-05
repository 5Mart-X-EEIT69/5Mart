<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 響應式的引入 -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 響應式的引入 -->

<title>教師導覽列</title>

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

</head>

<body>
	<div class="main-container d-flex">
		<div class="sidebar" id="side_nav">
			<div
				class="header-box ms-2 px-2 pt-3 pb-4 d-flex justify-content-between">
			<a href="<c:url value="/homepage"></c:url>" class="text-decoration-none">
				<h1 class="fs-4">
					<span class="bg-white text-dark rounded shadow px-2 me-2">S</span><span class="text-white me-2">mart</span>
				</h1>
				</a>
				<button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
					<i class="fa-solid fa-bars-staggered"></i>
				</button>
			</div>
			<ul class="list-unstyled px-2">
				<li class="my-1"><a
					href="<c:url value="/studentIndex"></c:url>#sublist"
					class="text-decoration-none px-3 py-2 d-block "> <i
						class="fa-solid fa-tv pe-3" style="color: #ffffff;"></i>Dashboard
				</a> <%-- <ul id="sublist" class="list-unstyled collapse">
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
					</ul> --%></li>
				<li class="my-1"><a
					href="<c:url value="/studentCourseList"></c:url>#sublist1"
					class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between ">
						<span><i class="fa-solid fa-pencil pe-3"
							style="color: #ffffff;"></i>課程中心</span><span
						class="bg-dark rounded-pill text-white py-0 px-2">01</span>
				</a> <!-- <ul id="sublist1" class="list-unstyled collapse">
						<li>
							<a href="" class="text-decoration-none ps-4">問與答</a>
						</li>
						<li>
							<a href="" class="text-decoration-none ps-4">訊息</a>
						</li>
						<li>
							<a href="" class="text-decoration-none ps-4">公告</a>
						</li>
					</ul> --></li>
				<li class="active my-1"><a
					href="<c:url value="/studentNotification"></c:url>#sublist2"
					data-bs-toggle="collapse" id="dropdown"
					class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between ">
						<span><i class="fa-solid fa-comment pe-3"
							style="color: #ffffff;"></i>通知中心</span><span
						class="bg-dark rounded-pill text-white py-0 px-2">06</span>
				</a>
					<ul id="sublist2" class="list-unstyled collapse">
						<li><a href="<c:url value="/studentNotification"></c:url>"
							class="active text-decoration-none ps-4">系統通知</a></li>
						<li><a href="<c:url value="/studentNotificationQA"></c:url>"
							class="active text-decoration-none ps-4">課程問與答</a></li>
						<li><a
							href="<c:url value="/studentNotificationMessage"></c:url>"
							class="text-decoration-none ps-4">私人訊息</a></li>
					</ul></li>
				<li class="my-1"><a href="#sublist3" data-bs-toggle="collapse"
					id="dropdown" class="text-decoration-none px-3 py-2 d-block"> <i
						class="fa-solid fa-truck-fast pe-2" style="color: #ffffff;"></i>商務中心
				</a>
					<ul id="sublist3" class="list-unstyled collapse">
						<li><a href="<c:url value="/cartServicePage"></c:url>"
							class="text-decoration-none ps-4">購物車</a></li>
					</ul></li>

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
				<li class=""><a
					href="<c:url value="/profileSettingPage"></c:url>#sublist4"
					data-bs-toggle="collapse" id="dropdown"
					class="text-decoration-none px-3 py-2 d-block"> <i
						class="fa-solid fa-gear pe-3" style="color: #ffffff;"></i>設定
				</a>
					<ul id="sublist4" class="list-unstyled collapse">
						<li><a href="<c:url value="/profileSettingPage"></c:url>"
							class="text-decoration-none ps-4">帳號資料</a></li>
						<li><a href="<c:url value="/pictureSettingPage"></c:url>"
							class="text-decoration-none ps-4">帳號照片</a></li>
						<li><a href="<c:url value="/safetySettingPage"></c:url>"
							class="text-decoration-none ps-4">安全性</a></li>
						<li><a href="<c:url value="/privacySettingPage"></c:url>"
							class="text-decoration-none ps-4">隱私權</a></li>
						<li><a href="<c:url value="/paymentSettingPage"></c:url>"
							class="text-decoration-none ps-4">付款資訊</a></li>
						<li><a href="<c:url value="/deactivateSettingPage"></c:url>"
							class="text-decoration-none ps-4">停用帳號</a></li>
					</ul></li>

			</ul>
		</div>
		<div class="content">
			<nav class="navbar navbar-expand-md navbar-light bg-light">
				<div class="container-fluid">
					<div class="d-flex justify-content-between d-md-none d-block">
						<button class="btn px-1 py-0 open-btn me-2">
							<i class="fa-solid fa-bars-staggered"></i>
						</button>
						<a class="navbar-brand fs-4" href="#"> <span
							class="bg-dark text-white rounded shadow px-2 py-0">5</span>mart
						</a>

					</div>
					<button class="navbar-toggler p-0 border-0" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fa-solid fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item"><a
								class="nav-link active dropdown-toggle" aria-current="page"
								href="#" id="navbarDropdown" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> <img
									class="circleImg"
									src="<c:choose>
						<c:when test="${not empty base64Image}">data:image/jpeg;base64,${base64Image}</c:when>
						<c:otherwise>\SpringEEIT69-5Mart\assets\images\人像頭貼001.jpg</c:otherwise>
					</c:choose>" />
							</a>
								<ul class="dropdown-menu dropdown-menu-end px-1 fs-6">
									<li class=""><a class="dropdown-item" href="#"> <span>${member.account}</span>
									</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li class=""><a class="dropdown-item" href="#"> <i
											class="fa-regular fa-user " style="padding: 0 8px"></i>個人檔案
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="fa-solid fa-chalkboard" style="padding: 0 6px"></i>我的學習
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="fa-regular fa-heart " style="padding: 0 7px"></i>願望清單
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="bi bi-cart3" style="padding: 0 7px"></i>購物車
									</a></li>

									<li>
										<hr class="dropdown-divider">
									</li>

									<li><a class="dropdown-item" href="#"> <i
											class="fa-regular fa-file" style="padding: 0 9px"></i>訂單紀錄
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="bi bi-gear" style="padding: 0 7px"></i>帳戶設定
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="fa-regular fa-credit-card" style="padding: 0 6px"></i>付款方式
									</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item"
										href="<c:url value='/logout' />"> <i
											class="fa-solid fa-arrow-right-from-bracket"
											style="padding: 0 7px"></i>登出
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="dashboard-content px-3 pt-4">
				<h1 class="fs-5">Dashboard</h1>
				<!-- 				<p>這裡可以填入內容</p> -->

				<h1>問與答</h1>
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingOne">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseOne"
								aria-expanded="false" aria-controls="panelsStayOpen-collapseOne">

								<img src="<c:url value="/assets/images/godtone.jpg" />"
									alt="godtone" width="48" height="48"
									class="rounded flex-shrink-0">
								<div
									class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3">
									<div>
										<h6 class="mb-0 fs-4 fw-bolder">JAVA從入門到放棄</h6>
										<p class="mb-0 opacity-50 fw-bolder" style="color: red;">目前有三個問與答尚未回覆</p>
									</div>
								</div>
							</button>
						</h2>
						<div id="panelsStayOpen-collapseOne"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingOne">
							<div class="accordion-body">
								<div class="d-flex align-items-center flex-wrap">
									<label class="col-1">問題</label> <label class="col-1">發問人</label>
									<label class="col-1">發問時間</label> <label class="col-5 px-3">內容</label>
									<label class="col-3">回覆內容</label> <label class="col-1 ps-2">功能</label>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">1</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">尚未回覆</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">2</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">尚未回覆</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">3</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">尚未回覆</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
								<hr>
							</div>
						</div>
					</div>

					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseTwo"
								aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
								<img src="<c:url value="/assets/images/godtone.jpg" />"
									alt="godtone" width="48" height="48"
									class="rounded flex-shrink-0">
								<div
									class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3">
									<div>
										<h6 class="mb-0 fs-4 fw-bolder">JAVA從入門到放棄</h6>
										<p class="mb-0 opacity-50 fw-bolder" style="color: red;">目前有兩個問與答尚未回覆</p>
									</div>
								</div>
							</button>
						</h2>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body">
								<div class="d-flex align-items-center flex-wrap">
									<label class="col-1">問題</label> <label class="col-1">發問人</label>
									<label class="col-1">發問時間</label> <label class="col-5 px-3">內容</label>
									<label class="col-3">回覆內容</label> <label class="col-1 ps-2">功能</label>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">1</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">尚未回覆</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">2</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">尚未回覆</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">3</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹你從桃園新竹</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
							</div>
						</div>
					</div>

					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingThree">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseThree"
								aria-expanded="false"
								aria-controls="panelsStayOpen-collapseThree">
								<img src="<c:url value="/assets/images/godtone.jpg" />"
									alt="godtone" width="48" height="48"
									class="rounded flex-shrink-0">
								<div
									class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3">
									<div>
										<h6 class="mb-0 fs-4 fw-bolder">JAVA從入門到放棄</h6>
										<p class="mb-0 opacity-50 fw-bolder" style="color: red;">目前有一個問與答尚未回覆</p>
									</div>
								</div>
							</button>
						</h2>
						<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body">
								<div class="d-flex align-items-center flex-wrap">
									<label class="col-1">問題</label> <label class="col-1">發問人</label>
									<label class="col-1">發問時間</label> <label class="col-5 px-3">內容</label>
									<label class="col-3">回覆內容</label> <label class="col-1 ps-2">功能</label>
								</div>
								<hr>
								<div class="d-flex align-items-center flex-wrap">
									<span class="col-1 ps-2">1</span> <span class="col-1">張嘉航</span>
									<span class="col-1">2023/9/15</span> <span class="col-5 px-3">你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句你先聽我講一句</span>
									<span class="col-3">尚未回覆</span>
									<button class="col-1 btn btn-link m-0 ps-2"
										style="text-align: left;">回覆</button>
								</div>
								<hr>
							</div>
						</div>
					</div>


					<!-- 				<p>這裡可以填入內容</p> -->
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
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