<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<div class="header-box ms-2 px-2 pt-3 pb-4 d-flex justify-content-between">
				<h1 class="fs-4">
					<span class="bg-white text-dark rounded shadow px-2 me-2">S</span><span class="text-white me-2">mart</span>
				</h1>
				<button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
					<i class="fa-solid fa-bars-staggered"></i>
				</button>
			</div>
			<ul class="list-unstyled px-2">
				<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-chart-line pe-2" style="color: #ffffff"></i>儀錶板</a>
				</li>
				<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>課程中心</a></li>
				<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>進行中課程</a></li>
										<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>已完成課程</a></li>
				<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
							class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>通知中心</span><span
						class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
										<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
							class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>系統通知</span><span
						class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
										<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
							class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>課程問與答</span><span
						class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
									<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
							class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>私人訊息</span><span
						class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
				<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-user pe-2" style="color: #ffffff"></i>商務中心</a></li>
						<li class=""><a href="#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-user pe-2" style="color: #ffffff"></i>購物車</a></li>
			</ul>
			<hr class="h-color mx-2">
			<ul class="list-unstyled px-2">
				<li class="" style="background-color:#d9edfa"><a
					href="<c:url value="/profileSettingPage"></c:url>#"
					class="text-decoration-underline px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>設定</a></li>
			</ul>
			<ul class="list-unstyled px-2">
				<li class="" style="background-color:#405d9c"><a
					href="<c:url value="/profileSettingPage"></c:url>#"
					class="text-decoration-underline px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>個人資料設定</a></li>
			</ul>
			<ul class="list-unstyled px-2">
				<li class=""><a
					href="<c:url value="/pictureSettingPage"></c:url>#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>個人照片設定</a></li>
			</ul>
						<ul class="list-unstyled px-2">
				<li class=""><a
					href="<c:url value="/safetySettingPage"></c:url>#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>安全性</a></li>
			</ul>
						<ul class="list-unstyled px-2">
				<li class=""><a
					href="<c:url value="/privacySettingPage"></c:url>#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>隱私權</a></li>
			</ul>
						<ul class="list-unstyled px-2">
				<li class=""><a
					href="<c:url value="/paymentSettingPage"></c:url>#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>付款資訊</a></li>
			</ul>

			<ul class="list-unstyled px-2">
				<li class=""><a
					href="<c:url value="/deactivateSettingPage"></c:url>#"
					class="text-decoration-none px-3 py-2 d-block"><i
						class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>停用帳號</a></li>
			</ul>
		</div>
		<div class="content">
			<nav class="navbar navbar-expand-md navbar-light bg-light">
				<div class="container-fluid">
					<div class="d-flex justify-content-between d-md-none d-block">
						<button class="btn px-1 py-0 open-btn me-2">
							<i class="fa-solid fa-bars-staggered"></i>
						</button>
						<a class="navbar-brand fs-4" href="#"><span class="bg-dark text-white rounded shadow px-2 py-0">5</span>mart</a>

					</div>
					<button class="navbar-toggler p-0 border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa-solid fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">profile</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="dashboard-content px-3 pt-4">
				<h2 class="fs-5">個人資訊頁面</h2>
				<!--<p>這裡可以填入內容</p>-->

                                        <div class="row g-3">
                                            <div class="col-sm-6">
                                                <label for="firstName" class="form-label">名稱</label>
                                                <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                                <div class="invalid-feedback">
                                                    Valid first name is required.
        </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="lastName" class="form-label">姓氏</label>
                                                <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                                <div class="invalid-feedback">
                                                    Valid last name is required.
        </div>
                                            </div>
                                            <div class="col-12">
                                                <label for="username" class="form-label">使用者名稱</label>
                                                <div class="input-group"><span class="input-group-text">@</span>
                                                    <input type="text" class="form-control" id="username" placeholder="Username" required="">
                                                    <div class="invalid-feedback">
                                                        Your username is required.
        </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <label for="email" class="form-label">Email <span class="text-muted">(必填)</span>
                                                </label>
                                                <input type="email" class="form-control" id="email" placeholder="you@example.com">
                                                <div class="invalid-feedback">
                                                    Please enter a valid email address for shipping updates.
        </div>
                                            </div>
                                            <div class="col-12">
                                                <label for="address" class="form-label">自我介紹</label>
                                                <div class="invalid-feedback">
                                                    Please enter your shipping address.
        </div>
                                                <div class="mb-3"> 
                                                    <!-- <label for="formInput15" class="form-label">輸入</label>                                  -->
                                                    <textarea class="form-control" id="formInput15" rows="3"></textarea> 
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <label for="country" class="form-label">預設語言</label>
                                                <select class="form-select" id="country" required="">
                                                    <option value="">台灣正體中文</option>
                                                    <option>日本語</option>
                                                    <option>English</option>
                                                </select>
                                                <div class="invalid-feedback">
                                                    Please select a valid country.
        </div>
                                            </div>
                                            <div class="d-flex justify-content-center">
                                            <button class="btn btn-primary btn-lg" type="submit">儲存設定</button>
                                            
                                            </div>
                                        </div>
                                    </div>
				<!--<p>這裡可以填入內容</p>-->
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