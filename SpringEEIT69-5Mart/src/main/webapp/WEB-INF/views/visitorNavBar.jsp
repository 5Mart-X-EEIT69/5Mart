<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel='stylesheet' href="<c:url value='/assets/css/visitorHomePage.css' />" type="text/css" />
<script type="text/javascript">
	var checkNameUrl = "<c:url value='/checkname' />";
	$(document).ready(
			function() {
				//當用戶焦點離開全名輸入框時觸發
				$("#usernameInput").blur(
						function() {
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
									if ($("#usernameInput").val() == "") {
										$("#usernameInput").css("border",
												"1px solid lightgray");
										$(".duplicateName").text("");
										register();
										
									} else if (response.isExist) {
										$(".duplicateName").text("此名稱已有人使用"); // 更新警告訊息
										$("#usernameInput").css("border",
												"2px solid red");
										register();
										
									} else {
										$(".duplicateName").text(""); // 清空警告訊息
										$("#usernameInput").css("border",
												"2px solid green");
										console.log($("#usernameInput").css("border-color"));
										
										register();
										
									}
								},
								error : function(response) {
									alert("發生錯誤，請重試");
									console.log(response)
								}
							});
						});

				var checkEmailUrl = "<c:url value='/checkemail'/>";
				$("#emailInput").blur(
						function() {
							var userEmail = $(this).val(); // 獲取輸入框的值
							console.log("離開輸入框");
							// 發送 Ajax 請求到後端
							$.ajax({
								url : checkEmailUrl, // 替換成您後端的 API URL
								type : 'POST',
								data : {
									email : userEmail
								},
								success : function(response) {
									if ($("#emailInput").val() == "") {
										$("#emailInput").css("border",
												"1px solid lightgray");
										$(".duplicateEmail").text("");
										register();
										
									} else if (response.isExist) {
										$(".duplicateEmail").text("此信箱已有人註冊"); // 更新警告訊息
										$("#emailInput").css("border",
												"2px solid red");
										register();
										
									} else {
										$(".duplicateEmail").text(""); // 清空警告訊息
										$("#emailInput").css("border",
												"2px solid green");
										register();
									}
								},
								error : function(response) {
									alert("發生錯誤，請重試");
									console.log(response)
								}
							});
						});

				$("#passwordInputAgain").blur(
						function() {
							var passwordInputAgain = $(this).val();
							var passwordInput = $("#passwordInput").val();
							if (passwordInputAgain == passwordInput) {
								$(".confirmPassword").text("");
								$("#passwordInputAgain").css("border",
										"2px solid green");
								$("#passwordInput").css("border",
										"2px solid green");
								register();
								
							} else {
								$(".confirmPassword").text("輸入的密碼不一致");
								$("#passwordInputAgain").css("border",
										"2px solid red");
								$("#passwordInput").css("border",
										"2px solid red");
								register();

							}
						});
				
				
				
				function register(){													    
				    var userName = $("#usernameInput").val();
				    var userEmail = $("#emailInput").val();
				    var password = $("#passwordInput").val();
				    var passwordAgain = $("#passwordInputAgain").val();
				    
				    // 檢查是否所有輸入框都有值
				    if (userName && userEmail && password && passwordAgain) {
				        // 檢查其他條件，例如是否有警告訊息（duplicateName, duplicateEmail, confirmPassword）
				        var duplicateName = $(".duplicateName").text();
				        var duplicateEmail = $(".duplicateEmail").text();
				        var confirmPassword = $(".confirmPassword").text();

				        if (!duplicateName && !duplicateEmail && !confirmPassword) {
				            console.log("進入可以註冊的if判斷式");
				            console.log("啟用註冊按鈕");
				            $(".registerBtn").removeAttr('disabled'); // 啟用註冊按鈕
				        } else {
				            console.log("禁用註冊按鈕");
				            $(".registerBtn").attr('disabled', 'disabled');  // 禁用註冊按鈕
				        }
				    } else {
				            console.log("禁用註冊按鈕");
				        $(".registerBtn").attr('disabled', 'disabled'); // 禁用註冊按鈕
				    }
				}
				
				var loginUrl = "<c:url value='/login'/>";
				var homepageUrl = "<c:url value='/homepage'/>";
		        $("#loginForm").on("submit", function(event) {
		            event.preventDefault();  // 防止表單自動提交
		            console.log("送出表單");
		            $.ajax({
		                url: loginUrl,  // 請確保這是正確的 URL
		                type: 'POST',
		                data: $(this).serialize(),
		                success: function(response) {
		                    if (response.status === "fail") {
		                    	console.log("登入失敗");
// 		                        alert(response.message);  // 顯示錯誤訊息
								$(".loginFail").removeClass("d-none");							
// 		                        $(".loginFail").text("帳號或密碼錯誤，請重新輸入");
		                    } else {
		                    	console.log("登入成功");
// 		                    	alert(response.status);
		                        window.location.href = homepageUrl;  // 登入成功，轉向其他頁面
		                    }
		                }
		            });
		        });
		        
				var registerUrl = "<c:url value='/regMember'/>";
		        $("#registerForm").on("submit", function(event) {
		            event.preventDefault();  // 防止表單自動提交
		            console.log("送出註冊表單");
		            $.ajax({
		                url: registerUrl,  // 請確保這是正確的 URL
		                type: 'POST',
		                data: $(this).serialize(),
		                success: function(response) {
		                    if (response.status === "success") {
		                    	console.log("註冊成功");
		                        // 轉向登入彈跳視窗
		                        $('#registerModal').modal('hide');
		                        $('#loginModal').modal('show');
		                    }
		                }
		            });
		        });
		        
		        $('#loginModal').on('hidden.bs.modal', function () {
// 		            $(".loginFail").text("");  // 清空錯誤消息
		            $(".loginFail").addClass("d-none");  
		            $(".account, .password").val("");
		        });
		        
		        $('#registerModal').on('hidden.bs.modal', function () {	
		        	$(".account, .password, .text").val("");
		            $("#emailInput, #usernameInput, #passwordInputAgain, #passwordInput").css("border","1px solid lightgray");
					$(".duplicateName, .duplicateEmail, .confirmPassword").text("");
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
					<jsp:include page="/WEB-INF/views/sortNavbar.jsp" /></li>

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


<!-- 			<div class="btn-group d-block"> -->
<!-- 				<button type="button" class="btn btn-outline-success dropdown-toggle globe py-1" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!-- 										<span class="material-symbols-outlined pt-1"> globe </span> -->
<!-- 					<i class="fa-solid fa-earth-americas fa-lg"></i> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu dropdown-menu-end"> -->
<!-- 					<li> -->
<!-- 						<a class="dropdown-item" href="#">英文</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a class="dropdown-item" href="#">日文</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a class="dropdown-item" href="#">韓文</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a class="dropdown-item" href="#">西班牙文</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a class="dropdown-item" href="#">簡體中文</a> -->
<!-- 					</li> -->
<!-- 				</ul> -->
<!-- 			</div> -->


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
					<button type="button" class="btn btn-link me-2" data-bs-toggle="modal" data-bs-target="#registerModal" data-bs-dismiss="modal" style="text-decoration: none">註冊</button>


					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
			</div>

			<!-- Body -->
			<div class="modal-body">
				<form action="<c:url value="/login" />" method="post" id="loginForm">
					<div class="alert alert-danger d-flex align-items-center mx-4 loginFail d-none" role="alert">
  						<i class="bi-exclamation-triangle-fill"></i>
  						<div class="ms-2">帳號或密碼錯誤，請重新輸入</div>
					</div>
					
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
<div class="modal fade" id="registerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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

				<form action="<c:url value="/regMember" />" method="post" id="registerForm">
					<!-- 姓名 -->
					<div class="form-group">
						<input type="text" class="text form-control" placeholder="全名" name="username" id="usernameInput">
						<div class="duplicateName mb-2 ms-4" style="font-size: small; color: red"></div>
					</div>
					<!-- email -->
					<div class="form-group">
						<input type="email" class="account form-control" placeholder="電子郵件" name="account" id="emailInput">
						<div class="duplicateEmail mb-2 ms-4" style="font-size: small; color: red"></div>
					</div>
					<!-- 密碼 -->
					<div class="form-group">
						<input type="password" class="password form-control" placeholder="密碼" name="password" id="passwordInput">
					</div>
					<!-- 再次輸入密碼 -->
					<div class="form-group">
						<input type="password" class="password form-control mb-2" placeholder="再次輸入密碼" id="passwordInputAgain">
						<div class="confirmPassword mb-2 ms-4" style="font-size: small; color: red"></div>
					</div>
					<!-- 送出按鈕 -->
					<button type="submit" class="btn btn-secondary mt-3 registerBtn" data-bs-dismiss="modal" disabled>註冊</button>
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