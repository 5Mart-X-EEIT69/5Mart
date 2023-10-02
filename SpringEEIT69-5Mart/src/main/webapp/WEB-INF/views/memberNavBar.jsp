<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel='stylesheet' href="<c:url value='/assets/css/visitorHomePage.css' />" type="text/css" />
<script>
	var removeUrl = "<c:url value='/removefromcart' />"
	$(document).ready(function() {
		$(".remove-button").click(function() {
			var courseId = $(this).data("course-id");
			console.log(courseId);
			$.ajax({
				url : removeUrl,
				method : "GET",
				contentType : 'application/json',
				data : {
					id : courseId
				},
				success : function(response) {
					console.log(response);
					if (response.status === 200) {

						alert("課程已從購物車移除");
						location.reload(); // 或者其他更新頁面的方法
					} else {
						alert("移除課程失敗");
					}
				},
				error : function() {
					alert("發生錯誤，請重試");
				}
			});
		});
	});
</script>
<nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top shadow-lg">
	<div class="container-fluid ">
		<!-- 品牌logo -->
		<a class="navbar-brand" href="<c:url value='/homepage' />">
			<i class="fa-solid fa-graduation-cap fa-xl px-2"></i>
		</a>
		<!-- style="color: #ffffff;" -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown px-2">
					<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 課程類別 </a>
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
				<li class="nav-item ps-5">
					<a class="nav-link" href="<c:url value='/TeacherMain' />">教師</a>
				</li>

				<!-- 我的學習 -->
				<li class="nav-item dropdown px-2">
					<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 我的學習 </a>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
						<li class="dropdown-item px-2  pb-2">
							<div class="card myCourseCard ">
								<!-- 									<figure class="figure" style="margin: 0;"> -->
								<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg" class="card-img-top " alt="...">
								<!-- 									</figure> figure-img img-fluid rounded-->
								<div class="card-body myCourseCardBody p-2 pe-0 w-100">
									<div class="text-section">
										<h6 class="card-title">Java從零開始學習</h6>
										<p class="card-text" style="font-size: small;">趙令文</p>
										<div>$2,000</div>
									</div>
									<!-- 										<div -->
									<!-- 											class="cta-section w-100 d-flex justify-content-center align-items-center"> -->
									<!-- 											<a href="#" class="btn btn-light "><i -->
									<!-- 												class="fa-solid fa-cart-shopping fa-xl"></i></a> -->
									<!-- 										</div> -->
								</div>
							</div>
						</li>
						<li class="dropdown-item px-2  pb-2">
							<div class="card myCourseCard ">
								<!-- 									<figure class="figure" style="margin: 0;"> -->
								<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg" class="card-img-top " alt="...">
								<!-- 									</figure> figure-img img-fluid rounded-->
								<div class="card-body myCourseCardBody p-2 pe-0 w-100">
									<div class="text-section">
										<h6 class="card-title">Java從零開始學習</h6>
										<p class="card-text" style="font-size: small;">趙令文</p>
										<div>$2,000</div>
									</div>
								</div>
							</div>
						</li>
						<li class="dropdown-item px-2  pb-2">
							<div class="card myCourseCard  ">
								<!-- 									<figure class="figure" style="margin: 0;"> -->
								<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg" class="card-img-top " alt="...">
								<!-- 									</figure> figure-img img-fluid rounded-->
								<div class="card-body myCourseCardBody p-2 pe-0 w-100">
									<div class="text-section">
										<h6 class="card-title">Java從零開始學習</h6>
										<p class="card-text" style="font-size: small;">趙令文</p>
										<div>$2,000</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="dropdown-item px-2 py-0">
							<a href="<c:url value='/student_course_viewer' />" class="btn btn-success w-100">前往我的學習</a>
						</li>
					</ul>
				</li>

				<!-- 願望清單 -->
				<li class="nav-item dropdown px-2">
					<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<i class="fa-solid fa-heart fa-xl mt-2"></i>
					</a>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
						<li class="dropdown-item px-2  pb-2">
							<div class="card myCourseCard ">
								<!-- 									<figure class="figure" style="margin: 0;"> -->
								<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg" class="card-img-top " alt="...">
								<!-- 									</figure> figure-img img-fluid rounded-->
								<div class="card-body myCourseCardBody p-2 pe-0 w-100">
									<div class="text-section">
										<h6 class="card-title">Java從零開始學習</h6>
										<p class="card-text" style="font-size: small;">趙令文</p>
										<div>$2,000</div>
									</div>
									<div class="cta-section w-100 d-flex justify-content-center align-items-center ps-3">
										<a href="#" class="btn btn-light px-2">
											<i class="fa-solid fa-cart-shopping fa-xl"></i>
										</a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="dropdown-item px-2 py-0">
							<a href="#" class="btn btn-success w-100">前往願望清單</a>
						</li>
					</ul>
				</li>

				<!-- 購物車 fontawesome -->
				<li class="nav-item dropdown px-2">
					<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<i class="fa-solid fa-cart-shopping fa-xl position-relative"></i>
						<c:if test="${fn:length(mycart) != 0}">
							<span class="position-absolute top-8 start-90 translate-middle badge rounded-pill bg-danger">
								${fn:length(mycart)}
								<span class="visually-hidden">unread messages</span>
							</span>
						</c:if>
					</a>
					<%-- 				${ShoppingCart} --%>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
						<c:forEach items="${mycart}" var="cart">
							<li class="dropdown-item px-2  pb-2">
								<div class="card myCourseCard ">
									<img src="${cart.value.dataUri }" class="card-img-top " alt="...">
									<div class="card-body myCourseCardBody p-2 pe-0 w-100">
										<div class="text-section col-10">
											<h6 class="card-title">${cart.value.title}</h6>
											<p class="card-text" style="font-size: small;">${cart.value.teacher.username}</p>
											<div>$ ${cart.value.price}</div>
										</div>
										<div class="cta-section w-100 d-flex justify-content-center align-items-center ps-3">
											<a class="remove-button btn btn-light px-2 " data-course-id="${cart.value.id}">
												<i class="fa-solid fa-trash fa-xl "></i>
											</a>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="dropdown-item px-2 py-0">
							<a href="#" class="btn btn-success w-100">前往購物車</a>
						</li>
					</ul>
				</li>
				
				<!-- 通知 -->
				<li class="nav-item dropdown px-2">
					<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<i class="fa-solid fa-bell fa-xl"></i>
					</a>
					<ul class="dropdown-menu dropdown-menu-end notice" aria-labelledby="navbarDropdown">
						<li>
							<div class="ps-3 pt-1">
								<h6>通知</h6>
							</div>
						</li>
						<!-- 							<li><hr class="dropdown-divider"></li> -->
						<!-- 							style="border-bottom:1px solid lightgray;" -->
						<li class="noticeItem">
							<a class="nav-link p-0" role="button" href="<c:url value='/test2'/>">
								<div class="d-flex flex-row w-100 pt-2 pb-3">
									<div class="ps-3">
										<img class="circleImg" src="\SpringEEIT69-5Mart\assets\images\人像頭貼002.jpeg" />
									</div>
									<div class="w-100">
										<div class="d-flex bd-highlight mb-0">

											<div class="px-2 bd-highlight" style="font-weight: border:;">Tung</div>
											<div class="bd-highlight mt-1" style="font-size: small">傳了一則通知給您</div>
											<div class="ms-auto px-3 mt-1 bd-highlight" style="font-size: small; color: gray;">3天前</div>
										</div>
										<div class="ps-2 pt-1" style="font-size: x-small;">
											<p class="noticeText w-75 me-0 mb-0">你好，我有收到你的訊息，針對你的問題，給你一些回覆</p>
										</div>
									</div>
								</div>
							</a>
						</li>
						<!-- 							<li><hr class="dropdown-divider"></li> -->
						<li class="noticeItem">
							<div class="d-flex flex-row w-100 pt-2 pb-3">
								<div class="ps-3">
									<img class="circleImg" src="\SpringEEIT69-5Mart\assets\images\人像頭貼003.jpg" />
								</div>
								<div class="w-100">
									<div class="d-flex bd-highlight mb-0">

										<div class="px-2 bd-highlight" style="font-weight: border;">NONO</div>
										<div class="bd-highlight mt-1" style="font-size: small">傳了一則訊息給您</div>
										<div class="ms-auto px-3 mt-1 bd-highlight" style="font-size: small; color: gray;">3小時前</div>
									</div>
									<div class="ps-2 pt-1" style="font-size: x-small;">
										<p class="noticeText w-75 me-0 mb-0">你好，我有收到你的訊息，針對你的問題，給你一些回覆</p>
									</div>
								</div>
							</div>
						</li>
						<!-- 							<li><hr class="dropdown-divider"></li> -->
						<li class="noticeItem" style="border-bottom: 1px solid lightgray;">
							<div class="d-flex flex-row w-100 pt-2 pb-3">
								<div class="ps-3">
									<img class="circleImg" src="\SpringEEIT69-5Mart\assets\images\人像頭貼004.jpeg" />
								</div>
								<div class="w-100">
									<div class="d-flex bd-highlight mb-0">

										<div class="px-2 bd-highlight" style="font-weight: border;">賈靜雯</div>
										<div class="bd-highlight mt-1" style="font-size: small">傳了一則訊息給您</div>
										<div class="ms-auto px-3 mt-1 bd-highlight" style="font-size: small; color: gray;">5分鐘前</div>
									</div>
									<div class="ps-2 pt-1" style="font-size: x-small;">
										<p class="noticeText w-75 me-0 mb-0">你好，我有收到你的訊息，針對你的問題，給你一些回覆</p>
									</div>
								</div>
							</div>
						</li>
						<!-- 							<li><hr class="dropdown-divider"></li> -->
						<li class="dropdown-item px-2 pb-0 pt-2">
							<a href="#" class="btn btn-success w-100">前往通知</a>
						</li>
					</ul>
				</li>


			</ul>
			<div class="btn-group d-block headImg pe-2">
				<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<img class="circleImg" src="<c:choose>
						<c:when test="${not empty base64Image}">data:image/jpeg;base64,${base64Image}</c:when>
						<c:otherwise>\SpringEEIT69-5Mart\assets\images\人像頭貼001.jpg</c:otherwise>
					</c:choose>" />
				</a>
				<ul class="dropdown-menu dropdown-menu-end px-1 fs-6">
					<li class="">
						<a class="dropdown-item" href="#">
							<span>${member.account}</span>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li class="">
						<a class="dropdown-item" href="#">
							<i class="fa-regular fa-user " style="padding: 0 8px"></i>
							個人檔案
						</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">
							<i class="fa-solid fa-chalkboard" style="padding: 0 6px"></i>
							我的學習
						</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">
							<i class="fa-regular fa-heart " style="padding: 0 7px"></i>
							願望清單
						</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">
							<i class="bi bi-cart3" style="padding: 0 7px"></i>
							購物車
						</a>
					</li>

					<li>
						<hr class="dropdown-divider">
					</li>

					<li>
						<a class="dropdown-item" href="#">
							<i class="fa-regular fa-file" style="padding: 0 9px"></i>
							訂單紀錄
						</a>
					</li>
					<li>
						<a class="dropdown-item" href="<c:url value='/profileSettingPage' />">
							<i class="bi bi-gear" style="padding: 0 7px"></i>
							帳戶設定
						</a>
					</li>
					<li>
						<a class="dropdown-item" href="#">
							<i class="fa-regular fa-credit-card" style="padding: 0 6px"></i>
							付款方式
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li>
						<a class="dropdown-item" href="<c:url value='/logout' />">
							<i class="fa-solid fa-arrow-right-from-bracket" style="padding: 0 7px"></i>
							登出
						</a>
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
