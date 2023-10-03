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
   <div
    class="header-box ms-2 px-2 pt-3 pb-4 d-flex justify-content-between">
    <h1 class="fs-4">
     <span class="bg-white text-dark rounded shadow px-2 me-2">S</span><span
      class="text-white me-2">mart</span>
    </h1>
    <button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
     <i class="fa-solid fa-bars-staggered"></i>
    </button>
   </div>
   <ul class="list-unstyled px-2">
    <li class="active"><a
     href="<c:url value="/studentIndex"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-chart-line pe-2" style="color: #ffffff"></i>儀錶板</a>
    </li>
    <li class=""><a href="<c:url value="/studentCourseList"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>課程中心</a></li>
    <li class=""><a href="<c:url value="/studentCourseList"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>進行中課程</a></li>
    <li class=""><a href="<c:url value="/studentCourseList"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>已完成課程</a></li>
    <li class=""><a href="<c:url value="/studentNotification"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
       class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>通知中心</span><span
      class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
    <li class=""><a href="<c:url value="/studentNotification"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
       class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>系統通知</span><span
      class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
    <li class=""><a href="<c:url value="/studentNotificationQA"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
       class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>課程問與答</span><span
      class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
    <li class=""><a href="<c:url value="/studentNotificationMessage"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i
       class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>私人訊息</span><span
      class="bg-dark rounded-pill text-white py-0 px-2">02</span></a></li>
    <li class=""><a href="<c:url value="/cartServicePage"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-user pe-2" style="color: #ffffff"></i>商務中心</a></li>
    <li class=""><a href="<c:url value="/cartServicePage"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-user pe-2" style="color: #ffffff"></i>購物車</a></li>
   </ul>
   <hr class="h-color mx-2">

   <ul class="list-unstyled px-2">
    <li class="" ><a
     href="<c:url value="/profileSettingPage"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
      class="fa-solid fa-gear pe-2" style="color: #ffffff;"></i>設定</a></li>
   </ul>
   <ul class="list-unstyled px-2">
    <li class="" ><a
     href="<c:url value="/profileSettingPage"></c:url>#"
     class="text-decoration-none px-3 py-2 d-block"><i
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
						<a class="navbar-brand fs-4" href="#"><span
							class="bg-dark text-white rounded shadow px-2 py-0">5</span>mart</a>

					</div>
					<button class="navbar-toggler p-0 border-0" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fa-solid fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">profile</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="dashboard-content px-3 pt-4">
				<h2 class="fs-5">dashboard</h2>
				<p>這裡可以填入內容</p>

				<canvas class="my-4 w-100 chartjs-render-monitor" id="myChart"
					width="2000" height="500"
					style="display: block; height: 486px; width: 1152px"></canvas>
				<div class="my-3 p-3 bg-white rounded shadow-sm">
					<h6 class="border-bottom pb-2 mb-0">最新訊息</h6>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							width="32" height="32" xmlns="http://www.w3.org/2000/svg"
							role="img" aria-label="Placeholder: 32x32"
							preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%"
								fill="#007bff"></rect>
                                <text x="50%" y="50%" fill="#007bff"
								dy=".3em">32x32</text>
                            </svg>
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong> Donec
							id elit non mi porta gravida at eget metus. Fusce dapibus, tellus
							ac cursus commodo, tortor mauris condimentum nibh, ut fermentum
							massa justo sit amet risus.
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							width="32" height="32" xmlns="http://www.w3.org/2000/svg"
							role="img" aria-label="Placeholder: 32x32"
							preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%"
								fill="#e83e8c"></rect>
                                <text x="50%" y="50%" fill="#e83e8c"
								dy=".3em">32x32</text>
                            </svg>
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong> Donec
							id elit non mi porta gravida at eget metus. Fusce dapibus, tellus
							ac cursus commodo, tortor mauris condimentum nibh, ut fermentum
							massa justo sit amet risus.
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							width="32" height="32" xmlns="http://www.w3.org/2000/svg"
							role="img" aria-label="Placeholder: 32x32"
							preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%"
								fill="#6f42c1"></rect>
                                <text x="50%" y="50%" fill="#6f42c1"
								dy=".3em">32x32</text>
                            </svg>
                            <p class="pb-3 mb-0 small lh-sm border-bottom"> <strong class="d-block text-gray-dark">@username</strong> Donec id
              elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
              cursus commodo, tortor mauris condimentum nibh, ut fermentum massa
              justo sit amet risus. </p>
                        </div><small class="d-block text-end mt-3"> <a href="#">全部資訊</a> </small>
                    </div>
                    <div class="col-lg-auto pb-3" style="padding: 72px 0 0;">
                        <h1>課程總覽</h1>
                        <hr/>
                        <h4>已購買的課程</h4>
                        <div class="accordion" id="accordionPanelsStayOpenExample">
            <c:forEach var="courses" items="${course}">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading-${courses.id}">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapse-${courses.id}" aria-expanded="false"
                            aria-controls="#collapse-${courses.id}">
                            <img src="${courses.dataUri}" alt="twbs" width="48" height="48" class="rounded flex-shrink-0">
                            <div class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3">
                                <div>
                                    <h6 class="mb-0 fs-4 fw-bolder">${courses.title}</h6>
                                    <p class="mb-0 opacity-50 fw-bolder" style="color:red;">目前已有"還沒做"位學生購買課程</p>
                                </div>
                            </div>
                        </button>
                    </h2>
                    <div id="collapse-${courses.id}" class="accordion-collapse collapse"
                        aria-labelledby="heading-${courses.id}">
                        <div class="accordion-body">
                            <div class="d-flex align-items-center flex-wrap">
                                <label class="col-2">導師</label>
                                <label class="col-2">開課時間</label>
                                <label class="col-2 px-3">瀏覽課程人次</label>
                                <label class="col-2">購買課程人次</label>
                                <label class="col-2">平均評價</label>
                                <label class="col-2 ps-2">功能</label>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center flex-wrap">
                                <span class="col-2">(還沒做)</span>
                                <span class="col-2">${courses.registerTime}</span>
                                <span class="col-2 px-3">(還沒做)</span>
                                <span class="col-2 ps-2">(還沒做)</span>
                                <span class="col-2">(還沒做)</span>
                                <div class="col-2 d-flex flex-column">
                                
                                    <button class="btn btn-link m-0 ps-2" style="text-align: left;"><a href="<c:url value="/TeacherEdit/${courses.id}"/>">編輯課程</a></button>
                                    <button class="btn btn-link m-0 ps-2" style="text-align: left;">編輯影片</button>
                                    <button class="btn btn-link m-0 ps-2" style="text-align: left;" onclick="deleteCourse('${courses.id}','${courses.title}')">刪除課程</button>
                                </div>                                
                            </div>
                            <hr>
                        </div>
                    </div>
                </div>            
            </c:forEach>
				  </div>
				  111
				  <div class="row slick-card-hotcourse">
			<c:forEach items="${CourseList}" var="course">
				<a href="<c:url value='/coursePlayerPage?id=${course.id} ' />" class="text-reset text-decoration-none">
					<div class="card mx-3">
						<img src="${course.dataUri}" class="card-img-top" alt="..." />
						<div class="card-body py-0">
							<p class="card-text">
							<div class="container px-0">
								<div class="row">
									<h5 style="font-weight: bolder">
										<strong>${course.title}</strong>
									</h5>
								</div>
								<div class="row">
									<p class="mb-2" style="font-size: small">趙令文</p>
								</div>
								<div class="row d-inline ">
									<strong style="font-size: large">3.5 </strong> <i class="bi bi-star-fill px-0"></i> <i class="bi bi-star-fill px-0"></i> <i class="bi bi-star-fill px-0"></i> <i class="bi bi-star-half px-0"></i> <i class="bi bi-star px-0"></i> (123)
								</div>
								<div class="row mt-2">
									<div class="col">
										<p class="mb-0" style="font-weight: bolder; font-size: large;">NT $ ${course.price}</p>
									</div>
									<div class="col text-end">
										<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

									</div>
								</div>
							</div>
							</p>
						</div>
					</div>
				</a>
			</c:forEach>
		</div>
				  111
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
