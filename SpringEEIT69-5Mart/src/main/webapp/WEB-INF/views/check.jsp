<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>結帳</title>

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
<style>
.navbar-nav .nav-link {
	color: purple !important;
	font-size: small;
	/* 設置文字顏色為紫色 */
	text-decoration: underline !important;
	/* 添加底線 */
}

.list-group-item {
	border: 1px solid #ccc;
	max-width: 300px;
	background-color: #fcfafa;
}

.price {
	font-size: 18px;
	margin-left: 60px;
}

.credit-card-icon {
	width: 20px;
	height: 20px;
	margin-right: 10px;
}

.left-background {
	background-color: white;
	height: 100vh;
	display: flex;
	align-items: center;
	/* 垂直居中 */
	justify-content: flex-end;
}

.right-background {
	background-color: #f3f1f1;
	height: 100vh;
	/* 確保高度充滿整個螢幕 */
	display: flex;
	/* 使其成為Flex容器 */
	align-items: center;
	/* 垂直居中 */
	justify-content: center;
}

.content {
	width: 70%;
}

.btn-custom {
	background-color: #b53fe4;
	border-color: #b53fe4;
	color: #fff;
}
</style>
</head>


<body>
	<nav class="navbar"
		style="background-color: #ffffff; box-shadow: 0px 5px 5px rgba(0, 0, 0, 0.1);">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">5MART</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="#">取消</a></li>
			</ul>
		</div>
	</nav>




	<div class="container-fluid p-0 ">
		<div class="row no-gutters">
			<div class="col-md-6 left-background">
				<div class="content p-5">
					<h2 style="font-weight: bold;">結帳</h2>
					<br>
					<h4 style="font-weight: bold;">付款方式</h4>
					<br>
					<ul class="list-group">
						<li class="list-group-item">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1">
									<i class="bi bi-credit-card-2-back"></i>
									 信用卡
								</label>
							</div>
						</li>
						<li class="list-group-item">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault2"> <label
									class="form-check-label" for="flexRadioDefault2"> 
									<i class="bi bi-coin"></i>
									轉帳
								</label>
							</div>
						</li>
					</ul>
					<br>
					<h4 style="font-weight: bold;">訂單詳細資料</h4>
					<br>
					<p>
						<img src="your-image.jpg" width="50" height="50" /> JSP, Servlets
						and JDBC for Beginners<span class="price">$330</span>
					</p>
				</div>
			</div>
			<div class="col-md-6 right-background">
				<div class="content p-3 ">
					<h4 style="font-weight: bold;">摘要</h4>
					<br>
					<p>
						金額: <span class="price">$330</span>
					</p>
					<p>
						折扣: <span class="price">$0</span>
					</p>
					<hr style="width: 40%;">
					<p style="font-weight: bold;">
						總計: <span class="price">$330</span>
					</p>
					<br>
					<button type="button" class="btn btn-custom">完成結帳</button>
				</div>
			</div>
		</div>
	</div>

</body>

</html>