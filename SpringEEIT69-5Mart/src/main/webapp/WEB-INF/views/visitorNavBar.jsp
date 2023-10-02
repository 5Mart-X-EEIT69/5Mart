<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel='stylesheet' href="<c:url value='/assets/css/visitorHomePage.css' />" type="text/css" />
<script type="text/javascript">
	var checkNameUrl = "<c:url value='/checkname' />";
	$(document).ready(function() {
		//當用戶焦點離開全名輸入框時觸發
		$("#usernameInput").blur(function() {
			var userName = $(this).val(); // 獲取輸入框的值
			console.log("離開輸入框");
			// 發送 Ajax 請求到後端
			$.ajax({
				url : checkNameUrl, // 替換成您後端的 API URL
				type : 'POST',
				data : {
					name : userName
				},
				success : function(response) {
					if (response.isExist) {
						$(".duplicateName").text("已有人使用此名稱"); // 更新警告訊息
					} else {
						$(".duplicateName").text(""); // 清空警告訊息
					}
				},
				error : function(response) {
					alert("發生錯誤，請重試");
					console.log(response)
				}
			});
		});
	});
</script>
<nav class="navbar navbar-expand-lg bg-body-tertiary  sticky-top shadow">
	<div class="container-fluid">
		<!-- 品牌logo -->
		<a class="navbar-brand" href="<c:url value='/homepage' />">
			<i class="fa-solid fa-graduation-cap fa-xl px-2"></i>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown px-2">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 課程類別 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">語言</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有語言</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">英文</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">日文</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">韓文</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">西班牙文</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">開發</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有開發</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">網頁開發</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">程式語言</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">遊戲開發</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">資料庫設計與開發</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">軟體測試</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">行銷</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有行銷</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">數位行銷</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">社群行銷</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">數據分析</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">行銷策略</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">文案撰寫</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">創業</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">投資理財</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有投資理財</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">個人理財</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">投資觀念</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">財務分析</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">量化交易</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">財務管理</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">股票分析</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">攝影</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有攝影</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">商業攝影</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">影像創作</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">後製剪輯</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">攝影理論</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">設計</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有設計</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">平面設計</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">室內設計</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">建築設計</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">網頁設計</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">遊戲設計</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">設計理論</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">音樂</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有音樂</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">樂器</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">音樂軟體</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">音樂基礎</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">音樂創作</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">聲樂</a>
								</li>
							</ul>
						</li>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#">職場技能</a>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">
										<strong>所有職場技能</strong>
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">生產力工具</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">求職技巧</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">創業</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">職場溝通</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">獨立接案</a>
								</li>
							</ul>
						</li>

					</ul>
				</li>

				<li class="nav-item px-4">
					<a class="nav-link" href="#">文章</a>
				</li>

				<li class="nav-item px-10">
					<form class="d-lg-flex d-none nav-item input-group" action="<c:url value="/visitorsearchpage" />" method="post">
						<input class="form-control me-2 " type="search" placeholder="搜尋課程" aria-label="Search" name="keyword">
						<button class="btn btn-outline-success" type="submit">搜尋</button>
					</form>
				</li>
			</ul>

			<!-- 登入註冊按鈕 -->
			<button type="button" class="btn btn-outline-success me-2" data-bs-toggle="modal" data-bs-target="#loginModal">登入/註冊</button>


			<div class="btn-group d-block">
				<button type="button" class="btn btn-outline-success dropdown-toggle globe py-1" data-bs-toggle="dropdown" aria-expanded="false">
					<!-- 					<span class="material-symbols-outlined pt-1"> globe </span> -->
					<i class="fa-solid fa-earth-americas fa-lg"></i>
				</button>
				<ul class="dropdown-menu dropdown-menu-end">
					<li>
						<a class="dropdown-item" href="#">英文</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">日文</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">韓文</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">西班牙文</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">簡體中文</a>
					</li>
				</ul>
			</div>


			<form class="d-flex d-lg-none nav-item input-group">
				<input class="form-control me-2" type="search" placeholder="搜尋課程" aria-label="Search">
				<button class="btn btn-outline-success" type="submit">搜尋</button>
			</form>

		</div>
	</div>
</nav>
<!-- 導覽列 -->


<!-- 登入彈跳式視窗 -->
<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<!-- Header -->
			<div class="modal-header">
				<h3 class="modal-title" id="staticBackdropLabel">
					<strong>登入</strong>
				</h3>
				<div class="d-flex align-items-center">
					<p class="mb-0">尚未註冊？</p>
					<button type="button" class="btn btn-link me-2" data-bs-toggle="modal" data-bs-target="#signinModal" data-bs-dismiss="modal" style="text-decoration: none">註冊</button>


					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
			</div>

			<!-- Body -->
			<div class="modal-body">
				<form action="<c:url value="/login" />" method="post">
					<!-- email -->
					<div class="form-group">
						<input type="email" class="account form-control" placeholder="電子郵件" name="account">
					</div>
					<!-- 密碼 -->
					<div class="form-group">
						<input type="password" class="password form-control" placeholder="密碼" name="password">
					</div>
					<!-- checkbox -->
					<div class="form-group">
						<input type="checkbox" class="remember"> 記住我的密碼
					</div>
					<!-- 送出按鈕 -->
					<button type="submit" class="btn btn-secondary">登入</button>
					<a type="button" href="#" class="d-md-flex justify-content-center">忘記密碼</a>

				</form>
			</div>
			<!-- Footer -->
			<div class="modal-footer d-md-flex justify-content-center flex-column">
				<div>
					<p>
						或使用<strong>社群帳號</strong>繼續
					</p>
				</div>
				<div class="mb-3">
					<a class="mx-2" type="button" href="#">
						<i class="fa-brands fa-facebook fa-2xl" style="color: #046ee5;"></i>
					</a>
					<a class="mx-2" type="button" href="#">
						<i class="fa-brands fa-google fa-2xl" style="color: #ea4335;"></i>
					</a>
					<a class="mx-2" type="button" href="#">
						<i class="fa-brands fa-apple fa-2xl" style="color: #1d1d1f;"></i>
					</a>
				</div>

				<div style="align-content: center">
					<c:if test="${login == 'fail'}">${login}</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 登入彈跳式視窗 -->

<!-- 註冊彈跳式視窗 -->
<div class="modal fade" id="signinModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<!-- Header -->
			<div class="modal-header">
				<h3 class="modal-title" id="staticBackdropLabel">
					<strong>註冊</strong>
				</h3>
				<div class="d-flex align-items-center">
					<p class="mb-0">已經擁有帳戶？</p>
					<button type="button" class="btn btn-link me-2" data-bs-toggle="modal" data-bs-target="#loginModal" data-bs-dismiss="modal" style="text-decoration: none">登入</button>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
			</div>
			<!-- Body -->
			<div class="modal-body">

				<form action="<c:url value="/regMember" />" method="post">
					<!-- 姓名 -->
					<div class="form-group">
						<input type="text" class="text form-control" placeholder="全名" name="username" id="usernameInput">
						<div class="duplicateName mb-2 ms-4" style="font-size: small;color:red"></div>
					</div>
					<!-- email -->
					<div class="form-group">
						<input type="email" class="account form-control" placeholder="電子郵件" name="account">
					</div>
					<!-- 密碼 -->
					<div class="form-group">
						<input type="password" class="password form-control" placeholder="密碼" name="password">
					</div>
					<!-- 再次輸入密碼 -->
					<div class="form-group">
						<input type="password" class="password form-control mb-2" placeholder="再次輸入密碼">
					</div>
					<!-- 送出按鈕 -->
					<button type="submit" class="btn btn-secondary mt-3" data-bs-dismiss="modal">註冊</button>
					<div class="d-md-flex justify-content-center mt-2">
						<p>
							註冊即同意
							<a type="button" href="#">隱私權政策</a>
							和
							<a type="button" href="#">使用者條款</a>
						</p>
					</div>
				</form>
			</div>
			<!-- Footer -->
			<div class="modal-footer d-md-flex justify-content-center flex-column">
				<div>
					<p>
						或使用<strong>社群帳號</strong>繼續
					</p>
				</div>
				<div class="mb-3">
					<a class="mx-2" type="button" href="#">
						<i class="fa-brands fa-facebook fa-2xl" style="color: #046ee5;"></i>
					</a>
					<a class="mx-2" type="button" href="#">
						<i class="fa-brands fa-google fa-2xl" style="color: #ea4335;"></i>
					</a>
					<a class="mx-2" type="button" href="#">
						<i class="fa-brands fa-apple fa-2xl" style="color: #1d1d1f;"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 註冊彈跳式視窗 -->