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

<title>訪客首頁</title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->

<!-- bootstrap 公版-->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />

<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />"
	type="text/css" />
<!-- bootstrap 公版-->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"> -->

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

<!-- slick -->
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<!-- slick -->

<link rel='stylesheet'
	href="<c:url value='/assets/css/visitorHomePage.css' />"
	type="text/css" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@600&family=Noto+Serif+TC:wght@200;700&display=swap"
	rel="stylesheet">


<style type="text/css">
</style>

</head>

<script type="text/javascript">
	$(document).ready(
			function() {
				// 輪播圖相關設定
				var myCarousel = document
						.querySelector("#carouselExampleIndicators");
				var carousel = new bootstrap.Carousel(myCarousel, {
					interval : 4000, // 自動輪播的延遲時間
					pause : false,
				// 滑鼠碰到圖片時，輪播不會停止;改成"hover"時，輪播會停止
				});

				$(".slick-card-hotcourse").slick({
					dots : true, // 顯示圓點指示器
					infinite : false, // 無限循環滑動
					prevArrow : '.arrow-prev-hotcourse',
					nextArrow : '.arrow-next-hotcourse',
					speed : 300,
					slidesToShow : 4,
					responsive : [ {
						breakpoint : 768,
						settings : {
							slidesToShow : 1,
						},
					}, {
						breakpoint : 500,
						settings : {
							slidesToShow : 2,
						},
					}, ],
				});

				$(".slick-card-crowdfundingcourse").slick({
					dots : true, // 顯示圓點指示器
					infinite : false, // 無限循環滑動
					prevArrow : '.arrow-prev-crowdfundingcourse',
					nextArrow : '.arrow-next-crowdfundingcourse',
					speed : 300,
					slidesToShow : 4,
					responsive : [ {
						breakpoint : 768,
						settings : {
							slidesToShow : 1,
						},
					}, {
						breakpoint : 500,
						settings : {
							slidesToShow : 2,
						},
					}, ],
				});

				$(".slick-card-hotarticle").slick({
					dots : true, // 顯示圓點指示器
					infinite : false, // 無限循環滑動
					prevArrow : '.arrow-prev-hotarticle',
					nextArrow : '.arrow-next-hotarticle',
					speed : 300,
					slidesToShow : 3,
					responsive : [ {
						breakpoint : 768,
						settings : {
							slidesToShow : 1,
						},
					}, {
						breakpoint : 500,
						settings : {
							slidesToShow : 2,
						},
					}, ],
				});

				$(".card").mouseenter(function() {
					$(this).addClass("shadow");
				}).mouseleave(function() {
					$(this).removeClass("shadow")
				});

				// 愛心滑鼠經過點擊變化
				var heartcount = false;
				$(".fa-heart").click(
						function() {
							if (!heartcount) {
								$(this).addClass("fa-solid").removeClass(
										"fa-regular").css("color", "#D10A0A");
								heartcount = true;
							} else {
								heartcount = false;
								$(this).addClass("fa-regular").removeClass(
										"fa-solid").css("color", "#f70000");
							}
						})

				$(".fa-heart").mouseenter(function() {
					if (!heartcount) {
						$(this).addClass("fa-solid").removeClass("fa-regular");
					}
				})

				$(".fa-heart").mouseleave(function() {
					if (!heartcount) {
						$(this).addClass("fa-regular").removeClass("fa-solid");
					}
				})

				// 回到頂部的按鈕顯示和消失
				$(window).scroll(function() {
					if ($(window).scrollTop() > 300) {
						$('#return-top').fadeIn(300);
					} else {
						$('#return-top').fadeOut(200);
					}
				})

				// 點擊回到頂部按鈕，回到頁面頂部
				$("#return-top").click(function() {
					scrollTo(0, 0);
				});

			});
</script>

<body>
	<!-- 導覽列 -->
	<c:choose>
		<c:when test="${not empty member.account}"><jsp:include
				page="/WEB-INF/views/memberNavBar.jsp" /></c:when>
		<c:otherwise><jsp:include
				page="/WEB-INF/views/visitorNavBar.jsp" /></c:otherwise>
	</c:choose>
	<!-- 導覽列 -->
	<div>帳號 ${member.account}</div>

	<!-- 輪播圖 -->
	<div class="container mb-5">
		<div class="row">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-bs-ride="carousel" data-bs-interval="500">
				<div class="carousel-indicators">
					<!-- 輪播圖底下小白框的部分 -->
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="3" aria-label="Slide 4"></button>
				</div>
				<div class="carousel-inner">
					<!-- 輪播圖片的部分 -->
					<div class="carousel-item active">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖002.jpg"
							class="d-block w-100 " alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg"
							class="d-block w-100 " alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖010.jpeg"
							class="d-block w-100 " alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖001.jpeg"
							class="d-block w-100 " alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>
	<!-- 輪播圖 -->
	<!-- 熱門課程區塊(水平滾動) -->
	<div class="container mb-5" style="position: relative;">
		<div class="row mb-2">
			<div class="col-10">
				<h4>
					<strong>熱門課程</strong>
				</h4>
			</div>
			<div class="col-2">
				<div class="text-end">
					<div>
						<a href="" style="text-decoration: none">更多 ></a>
					</div>
				</div>
			</div>
		</div>

		<div class="row slick-card-hotcourse">
			<c:forEach items="${allCourse}" var="course">
				<a href="<c:url value='/courseDetail?id=${course.id} ' />"
					class="text-reset text-decoration-none">
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
									<strong style="font-size: large">3.5 </strong> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-half px-0"></i> <i class="bi bi-star px-0"></i>
									(123)
								</div>
								<div class="row mt-2">
									<div class="col">
										<p class="mb-0" style="font-weight: bolder; font-size: large;">NT
											$ ${course.price}</p>
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

		<div class="arrow-next-hotcourse slick-rightbtn">
			<span> <i class="fa-solid fa-chevron-right"></i>
			</span>
		</div>
		<div class="arrow-prev-hotcourse slick-leftbtn">
			<span> <i class="fa-solid fa-chevron-left"></i>
			</span>
		</div>
	</div>

	<!-- 熱門課程區塊(水平滾動) -->

	<!-- 募資課程區塊(水平滾動) -->
	<div class="container mb-5" style="position: relative;">
		<div class="row mb-2">
			<div class="col-10">
				<h4>
					<strong>募資課程</strong>
				</h4>
			</div>
			<div class="col-2">
				<div class="text-end">
					<div>
						<a href="" style="text-decoration: none">更多 ></a>
					</div>
				</div>
			</div>
		</div>

		<div class="row slick-card-crowdfundingcourse">
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖001.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>Java從零開始學習</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">趙令文</p>
						</div>
						<div class="row d-flex justify-content-between">
							<div class="col-7" style="font-size: small; font-weight: bolder">募資倒數10天</div>
							<div class="col-4 text-end"
								style="font-size: small; font-weight: bolder">25%</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="progress px-0" style="width: 90%; height: 0.5rem">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="row pt-3">
							<div class="col">
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT$2,000</p>
								<p class="mb-0 text-decoration-line-through"
									style="font-weight: bolder; color: grey; font-size: small;">NT
									$4,000</p>

							</div>
							<div class="col-4 text-end">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
					</p>
				</div>
			</div>
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>Java從零開始學習</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">趙令文</p>
						</div>
						<div class="row d-flex justify-content-between">
							<div class="col-7" style="font-size: small; font-weight: bolder">募資倒數10天</div>
							<div class="col-4 text-end"
								style="font-size: small; font-weight: bolder">25%</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="progress px-0" style="width: 90%; height: 0.5rem">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="row pt-3">
							<div class="col">
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT$2,000</p>
								<p class="mb-0 text-decoration-line-through"
									style="font-weight: bolder; color: grey; font-size: small;">NT
									$4,000</p>

							</div>
							<div class="col-4 text-end">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
					</p>
				</div>
			</div>
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>Java從零開始學習</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">趙令文</p>
						</div>
						<div class="row d-flex justify-content-between">
							<div class="col-7" style="font-size: small; font-weight: bolder">募資倒數10天</div>
							<div class="col-4 text-end"
								style="font-size: small; font-weight: bolder">25%</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="progress px-0" style="width: 90%; height: 0.5rem">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="row pt-3">
							<div class="col">
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT$2,000</p>
								<p class="mb-0 text-decoration-line-through"
									style="font-weight: bolder; color: grey; font-size: small;">NT
									$4,000</p>

							</div>
							<div class="col-4 text-end">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
					</p>
				</div>
			</div>
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖004.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>Java從零開始學習</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">趙令文</p>
						</div>
						<div class="row d-flex justify-content-between">
							<div class="col-7" style="font-size: small; font-weight: bolder">募資倒數10天</div>
							<div class="col-4 text-end"
								style="font-size: small; font-weight: bolder">25%</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="progress px-0" style="width: 90%; height: 0.5rem">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="row pt-3">
							<div class="col">
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT$2,000</p>
								<p class="mb-0 text-decoration-line-through"
									style="font-weight: bolder; color: grey; font-size: small;">NT
									$4,000</p>

							</div>
							<div class="col-4 text-end">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
					</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>Java從零開始學習</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">趙令文</p>
						</div>
						<div class="row d-flex justify-content-between">
							<div class="col-7" style="font-size: small; font-weight: bolder">募資倒數10天</div>
							<div class="col-4 text-end"
								style="font-size: small; font-weight: bolder">25%</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="progress px-0" style="width: 90%; height: 0.5rem">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="row pt-3">
							<div class="col">
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT$2,000</p>
								<p class="mb-0 text-decoration-line-through"
									style="font-weight: bolder; color: grey; font-size: small;">NT
									$4,000</p>

							</div>
							<div class="col-4 text-end">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
					</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖011.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>Java從零開始學習</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">趙令文</p>
						</div>
						<div class="row d-flex justify-content-between">
							<div class="col-7" style="font-size: small; font-weight: bolder">募資倒數10天</div>
							<div class="col-4 text-end"
								style="font-size: small; font-weight: bolder">25%</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="progress px-0" style="width: 90%; height: 0.5rem">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="row pt-3">
							<div class="col">
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT$2,000</p>
								<p class="mb-0 text-decoration-line-through"
									style="font-weight: bolder; color: grey; font-size: small;">NT
									$4,000</p>

							</div>
							<div class="col-4 text-end">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
					</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖012.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body">
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖007.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body">
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="arrow-next-crowdfundingcourse slick-rightbtn">
			<span> <i class="fa-solid fa-chevron-right"></i>
			</span>
		</div>
		<div class="arrow-prev-crowdfundingcourse slick-leftbtn">
			<span> <i class="fa-solid fa-chevron-left"></i>
			</span>
		</div>
	</div>
	<!-- 募資課程區塊(水平滾動) -->

	<!-- 熱門類別 -->
	<div class="container mb-5" id="paragraphTitle">
		<div class="row mb-2">
			<div class="col-10">
				<h4>
					<strong>熱門類別</strong>
				</h4>
			</div>
			<div class="col-2">
				<div class="text-end">
					<div>
						<a href="" style="text-decoration: none">更多 ></a>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=語言' />" role="button">語言</a>

			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=開發' />" role="button">開發</a>
			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=行銷' />" role="button">行銷</a>

			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=投資理財' />" role="button">投資理財</a>
			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=音樂' />" role="button">音樂</a>

			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=攝影' />" role="button">攝影</a>

			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=設計' />" role="button">設計</a>

			</div>
			<div class="col-6 col-md-3 mb-3">
				<a class="w-100 btn btn-outline-secondary btn-lg btnClass"
					href="<c:url value='/searchsort?sort=職場技能' />" role="button">職場技能</a>
			</div>
		</div>
	</div>
	<!-- 熱門類別 -->

	<!-- 精選文章區塊(水平滾動) -->
	<div class="container mb-5" style="position: relative;">
		<div class="row mb-2">
			<div class="col-10">
				<h4>
					<strong>精選文章</strong>
				</h4>
			</div>
			<div class="col-2">
				<div class="text-end">
					<div>
						<a href="" style="text-decoration: none">更多 ></a>
					</div>
				</div>
			</div>
		</div>

		<div class="row slick-card-hotarticle">
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖001.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>給Java初學者的建議，這樣學一定會變成大師！</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">在一開始學習Java時，有幾點需要特別注意...</p>
						</div>
						<div class="row">
							<p class="d-flex justify-content-between align-items-cente">
								<strong style="font-size: small;">趙令文 </strong> <span
									style="font-size: small;"><i
									class="fa-regular fa-calendar-days"></i> 2023/08/20</span><span
									style="font-size: small;"><i class="fa-solid fa-eye"></i>
									4678</span> <i class="fa-regular fa-heart fa-lg mt-2"
									style="color: #f70000;"></i>
							</p>
						</div>
					</div>
					</p>
				</div>
			</div>
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>給Java初學者的建議，這樣學一定會變成大師！</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">在一開始學習Java時，有幾點需要特別注意...</p>
						</div>
						<div class="row">
							<p class="d-flex justify-content-between align-items-cente">
								<strong style="font-size: small;">趙令文 </strong> <span
									style="font-size: small;"><i
									class="fa-regular fa-calendar-days"></i> 2023/08/20</span><span
									style="font-size: small;"><i class="fa-solid fa-eye"></i>
									4678</span> <i class="fa-regular fa-heart fa-lg mt-2"
									style="color: #f70000;"></i>
							</p>
						</div>
					</div>
					</p>
				</div>
			</div>
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>給Java初學者的建議，這樣學一定會變成大師！</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">在一開始學習Java時，有幾點需要特別注意...</p>
						</div>
						<div class="row">
							<p class="d-flex justify-content-between align-items-cente">
								<strong style="font-size: small;">趙令文 </strong> <span
									style="font-size: small;"><i
									class="fa-regular fa-calendar-days"></i> 2023/08/20</span><span
									style="font-size: small;"><i class="fa-solid fa-eye"></i>
									4678</span> <i class="fa-regular fa-heart fa-lg mt-2"
									style="color: #f70000;"></i>
							</p>
						</div>
					</div>
					</p>
				</div>
			</div>
			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖004.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>給Java初學者的建議，這樣學一定會變成大師！</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">在一開始學習Java時，有幾點需要特別注意...</p>
						</div>
						<div class="row">
							<p class="d-flex justify-content-between align-items-cente">
								<strong style="font-size: small;">趙令文 </strong> <span
									style="font-size: small;"><i
									class="fa-regular fa-calendar-days"></i> 2023/08/20</span><span
									style="font-size: small;"><i class="fa-solid fa-eye"></i>
									4678</span> <i class="fa-regular fa-heart fa-lg mt-2"
									style="color: #f70000;"></i>
							</p>
						</div>
					</div>
					</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body py-0">
					<p class="card-text">
					<div class="container px-0">
						<div class="row">
							<h5 style="font-weight: bolder;">
								<strong>給Java初學者的建議，這樣學一定會變成大師！</strong>
							</h5>
						</div>
						<div class="row">
							<p class="mb-2" style="font-size: small;">在一開始學習Java時，有幾點需要特別注意...</p>
						</div>
						<div class="row">
							<p class="d-flex justify-content-between align-items-cente">
								<strong style="font-size: small;">趙令文 </strong> <span
									style="font-size: small;"><i
									class="fa-regular fa-calendar-days"></i> 2023/08/20</span><span
									style="font-size: small;"><i class="fa-solid fa-eye"></i>
									4678</span> <i class="fa-regular fa-heart fa-lg mt-2"
									style="color: #f70000;"></i>
							</p>
						</div>
					</div>
					</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖011.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body">
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖012.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body">
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>

			<div class="card mx-3">
				<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖007.jpeg"
					class="card-img-top" alt="..." />
				<div class="card-body">
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="arrow-next-hotarticle slick-rightbtn">
			<span> <i class="fa-solid fa-chevron-right"></i>
			</span>
		</div>
		<div class="arrow-prev-hotarticle slick-leftbtn">
			<span> <i class="fa-solid fa-chevron-left"></i>
			</span>
		</div>
	</div>
	<!-- 精選文章區塊(水平滾動) -->

	<div id="return-top" class="top_e shadow-sm">
		<i class="fa-solid fa-angle-up fa-2xl" style="color: #919191;"></i>
		<!-- 				<i class="fa-solid fa-angle-up fa-xl "></i> -->
	</div>


	<!-- 最底部 -->
	<footer class="bd-footer py-5 mt-5 bg-light">
		<div class="container">
			<div class="row">
				<div class="col-12 d-flex justify-content-center align-items-center">
					<i class="fa-solid fa-graduation-cap fa-xl px-2"></i>

					<h4 class="d-inline mb-0">5mart</h4>
				</div>

			</div>
			<hr>
			<div class="row">
				<div
					class="col-12 d-flex justify-content-center align-items-center mt-2">
					<div>
						<i class="fa-brands fa-java fa-2xl px-2" style="color: #0b6cb0;"></i>
						<i class="fa-brands fa-html5 fa-2xl px-2" style="color: #de4b25;"></i>
						<i class="fa-brands fa-css3-alt fa-2xl px-2"
							style="color: #254bdd;"></i> <i
							class="fa-brands fa-js fa-2xl px-2" style="color: #e8d44d;"></i>
						<i class="fa-brands fa-bootstrap fa-2xl px-2"
							style="color: #6d10f3;"></i>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- 最底部 -->


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
	<!-- slick -->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<!-- slick -->



</body>
</html>