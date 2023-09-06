<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!-- logo icon -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<!-- <link
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      rel="stylesheet"
    /> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>訪客首頁</title>
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
	<h1>訪客首頁(測試bootstrap)</h1>
	<!--     <a href="#" class="btn btn-info">按鈕</a> -->
	<!-- 導覽列 -->
	<div class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<!-- 品牌logo -->
						<a class="navbar-brand" href="#"><span
							class="material-symbols-outlined"> school </span></a>
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item dropdown"><a
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
<!-- 									<li><hr class="dropdown-divider"></li> -->
<!-- 									<li><a class="dropdown-item" href="#">Something else -->
<!-- 											here</a></li> -->
								</ul></li>
<!-- 							<li class="nav-item"><a class="nav-link active" -->
<!-- 								aria-current="page" href="#">Home</a></li> -->
							<li class="nav-item"><a class="nav-link" href="#">文章</a></li>

							<li class="nav-item"><a class="nav-link disabled" href="#"
								tabindex="-1" aria-disabled="true">Disabled</a></li>
							<li>
								<form class="nav-item input-group">
									<input class="form-control me-2" type="search"
										placeholder="搜尋" aria-label="Search">
									<button class="btn btn-outline-success" type="submit">搜尋</button>
								</form>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">我的學習</a></li>
							<li class="nav-item"><a class="nav-link" href="#">願望清單</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
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
						<img src="\SpringEEIT69-5Mart\images\課程封面圖002.jpg"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\images\課程封面圖009.jpeg"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\images\課程封面圖010.jpeg"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="\SpringEEIT69-5Mart\images\課程封面圖001.jpeg"
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
	<div class="container-fluid justify-content-center">
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
					<img src="<c:url value='/images/課程封面圖001.jpeg'/>"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\images\課程封面圖008.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\images\課程封面圖003.jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="\SpringEEIT69-5Mart\images\課程封面圖004.jpeg"
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



	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<!-- <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
      crossorigin="anonymous"
    ></script> -->

	<!-- Option 2: Separate Popper and Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ"
		crossorigin="anonymous"></script>
</body>
</html>