<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>課程資訊</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->
<!-- bootstrap -->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<script
	src="<c:url value="/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.js"/>"></script>

<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->

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
</head>
<script type="text/javascript">
	$(document).ready(
			// 愛心滑鼠經過點擊變化
			var heartcount = false;
			$("fa-heart").click(
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

			$("fa-heart").mouseenter(function() {
				if (!heartcount) {
					$(this).addClass("fa-solid").removeClass("fa-regular");
				}
			})

			$("fa-heart").mouseleave(function() {
				if (!heartcount) {
					$(this).addClass("fa-regular").removeClass("fa-solid");
				}
			})
			</script>
<style>
/* 評價星星 */
.bi-star-fill, .bi-star-half, .bi-star {
	color: #FFC800;
}

.hrBorder {
	border: 2px solid #000; /* 設置分隔線的邊框 */
	margin: 20px 0; /* 設置分隔線的上下間距 */
}
</style>
<body>
	<!-- 導覽列 -->
	<c:choose>
		<c:when test="${not empty member.account}"><jsp:include
				page="/WEB-INF/views/memberNavBar.jsp" /></c:when>
		<c:otherwise><jsp:include
				page="/WEB-INF/views/visitorNavBar.jsp" /></c:otherwise>
	</c:choose>
	<!-- 導覽列 -->
	<!-- 	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<a class="navbar-brand" href="#!">5Mart線上學習平台</a> -->
	<!-- 			<button class="navbar-toggler" type="button" -->
	<!-- 				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" -->
	<!-- 				aria-controls="navbarSupportedContent" aria-expanded="false" -->
	<!-- 				aria-label="Toggle navigation"> -->
	<!-- 				<span class="navbar-toggler-icon"></span> -->
	<!-- 			</button> -->
	<!-- 			<div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
	<!-- 				<ul class="navbar-nav ms-auto mb-2 mb-lg-0"> -->
	<!-- 					<li class="nav-item"><a class="nav-link" href="#">Home</a></li> -->
	<!-- 					<li class="nav-item"><a class="nav-link" href="#!">About</a></li> -->
	<!-- 					<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li> -->
	<!-- 					<li class="nav-item"><a class="nav-link active" -->
	<!-- 						aria-current="page" href="#">Blog</a></li> -->
	<!-- 				</ul> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</nav> -->
	<!-- Post header-->
	<header class="mb-4">
		<!-- Post title-->
		<h1 class="fw-bolder mb-1"></h1>

	</header>
	<!-- Page content -->
	<div class="container mt-5">
		<div class="row">
			<div class="col-lg-8">
				<!-- Post content-->
				<article>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="<c:url value='/homepage' />">首頁</a></li>
							<li class="breadcrumb-item"><a
								href="<c:url value='/searchsort?sort=${courseData.sort}' />">${courseData.sort}</a></li>
							<li class="breadcrumb-item active" aria-current="page">${courseData.title}</li>
						</ol>
					</nav>
					<div class="row gx-4 gx-lg-5 align-items-center my-5">
						<div class="col-lg-7">
							<img class="img-fluid rounded mb-4 mb-lg-0"
								src="${courseData.dataUri}" alt="...">
						</div>
						<div class="col-lg-5">
							<div class="container px-0">
								<div class="row">
									<h1 style="font-weight: bolder;">
										<strong>${courseData.title}</strong>
									</h1>
								</div>
								<div class="row">
									<p class="mb-2" style="font-size: small;">趙令文</p>
								</div>
								<div class="row d-inline ">
									<strong style="font-size: large;">3.5 </strong> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-fill px-0"></i> <i
										class="bi bi-star-half px-0"></i> <i class="bi bi-star px-0"></i>
									(120)
								</div>
								<div class="row mt-2">
									<div class="col">
										<p class="mb-0" style="font-weight: bolder; font-size: large;">NT
											$ ${courseData.price}</p>
									</div>
								</div>
							</div>
							<p>${courseData.introduction}</p>
							
							<div class="col">
								<a class="btn btn-primary" href="<c:url value='/addtocart?id=${courseData.id} ' />">加入購物車</a>
							</div>
							<div class="col">
								<i class="fa-regular fa-heart fa-lg" style="color: #f70000;"></i>
							</div>
						</div>

					</div>
					<!-- Post content-->
					<section class="mb-5">
						<h3 class="fw-bolder mb-4 mt-5">課程介紹</h3>
						<hr class="hrBorder">
						<h4 class="fw-bolder mb-4 mt-5">課程內容</h4>
						<p class="fs-5 mb-4">Science is an enterprise that should be
							cherished as an activity of the free human mind. Because it
							transforms who we are, how we live, and it gives us an
							understanding of our place in the universe.</p>
						<hr class="hrBorder">
						<h4 class="fw-bolder mb-4 mt-5">此課程您可以學到</h4>
						<p class="fs-5 mb-4">The universe is large and old, and the
							ingredients for life as we know it are everywhere, so there's no
							reason to think that Earth would be unique in that regard.
							Whether of not the life became intelligent is a different
							question, and we'll see if we find that.</p>
						<hr class="hrBorder">
						<h4 class="fw-bolder mb-4 mt-5">此課程適合那些人</h4>
						<p class="fs-5 mb-4">If you get asteroids about a kilometer in
							size, those are large enough and carry enough energy into our
							system to disrupt transportation, communication, the food chains,
							and that can be a really bad day on Earth.</p>
						<hr class="hrBorder">
						<h4 class="fw-bolder mb-4 mt-5">課前準備</h4>
						<p class="fs-5 mb-4">For me, the most fascinating interface is
							Twitter. I have odd cosmic thoughts every day and I realized I
							could hold them to myself or share them with people who might be
							interested.</p>
						<p class="fs-5 mb-4">Venus has a runaway greenhouse effect. I
							kind of want to know what happened there because we're twirling
							knobs here on Earth without knowing the consequences of it. Mars
							once had running water. It's bone dry today. Something bad
							happened there as well.</p>

					</section>

					<div class="accordion" id="accordionExample">
						<c:forEach items="${courseData.chapter}" var="chapter">
							<div class="accordion-item">
								<h2 class="accordion-header">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse"
										data-bs-target="#collapse${chapter.chapterId}"
										aria-expanded="false" aria-controls="collapseOne">${chapter.chapterName}</button>
								</h2>
								<div id="collapse${chapter.chapterId}"
									class="accordion-collapse collapse ">
									<div class="accordion-body">
										<ul class="list-group list-group-flush">
											<c:forEach items="${chapter.unit}" var="unit">
												<li class="list-group-item">
													<div class="d-flex w-100 justify-content-between">
														<h5 class="mb-1">${unit.unitName}</h5>
														<small>07:20</small>
													</div>
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>



					<h4 class="fw-bolder mb-4 mt-5">講師介紹</h4>
					<div class="p-5">
						<img class="img-fluid rounded-circle"
							src="https://picsum.photos/150/150?random=10" alt="...">
					</div>

					<div class="col">
						<p class="mb-2" style="font-size: lg;">趙令文</p>
						<div class="container px-0">
							<div class="row"></div>
							<div class="row"></div>
							<div class="row d-inline ">
								<strong style="font-size: large;">4.5 </strong> <i
									class="bi bi-star-fill px-0"></i> <i
									class="bi bi-star-fill px-0"></i> <i
									class="bi bi-star-fill px-0"></i> <i
									class="bi bi-star-fill px-0"></i> <i
									class="bi bi-star-half px-0"></i> (123)
							</div>

						</div>

					</div>
					<h4 class="fw-bolder mb-4 mt-5">課程評價</h4>
			</div>
		</div>
		<!-- Comments section-->
		<section class="mb-5">
			<div class="card Lg">
				<div class="card-body">
					<!-- Comment form-->
					<form class="mb-4">
						<textarea class="form-control" rows="3"
							placeholder="Join the discussion and leave a comment!"></textarea>
					</form>
					<!-- Comment with nested comments-->
					<div class="d-flex mb-4">
						<!-- Parent comment-->
						<div class="flex-shrink-0">
							<img class="rounded-circle"
								src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
						</div>
						<div class="ms-3">
							<div class="fw-bold">Hank Lee</div>
							If you're going to lead a space frontier, it has to be
							government; it'll never be private enterprise. Because the space
							frontier is dangerous, and it's expensive, and it has
							unquantified risks.
							<!-- Child comment 1-->
							<div class="d-flex mt-4">
								<div class="flex-shrink-0">
									<img class="rounded-circle"
										src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
								</div>
								<div class="ms-3">
									<div class="fw-bold">Zhang Sam</div>
									And under those conditions, you cannot establish a
									capital-market evaluation of that enterprise. You can't get
									investors.
								</div>
							</div>
							<!-- Child comment 2-->
							<div class="d-flex mt-4">
								<div class="flex-shrink-0">
									<img class="rounded-circle"
										src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
								</div>
								<div class="ms-3">
									<div class="fw-bold">趙令文</div>
									沒問題，已上傳Github。
								</div>
							</div>
						</div>
					</div>
					<!-- Single comment-->
					<div class="d-flex">
						<div class="flex-shrink-0">
							<img class="rounded-circle"
								src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
						</div>
						<div class="ms-3">
							<div class="fw-bold">Commenter Name</div>
							When I look at the universe and all the ways the universe wants
							to kill us, I find it hard to reconcile that with statements of
							beneficence.
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	</div>
	</div>
	<!-- Side widgets-->
	<div class="col-lg-4"></div>
</body>
</html>