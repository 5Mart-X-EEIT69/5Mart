<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>5mart講師頁面</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->
<!-- bootstrap -->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->
<!-- stepper -->
<link rel='stylesheet'
	href="https://cdn.jsdelivr.net/npm/bs-stepper/dist/css/bs-stepper.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
<!-- stepper -->
</head>
<script type="text/javascript">
	window.onload()
	{

	}
</script>
<body>
	<div class="d-flex flex-row min-vh-100">
		<div class="d-flex flex-column p-3 bg-light" style="width: 300px;">
			<a href="<c:url value="/"></c:url>"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span style="font-size: 40px;"><i class="bi bi-5-square "></i>
					5mart</span>
			</a>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item pb-2"><a
					href="<c:url value="/TeacherMain"></c:url>" class="nav-link active"
					aria-current="page"> <span style="font-size: 32px;"><i
							class="bi bi-display"></i> 課程</span>
				</a></li>

				<li class="nav-item pe-5"><a
					href="<c:url value="/TeacherCreate"></c:url>"
					class="nav-link active " aria-current="page"> <span
						style="font-size: 24px;">- 建立課程</span>
				</a></li>

				<li><a
					href="<c:url value="/TeacherCreateFundraisingCourses"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							建立募資課程</span>
				</a></li>
				<li><a href="<c:url value="/TeacherCreateArticle"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							建立文章</span>
				</a></li>
				<li><a href="<c:url value="/TeacherCourseList"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							已開課內容 </span>
				</a></li>

				<li><a href="<c:url value="/TeacherComminicate"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 32px;"><i
							class="bi bi-chat-left" style="font-size: 32px;"></i> 學生交流</span>
				</a></li>
				<li><a href="<c:url value="/TeacherDashboard"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 32px;"><i
							class="bi bi-graph-up"></i> 儀表板</span>
				</a></li>
				<li><a href="<c:url value="/TeacherInformation"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 32px;"><i
							class="bi bi-award-fill"></i> 講師個人資料 </span>
				</a></li>
			</ul>
			<hr>
		</div>
		<!-- 		選單右邊 -->
		<h3 class="text-center">茶包弓箭組商品登錄</h3>
		<form class="container">
			<div class="bs-stepper">
				<div class="bs-stepper-header" role="tablist">
					<div class="step" data-target="#step1">
						<button type="button" class="step-trigger" role="tab">
							<span class="bs-stepper-circle">1</span> <span
								class="bs-stepper-label">商品資料</span>
						</button>
					</div>
					<div class="line"></div>
					<div class="step" data-target="#step2">
						<button type="button" class="step-trigger" role="tab">
							<span class="bs-stepper-circle">2</span> <span
								class="bs-stepper-label">連絡資訊</span>
						</button>
					</div>
					<div class="line"></div>
					<div class="step" data-target="#step3">
						<button type="button" class="step-trigger" role="tab">
							<span class="bs-stepper-circle">3</span> <span
								class="bs-stepper-label">送出資料</span>
						</button>
					</div>
					<div class="line"></div>
					<div class="step" data-target="#step4">
						<button type="button" class="step-trigger" role="tab">
							<span class="bs-stepper-circle">4</span> <span
								class="bs-stepper-label">完成登錄</span>
						</button>
					</div>
				</div>
				<div class="bs-stepper-content">
					<div id="step1" class="content" role="tabpanel">
						<div class="form-group">
							<label> 商品型號 </label> <select class="form-control">
								<option>百步穿揚組合包</option>
								<option>例無虛發同綁包</option>
								<option>亂槍打鳥特大包</option>
							</select>
						</div>
						<div class="form-group">
							<label> 商品序號 </label> <input class="form-control" />
						</div>
						<div>
							<button type="button" onclick="stepper.next()">下一步</button>
						</div>
					</div>
					<div id="step2" class="content" role="tabpanel">
						<div class="form-group">
							<label>姓名</label> <input class="form-control" />
						</div>
						<div class="form-group">
							<label>手機號碼</label> <input class="form-control" />
						</div>
						<div>
							<button type="button" onclick="stepper.previous()">上一步</button>
							<button type="button" onclick="stepper.next()">下一步</button>
						</div>
					</div>
					<div id="step3" class="content" role="tabpanel">
						<div class="form-group">
							<label>電子郵件</label> <input type="email" class="form-control" />
						</div>
						<div class="form-group">
							<label> <input type="checkbox"> 我願意收到優惠活動及商品資訊
							</label>
						</div>
						<div>
							<button type="button" onclick="stepper.previous()">上一步</button>
							<button type="button" onclick="simulateSubmit()">確認送出</button>
						</div>
					</div>
					<div id="step4" class="content" role="tabpanel">
						<div class="alert alert-success">
							感謝您購買本公司商品並完成線上登錄，祝茶包退散，永不來犯。</div>
					</div>
				</div>
			</div>
		</form>
		<script>
			var stepperElem = document.querySelector('.bs-stepper');
			var stepper = new Stepper(stepperElem);
			var done = false;
			var currStep = 1;
			history.pushState(currStep, '');
			//切換到步驟前觸發，呼叫e.preventDefault()可阻止切換
			stepperElem.addEventListener("show.bs-stepper", function(e) {
				if (done) { //若程序完成，不再切換
					e.preventDefault();
					return;
				}
			});
			//切換到步驟後觸發，e.detail.indexStep為目前步驟序號(從0開始)
			stepperElem.addEventListener("shown.bs-stepper", function(e) {
				var idx = e.detail.indexStep + 1;
				currStep = idx;
				//pushState()記下歷程以支援瀏覽器回上頁功能
				history.pushState(idx, '');
			})
			//瀏覽器上一頁下一頁觸發
			window.onpopstate = function(e) {
				if (e.state && e.state != currStep)
					stepper.to(e.state);
			};
			//模擬送出表單，註記已完成，不再允許切換步驟
			function simulateSubmit() {
				stepper.next();
				done = true;
			}
		</script>
		<div><button type="button" onclick="" >test</button></div>
		
	</div>

</body>
</html>