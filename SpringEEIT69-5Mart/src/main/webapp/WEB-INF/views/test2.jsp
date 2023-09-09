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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

.navbar-nav li:hover>ul.dropdown-menu {
	display: block;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0%;
	left: 100%;
	margin-top: -3px;
}

.dropdown-menu>li>a:hover:after {
	transform: rotate(-90deg);
	transition: 0.5s;
}

.modal-header h3 {
	font-size: 30px;
}

/* 登入註冊彈跳式視窗調整 */
.modal-header h3 {
	font-size: 30px;
	margin-left: 10px;
}

.modal-body form .text, .modal-body form .account, .modal-body form .password
	{
	margin-left: 20px;
	margin-bottom: 10px;
	width: 90%;
	height: 50px;
}

.remember {
	margin-bottom: 20px;
	margin-left: 20px;
}

.modal-body form .btn {
	width: 90%;
	font-size: 25px;
	margin-left: 20px;
	color: white;
}

.modal-body a {
	font-size: 20px;
	margin-top: 10px;
}
/* 登入註冊彈跳式視窗調整 */
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
	<div class="container">
		<div class="row">
			<div class="col-12 mb-6">

				<h3 class="mb-0">Featured Categories</h3>

			</div>
		</div>
		<div class="category-slider slick-initialized slick-slider">
			<span class="slick-prev slick-arrow" style=""><i
				class="feather-icon icon-chevron-left"></i></span>
















			<div class="slick-list draggable">
				<div class="slick-track"
					style="opacity: 1; width: 7744px; transform: translate3d(-3872px, 0px, 0px);">
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="-2" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-cleaning-essentials.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Cleaning Essentials</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="-1" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-pet-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Pet Care</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="0" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-dairy-bread-eggs.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid">
									<div class="text-truncate">Dairy, Bread &amp; Eggs</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="1" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-snack-munchies.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Snack &amp; Munchies</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="2" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-bakery-biscuits.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Bakery &amp; Biscuits</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="3" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-instant-food.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Instant Food</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="4" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-tea-coffee-drinks.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Tea, Coffee &amp; Drinks</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="5" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-atta-rice-dal.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Atta, Rice &amp; Dal</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="6" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-baby-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Baby Care</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="7" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-chicken-meat-fish.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Chicken, Meat &amp; Fish</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide" style="width: 336px;" tabindex="-1"
						data-slick-index="8" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-cleaning-essentials.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Cleaning Essentials</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-current slick-active"
						style="width: 336px;" tabindex="0" data-slick-index="9"
						aria-hidden="false">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="0">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-pet-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Pet Care</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned slick-active"
						style="width: 336px;" tabindex="-1" data-slick-index="10" id=""
						aria-hidden="false">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="0">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-dairy-bread-eggs.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid">
									<div class="text-truncate">Dairy, Bread &amp; Eggs</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="11" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-snack-munchies.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Snack &amp; Munchies</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="12" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-bakery-biscuits.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Bakery &amp; Biscuits</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="13" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-instant-food.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Instant Food</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="14" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-tea-coffee-drinks.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Tea, Coffee &amp; Drinks</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="15" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-atta-rice-dal.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Atta, Rice &amp; Dal</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="16" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-baby-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Baby Care</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="17" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-chicken-meat-fish.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Chicken, Meat &amp; Fish</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="18" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-cleaning-essentials.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Cleaning Essentials</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item slick-slide slick-cloned" style="width: 336px;"
						tabindex="-1" data-slick-index="19" id="" aria-hidden="true">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit" tabindex="-1">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-pet-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3">
									<div class="text-truncate">Pet Care</div>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<span class="slick-next slick-arrow" style=""><i
				class="feather-icon icon-chevron-right "></i></span>
		</div>


	</div>

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