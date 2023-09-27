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

<title>搜尋首頁(訪客)</title>

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

<!-- <script type="text/javascript"> 
 	window.onload = function() {

 		// 輪播圖相關設定
 		var myCarousel = document.querySelector('#carouselExampleIndicators')
		var carousel = new bootstrap.Carousel(myCarousel, {
 			interval : 4000, // 自動輪播的延遲時間
			pause : false
		// 滑鼠碰到圖片時，輪播不會停止;改成"hover"時，輪播會停止

 		})

 	}
 </script> -->

<script type="text/javascript">
	$(document).ready(
			function() {

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

				// 		if (heartcount) {
				// 			$(".fa-heart").click(function() {
				// 				console.log("ok");
				// 				$(this).addClass("fa-regular");
				// 				$(this).removeClass("fa-solid");
				// 				heartcount = false;
				// 			});
				// 		} else {
				// 			$(".fa-heart").mouseenter(function() {
				// 				$(this).addClass("fa-solid");
				// 				$(this).removeClass("fa-regular");
				// 			}).mouseleave(function() {
				// 				$(this).addClass("fa-regular");
				// 				$(this).removeClass("fa-solid");
				// 			}).click(function() {
				// 				$(this).addClass("fa-solid");
				// 				$(this).removeClass("fa-regular");
				// 				console.log("xx");
				// 				heartcount = true;
				// 				console.log(heartcount);
				// 			});
				// 		}

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
		<c:when test="${not empty member.account}"><jsp:include page="/WEB-INF/views/memberNavBar.jsp" /></c:when>
		<c:otherwise><jsp:include page="/WEB-INF/views/visitorNavBar.jsp" /></c:otherwise>
	</c:choose>
	<!-- 導覽列 -->
	<div>帳號 ${member.account}</div>

	<div class="container">
		<div class="row">
			<div>
				<h2 style="font-weight: bolder; margin-top: 40px;">有  ${empty keywordResult ? 0 : keywordResult.size()} 項
					『${keyword}』 結果</h2>
			</div>
		</div>
		<div class="row">
			<p class="d-flex justify-content-end py-2">
				｜ <a href="" class="nav-link">最相關</a>｜最熱門｜依人數｜依評價｜依時間｜
			</p>
		</div>
		<c:forEach items="${keywordResult}" var="result">
		<div class="row mx-3">
			<div class="card mb-3 border-light">
				<div class="row g-0 ">
					<div class="col-md-3 d-flex align-items-center">
						<img class="w-100"
							src="${result.dataUri}" alt="...">
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<h4 style="font-weight: bolder;">
									<strong>${result.title}</strong>
								</h4>
								<p class="mb-0" style="font-weight: bolder; font-size: large;">NT
									$ ${result.price}</p>
							</div>
							<div class="d-flex flex-row align-items-end">
								<p class="card-text  pe-10"
									style="font-size: small; margin-bottom: 1px; margin-right: 1em;">趙令文</p>
								<p class="card-text">
									<strong style="font-size: large;">3.5 </strong> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-half px-0"></i> <i class="bi bi-star px-0"></i>
									(123)
								</p>
							</div>
							<p class="card-text pt-2">${result.introduction}</p>

							<div class="col"></div>
							<div class="col text-end">
								<i class="fa-solid fa-cart-shopping px-2"></i> <i
									class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>

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