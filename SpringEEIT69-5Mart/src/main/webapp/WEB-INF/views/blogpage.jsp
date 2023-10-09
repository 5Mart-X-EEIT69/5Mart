<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<script type="text/javascript">
	// 愛心滑鼠經過點擊變化
	var heartcount = false;
	$(".fa-heart").click(
			function() {
				if (!heartcount) {
					$(this).addClass("fa-solid").removeClass("fa-regular").css(
							"color", "#D10A0A");
					heartcount = true;
				} else {
					heartcount = false;
					$(this).addClass("fa-regular").removeClass("fa-solid").css(
							"color", "#f70000");
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
</script>
<!-- jquery -->
<!-- bootstrap -->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<link rel='stylesheet'
	href="<c:url value="
				/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />"
	type="text/css" />

<!-- bootstrap -->
<style>
/* 評價星星 */
.bi-star-fill, .bi-star-half, .bi-star {
	color: #FFC800;
}

hr {
	border: 2px solid #000; /* 設置分隔線的邊框 */
	margin: 20px 0; /* 設置分隔線的上下間距 */
}

.custom-size {
	width: 180px;
	height: 150px;
}
</style>
</head>

<body>
	<!-- 導覽列 -->
	<c:choose>
		<c:when test="${not empty member.account}"><jsp:include page="/WEB-INF/views/memberNavBar.jsp" /></c:when>
		<c:otherwise><jsp:include page="/WEB-INF/views/visitorNavBar.jsp" /></c:otherwise>
	</c:choose>
	<!-- 導覽列 -->
	<div class="container">
		<div class="row">
			<div class="col-7">
				<h6 class="pt-5">講師</h6>
				<h1>${teacher.username}</h1>
				<div class="row">
					<div class="col-3">學生總數</div>
					<div class="col">評論總數</div>
				</div>
				<div class="row">
					<div class="col-3">123</div>
					<div class="col">456</div>
				</div>
				<h5 class="my-4">關於我</h5>

				<div class="row">
					<div class="col-11">
						<c:if test="${empty introduction.introductionText}">該講師還沒有任何自我介紹哦!</c:if>
						<div>${introduction.introductionText}</div>
					</div>
				</div>

				<br>




				<div class="row">
					<div class="">
						<h4>${teacher.username}發表的課程</h4>
					</div>

				</div>
				<div class="row">
					<c:forEach items="${teacher.createCourse}" var="course">
						<div class="col-6 mb-3">
							<a href="<c:url value='/courseDetail?id=${course.id} ' />"
								class="text-reset text-decoration-none">
								<div class="card slick-slide slick-active" tabindex="0"
									role="tabpanel" id="slick-slide03"
									aria-describedby="slick-slide-control03" style="width: 306px;"
									data-slick-index="3" aria-hidden="false">
									<img class="card-img-top" style="max-height: 240px"
										src="
									<c:choose>
										<c:when test="${not empty course.dataUri}">${course.dataUri}</c:when>
										<c:otherwise>\SpringEEIT69-5Mart\assets\images\課程封面圖001.jpeg</c:otherwise>
									</c:choose>"
										alt="...">
									<div class="card-body py-0">
										<p class="card-text"></p>
										<div class="container px-0">
											<div class="row">
												<h5 style="font-weight: bolder;">
													<strong>${course.title}</strong>
												</h5>
											</div>
											<div class="row">
												<p class="mb-2" style="font-size: small;">${introduction.member.username}</p>
											</div>
											<div class="row d-inline ">
												<strong style="font-size: large;">3.5 </strong> <i
													class="bi bi-star-fill px-0"></i> <i
													class="bi bi-star-fill px-0"></i> <i
													class="bi bi-star-fill px-0"></i> <i
													class="bi bi-star-half px-0"></i> <i
													class="bi bi-star px-0"></i> (123)
											</div>
											<div class="row mt-2">
												<div class="col">
													<p class="mb-0"
														style="font-weight: bolder; font-size: large;">NT $
														${course.price}</p>
												</div>
												<div class="col text-end">
													<i class="fa-heart fa-lg fa-regular"
														style="color: #f70000;"></i>

												</div>
											</div>
										</div>

									</div>
								</div>
							</a>
						</div>
					</c:forEach>

				</div>

				<div class="row">
					<div class="">
						<h4>${teacher.username}發表的文章</h4>
					</div>

				</div>
				<div class="row slick-card-hotarticle">
					<c:forEach items="${teacher.createArticle}" var="article">
						<a href="<c:url value='/articleDetail?id=${article.id} ' />"
							class="col-6 mb-3 text-reset text-decoration-none">
							<div class="card">
								<img class="card-img-top"
									src="
									<c:choose>
										<c:when test="${not empty article.dataUri}">data:image/jpeg;base64,${article.dataUri}</c:when>
										<c:otherwise>\SpringEEIT69-5Mart\assets\images\課程封面圖001.jpeg</c:otherwise>
									</c:choose>"
									alt="...">
								<div class="card-body py-0">
									<p class="card-text">
									<div class="container px-0">
										<div class="row">
											<h5 style="font-weight: bolder;">
												<strong>${article.articleTitle }</strong>
											</h5>
										</div>
										<div class="row">
											<p class="mb-2" style="font-size: small;">點我觀看所有內容...</p>
										</div>
										<fmt:formatDate value="${article.postTime}"
											pattern="yyyy-MM-dd" var="postTime" />
										<div class="row">
											<p class="d-flex justify-content-between align-items-cente">
												<strong style="font-size: small;">${article.teacher.username }</strong>
												<span style="font-size: small;"> <i
													class="fa-regular fa-calendar-days"></i> ${postTime}
												</span> <span style="font-size: small;"> <i
													class="fa-solid fa-eye"></i> 4678
												</span> <i class="fa-regular fa-heart fa-lg mt-2"
													style="color: #f70000;"></i>
											</p>
										</div>
									</div>
									</p>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>



			<br>









			<!-- 右側排版無法對齊 -->
			<div class="col-5">

				<div class="row pt-5">
					<img class="img-fluid rounded-circle custom-size"
						src="
					<c:choose>
						<c:when test="${not empty teacher.dataUri}">data:image/jpeg;base64,${teacher.dataUri}</c:when>
						<c:otherwise>\SpringEEIT69-5Mart\assets\images\人像頭貼001.jpg</c:otherwise>
					</c:choose>"
						alt="...">
				</div>
				<br>
				<div class="row ps-1">
					<div class="col-5">專長：</div>
				</div>
				<br>
				<div class="row ps-1">
					<div class="col-5">
						<c:if test="${empty introduction.expertise}">該講師還沒有介紹自己的專長哦!</c:if>
						<div>${introduction.expertise}</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="ps-4 d-flex flex-column">
						<a href="${introduction.blog}"><button type="button"
								class="mb-2 btn btn-secondary btn-sm"
								style="width: 150px; height: 30px;">個人網站</button></a> <a
							href="${introduction.youtube}"><button type="button"
								class="mb-2 btn btn-secondary btn-sm"
								style="width: 150px; height: 30px;">Youtube</button></a> <a
							href="${introduction.facebook}"><button type="button"
								class="mb-2 btn btn-secondary btn-sm"
								style="width: 150px; height: 30px;">Facebook</button></a>

					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- bootstrap -->
	<script
		src="<c:url value=" /assets/vendor/bootstrap-5.3.1-dist/bootstrap.bundle.min.js" />"></script>
	<!-- bootstrap -->


</body>

</html>