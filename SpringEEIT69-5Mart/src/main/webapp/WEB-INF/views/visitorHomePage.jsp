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

<!-- bootstrap -->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<!-- <script -->
<%-- 	src="<c:url value="/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.js"/>"></script> --%>
<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->

<!-- google fonts的icon庫引入 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
<!-- google fonts的icon庫引入 -->

<!-- font awesome的icon庫引入 -->
<script src="https://kit.fontawesome.com/7ae43304d6.js"
	crossorigin="anonymous"></script>
<!-- font awesome的icon庫引入 -->

<!-- CDN引入 -->
<!-- <link -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" -->
<!-- 	crossorigin="anonymous" /> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<!-- CDN引入 -->

<style type="text/css">
#paragraphTitle {
	margin: 13px 0px
}

#carouselExampleIndicators {
	margin: 0px 0px 6px
}

.btnClass {
	padding-top: 35px;
	padding-bottom: 35px;
	margin: 10px;
}
</style>

</head>

<script type="text/javascript">
	window.onload = function() {

		// 輪播圖相關設定
		var myCarousel = document.querySelector('#carouselExampleIndicators')
		var carousel = new bootstrap.Carousel(myCarousel, {
			interval : 4000, // 自動輪播的延遲時間
			pause : false
		// 滑鼠碰到圖片時，輪播不會停止;改成"hover"時，輪播會停止

		})

	}
</script>

<body>
	<!-- 導覽列 -->
	<!-- 	<div class="container-fluid" style="position: fixed; z-index: 5"> -->
	<!-- 		<div class="row "> -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container-fluid">
			<!-- 品牌logo -->
			<a class="navbar-brand" href="#"><i
				class="fa-solid fa-graduation-cap fa-xl px-2"></i></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown px-2"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							課程類別 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">語言</a></li>
							<li><a class="dropdown-item" href="#">開發</a></li>
							<li><a class="dropdown-item" href="#">行銷</a></li>
							<li><a class="dropdown-item" href="#">投資理財</a></li>
							<li><a class="dropdown-item" href="#">攝影</a></li>
							<li><a class="dropdown-item" href="#">設計</a></li>
							<li><a class="dropdown-item" href="#">音樂</a></li>
							<!-- 									<li><div class="btn-group dropend"> -->
							<!-- 											<a class="btn btn-secondary dropdown-toggle" href="#" -->
							<!-- 												role="button" id="dropdownMenuLink" -->
							<!-- 												data-bs-toggle="dropdown" aria-expanded="false"> -->
							<!-- 												Dropdown link </a> -->
							<!-- 											<ul class="dropdown-menu"> -->
							<!-- 												<li><a class="dropdown-item" href="#">Action</a></li> -->
							<!-- 												<li><a class="dropdown-item" href="#">Another -->
							<!-- 														action</a></li> -->
							<!-- 												<li><a class="dropdown-item" href="#">Something -->
							<!-- 														else here</a></li> -->
							<!-- 												Dropdown menu links -->
							<!-- 											</ul> -->
							<!-- 										</div></li> -->
							<!-- 									<li><hr class="dropdown-divider"></li> -->
							<!-- 									<li><a class="dropdown-item" href="#">Something else -->
							<!-- 											here</a></li> -->
						</ul></li>
					<!-- 							<li class="nav-item"><a class="nav-link active" -->
					<!-- 								aria-current="page" href="#">Home</a></li> -->
					<li class="nav-item px-4"><a class="nav-link" href="#">文章</a></li>

					<!-- 							<li class="nav-item"><a class="nav-link disabled" href="#" -->
					<!-- 								tabindex="-1" aria-disabled="true">Disabled</a></li> -->
					<li class="nav-item px-10">
						<form class="d-lg-flex d-none nav-item input-group ">
							<input class="form-control me-2" type="search" placeholder="搜尋課程"
								aria-label="Search">
							<button class="btn btn-outline-success" type="submit">搜尋</button>
						</form>
					</li>

					<!-- 							<li class="nav-item"><a class="nav-link" href="#">我的學習</a></li> -->
					<!-- 							<li class="nav-item"><a class="nav-link" href="#">願望清單</a></li> -->
				</ul>



				<button type="button" class="btn btn-outline-success me-2">登入/註冊</button>

				<div class="btn-group d-block">
					<button type="button"
						class="btn btn-outline-success dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
						<span class="material-symbols-outlined "> globe </span>
					</button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a class="dropdown-item" href="#">英文</a></li>
						<li><a class="dropdown-item" href="#">日文</a></li>
						<li><a class="dropdown-item" href="#">韓文</a></li>
						<li><a class="dropdown-item" href="#">簡體中文</a></li>
					</ul>
				</div>


				<form class="d-flex d-lg-none nav-item input-group">
					<input class="form-control me-2" type="search" placeholder="搜尋課程"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">搜尋</button>
				</form>


			</div>
		</div>
	</nav>
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 導覽列 -->
	<!-- 輪播圖 -->
	<div class="container-lg">
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
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖010.jpeg"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖001.jpeg"
							class="d-block w-100" alt="...">
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
	<div class="container-fluid justify-content-center" id="paragraphTitle">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<h4>
					<strong>熱門課程</strong>
				</h4>
			</div>
			<div class="col-1">
				<div>
					<a href="">更多 ></a>
				</div>
			</div>
			<div class="col-1"></div>
		</div>

		<div class="row ">
			<div class="col-1"></div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="<c:url value='/assets/images/課程封面圖001.jpeg'/>"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖004.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<!-- 熱門課程區塊(水平滾動) -->

	<!-- 募資課程區塊(水平滾動) -->
	<div class="container-fluid justify-content-center" id="paragraphTitle">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<h4 id="paragraphTitle">
					<strong>募資課程</strong>
				</h4>
			</div>
			<div class="col-1">
				<div>
					<a href="">更多 ></a>
				</div>
			</div>
			<div class="col-1"></div>
		</div>

		<div class="row ">
			<div class="col-1"></div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="<c:url value='/assets/images/課程封面圖001.jpeg'/>"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖004.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<!-- 募資課程區塊(水平滾動) -->

	<!-- 熱門類別 -->
	<div class="container-fluid justify-content-center" id="paragraphTitle">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<h4 id="paragraphTitle">
					<strong>熱門類別</strong>
				</h4>
			</div>
			<div class="col-1">
				<div>
					<a href="">更多 ></a>
				</div>
			</div>
			<div class="col-1"></div>
		</div>

		<div class="row">
			<div class="col-1"></div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">語言</button>
			</div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">開發</button>
			</div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">行銷</button>
			</div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">投資理財</button>
			</div>
			<div class="col-2"></div>
		</div>

		<div class="row">
			<div class="col-1"></div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">音樂</button>
			</div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">攝影</button>
			</div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">設計</button>
			</div>
			<div class="col d-grid gap-2 mx-auto">
				<button type="button"
					class="btn btn-outline-secondary btn-lg btnClass">職場技能</button>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
	<!-- 熱門類別 -->

	<!-- 精選文章區塊(水平滾動) -->
	<div class="container-fluid justify-content-center" id="paragraphTitle">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<h4 id="paragraphTitle">
					<strong>精選文章</strong>
				</h4>
			</div>
			<div class="col-1">
				<div>
					<a href="">更多 ></a>
				</div>
			</div>
			<div class="col-1"></div>
		</div>

		<div class="row ">
			<div class="col-1"></div>
			<div class="col">
				<div class="card" style="width: 25rem;">
					<img src="<c:url value='/assets/images/課程封面圖001.jpeg'/>"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 25rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖008.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 25rem;">
					<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>

			<div class="col-1"></div>
		</div>
	</div>
	<!-- 精選文章區塊(水平滾動) -->

	<!-- 最底部 -->
	<footer class="bd-footer py-5 mt-5 bg-light">
		<div class="container py-5 justify-content-center">
			<div class="row d-flex justify-content-center">
				<div class="col-3 px-5"></div>
				<div class="col-3 px-5">
					<i class="fa-solid fa-graduation-cap fa-xl px-2"></i>

					<h4 class="d-inline">5mart</h4>
				</div>
				<div class="col-3 px-5">
					<i class="fa-brands fa-java fa-2xl px-2" style="color: #0b6cb0;"></i>
					<i class="fa-brands fa-html5 fa-2xl px-2" style="color: #de4b25;"></i>
					<i class="fa-brands fa-css3-alt fa-2xl px-2"
						style="color: #254bdd;"></i> <i
						class="fa-brands fa-js fa-2xl px-2" style="color: #e8d44d;"></i> <i
						class="fa-brands fa-bootstrap fa-2xl px-2" style="color: #6d10f3;"></i>

				</div>
			</div>
			<hr>
			<div class="row d-flex justify-content-center">
				<div class="col-6 col-lg-4 offset-lg-1 mb-3 justify-content-around">
					<h5>關於</h5>
					<ul class="list-unstyled">
						<li class="mb-2"><a href="">關於我們</a></li>

					</ul>
				</div>
				<div class="col-6 col-lg-4 mb-3 justify-content-around">
					<h5>幫助</h5>
					<ul class="list-unstyled">
						<li class="mb-2"><a href="">常見問題</a></li>
					</ul>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ"
		crossorigin="anonymous"></script>
	<!-- CDN引入 -->



</body>
</html>