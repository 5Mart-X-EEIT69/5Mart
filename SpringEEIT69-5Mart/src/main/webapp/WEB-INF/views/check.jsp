<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel='stylesheet' href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>" type="text/css" />
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

/* 移除右侧小箭头 */
.accordion-button::after {
	content: none;
}
</style>

</head>
<script type="text/javascript">
var orderCompletedUrl = "<c:url value='/ordercompleted' />"
var homepageUrl = "<c:url value='/homepage' />"
	$(document).ready(function() {
		$(".checkOutBtn").click(function() {
			var buyCourseId = $(this).data("course-id");
			var buyMemberId = $(this).data("member-id");
			console.log(buyCourseId);
			
			alert("將前往付款頁面，付款後即可在學習頁面查看課程!");
		    setTimeout(function() {
		        window.location.href = homepageUrl;
		      }, 2000);  // 2000毫秒（即2秒）後導向
			
// 			$.ajax({
// 				url : orderCompletedUrl,
// 				method : "POST",
// 				data : {
// 					courseId : buyCourseId,
// 					memberId : buyMemberId
// 				},
// 				success : function(response) {
// 					console.log(response);
// 					if (response.status === 200) {

// 						alert("將前往付款頁面，付款後即可在學習頁面查看課程!");
// // 						location.reload(); // 或者其他更新頁面的方法
// 						window.location.href = homepageUrl;
// 					} else {
// 						alert("購買課程失敗");
// 					}
// 				},
// 				error : function() {
// 					alert("發生錯誤，請重試");
// 				}
// 			});
		});
	});

</script>


<body>
	<nav class="navbar" style="background-color: #ffffff; box-shadow: 0px 5px 5px rgba(0, 0, 0, 0.1);">
		<div class="container-fluid">
			<a class="navbar-brand" href="<c:url value="/homepage" />">5MART</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="#">取消</a>
				</li>
			</ul>
		</div>
	</nav>


	<div class="container-fluid p-0 ">	
		<div class="row no-gutters">
			<div class="col-md-7 left-background">
				<div class="content p-5">


					<h2 style="font-weight: bold;">結帳</h2>
					<br>
<!-- 					<h4 style="font-weight: bold;">付款方式</h4> -->
<!-- 					<br> -->



<!-- 
					<div class="accordion" id="accordionFlushExample"
						style="width: 350px">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="false" aria-controls="flush-collapseOne">
									<div class="form-check">
										<input class="form-check-input" type="radio"
											name="flexRadioDefault" id="flexRadioDefault1"> <label
											class="form-check-label" for="flexRadioDefault1"> <i
											class="bi bi-credit-card-2-back"></i> 信用卡
										</label>
									</div>
								</button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<div class="row">
										<div clas="col">持卡人姓名</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="input-group mb-3">
												<input type="text" class="form-control" placeholder="持卡人姓名"
													aria-label="Username" aria-describedby="basic-addon1">
											</div>
										</div>
									</div>

									<div class="row">
										<div clas="col">信用卡卡號</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="input-group mb-3">
												<input type="text" id="creditCardInput" class="form-control"
													placeholder="1234 5678 9123 4567" aria-label="Cardnumber"
													aria-describedby="basic-addon2" maxlength="19">
											</div>
											<script>
												// 获取输入字段
												const creditCardInput = document
														.getElementById('creditCardInput');

												// 添加事件监听器以在输入时添加分隔符
												creditCardInput
														.addEventListener(
																'input',
																function(event) {
																	let inputValue = event.target.value;
																	inputValue = inputValue
																			.replace(
																					/\s/g,
																					''); // 删除所有空格

																	if (inputValue.length > 19) {
																		inputValue = inputValue
																				.slice(
																						0,
																						19); // 限制最大长度为19
																	}

																	let formattedValue = '';

																	for (let i = 0; i < inputValue.length; i++) {
																		formattedValue += inputValue[i];
																		if ((i + 1) % 4 === 0
																				&& (i + 1) < inputValue.length) {
																			formattedValue += ' ';
																		}
																	}

																	event.target.value = formattedValue;
																});
											</script>

										</div>
									</div>

									<div class="row">
										<div class="col-6">到期日</div>
										<div class="col-6">信用卡安全碼</div>
									</div>

									<div class="row">
										<div class="col-6">
											<input type="text" class="form-control" placeholder="月月/年年"
												aria-label="Date" aria-describedby="basic-addon3"
												id="expiryDate" maxlength="7">

											<script>
												const expiryDateInput = document
														.getElementById('expiryDate');

												expiryDateInput
														.addEventListener(
																'input',
																function(event) {
																	let inputValue = event.target.value;
																	inputValue = inputValue
																			.replace(
																					/\D/g,
																					''); // 删除非数字字符

																	if (inputValue.length > 4) {
																		inputValue = inputValue
																				.slice(
																						0,
																						4);
																	}

																	let formattedValue = '';

																	if (inputValue.length > 2) {
																		formattedValue += inputValue
																				.slice(
																						0,
																						2)
																				+ '/';
																		formattedValue += inputValue
																				.slice(2);
																	} else {
																		formattedValue = inputValue;
																	}

																	event.target.value = formattedValue;
																});
											</script>

										</div>
										<div class="col-6">
											<input type="text" class="form-control" placeholder="CVC"
												aria-label="CVC" aria-describedby="basic-addon4"
												maxlength="3">
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingTwo">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
									aria-expanded="false" aria-controls="flush-collapseTwo">
									<div class="form-check">
										<input class="form-check-input" type="radio"
											name="flexRadioDefault" id="flexRadioDefault2"> <label
											class="form-check-label" for="flexRadioDefault2"> <i
											class="bi bi-coin"></i> 轉帳
										</label>
									</div>
								</button>
							</h2>
							<div id="flush-collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="flush-headingTwo"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<div class="row">
										<div class="rol">轉帳銀行：822</div>
									</div>

									<div class="row">
										<div class="rol">帳號：123456789123</div>
									</div>

								</div>
							</div>
						</div>
					</div>
-->
					<br>
					<h4 style="font-weight: bold">訂單詳細資料</h4>
					<br>
					
<!-- 					迭代購物車中的課程 -->
<%-- <c:forEach var="entry" items="${cart.content}"> --%>
<!--     <div class="row"> -->
<!--         <div class="col-2"> -->
<%--             <img src="${entry.value.dataUri}" width="50" height="50" /> --%>
<!--         </div> -->
<!--         <div class="col-7"> -->
<%--             <div>${entry.value.title}</div> --%>
<%--             <div>${entry.value.teacher.username}</div> --%>
<!--         </div> -->
<%--         <div class="col-3">$ ${entry.value.price}</div> --%>
<!--     </div> -->
<%-- </c:forEach> --%>

					<div class="row">
						<div class="col-2">
							<img src="${course.dataUri}" width="50" height="50" />
						</div>
						<div class="col-7">
							<div>${course.title}</div>
							<div>${course.teacher.username}</div>
						</div>
						<div class="col-3">$ ${course.price}</div>

					</div>

				</div>
			</div>
			
			<div class="col-md-5 right-background">
<!--     <div class="content p-3 "> -->
<!--         <h4 style="font-weight: bold;">摘要</h4> -->
        
<%--         <c:set var="totalPrice" value="0"/> --%>
        
<%--         <c:forEach var="item" items="${mycart}"> --%>
<%--             <c:set var="totalPrice" value="${totalPrice + item.value.price}"/> --%>
<%--         </c:forEach> --%>

<!--         <div class="row"> -->
<!--             <div class="col-4">金額：</div> -->
<%--             <div class="col-4">$ ${totalPrice}</div> --%>
<!--         </div> -->
        
<!--         <br> -->

<!--         <div class="row"> -->
<!--             <div class="col-4">折扣：</div> -->
<!--             <div class="col-4">$0</div>  -->
<!--         </div> -->
        
<!--         <div class="row"> -->
<!--             <div class="col-6"> -->
<!--                 <hr> -->
<!--             </div> -->
<!--         </div> -->

<!--         <div class="row" style="font-weight: bold;"> -->
<!--             <div class="col-4">總計：</div> -->
<%--             <div class="col-4">$ ${totalPrice}  --%>
<!--             </div> -->
<!--         </div> -->
    

			<div class="col-md-5 right-background">
				<div class="content p-3 ">

					<h4 style="font-weight: bold;">摘要</h4>

					<div class="row">
						<div class="col-4">金額：</div>
						<div class="col-4">$ ${course.price}</div>
					</div>

					<br>

					<div class="row">
						<div class="col-4">折扣：</div>
						<div class="col-4">$0</div>
					</div>

					<div class="row">
						<div class="col-6">
							<hr>
						</div>
					</div>

					<div class="row" style="font-weight: bold;">
						<div class="col-4">總計：</div>
						<div class="col-4">$ ${course.price}</div>
					</div>

					<br>
<%-- 					<a class="btn btn-custom checkOutBtn" data-course-id="${course.id}" data-member-id="${member.id}"  >完成結帳</a> --%>
					<a class="btn btn-custom checkOutBtn" target="_blank" href="<c:url value='/ECpay?courseId=${course.id}&memberId=${member.id} ' />">立即購買</a>
					<!-- <button type="button" class="btn btn-custom">完成結帳</button> -->
				</div>
			</div>
		</div>
	</div>

</body>

</html>