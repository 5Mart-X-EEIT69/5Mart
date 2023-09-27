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
<style type="text/css">
.nav-link {
	font-weight: bolder;
}

</style>

</head>
<script type="text/javascript">
	window.onload = function(){


	}
</script>
<body>
	<div class="d-flex flex-row min-vh-100">
		<div class="col-2 d-flex flex-column p-3 bg-light">
			<a href="<c:url value="/homepage"></c:url>"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span style="font-size: 40px;"><i class="bi bi-5-square "></i>
					5mart</span>
			</a>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item"><a href="<c:url value="/TeacherMain"></c:url>" class="nav-link link-dark"
					aria-current="page"> <span style="font-size: 32px;"><i
							class="bi bi-display"></i> 課程</span>
				</a></li>
				<li><a href="<c:url value="/TeacherComminicate"></c:url>" class="nav-link link-dark"> <span
						style="font-size: 32px;"><i class="bi bi-chat-left"
							style="font-size: 32px;"></i> 學生交流</span>
				</a></li>
				<li><a href="<c:url value="/TeacherDashboard"></c:url>" class="nav-link link-dark"> <span
						style="font-size: 32px;"><i class="bi bi-graph-up"></i> 儀表板</span>
				</a></li>
				<li class="nav-item pb-2"><a href="<c:url value="/TeacherInformation"></c:url>" class="nav-link active"> <span
						style="font-size: 32px;"><i class="bi bi-award-fill"></i>
							講師個人資料 </span>
				</a></li>
				
				<li class="nav-item"><a href="<c:url value="/TeacherInformationPhoto"></c:url>" class="nav-link link-dark"
					aria-current="page"> <span style="font-size: 24px;">-  講師照片</span>
				</a></li>
				<li class="pe-5"><a href="<c:url value="/TeacherInformationIntroduction"></c:url>" class="nav-link active"> <span
						style="font-size: 24px;">-  自我介紹</span>
				</a></li>
				<li><a href="<c:url value="/TeacherInformationAccount"></c:url>" class="nav-link link-dark"> <span
						style="font-size: 24px;">-  收款帳戶 </span>
				</a></li>
				
			</ul>
			<hr>
		</div>
<!-- 		選單右邊 -->
		<div class="col-2">test</div>
		<div class="col-4 d-flex align-items-center">
		
			<form action="<c:url value="/introduction" />" method="post" class="w-100 mb-3" onsubmit="return sumbit()">
					<div class="d-flex">
						<h1>自我介紹</h1>
					</div>
					<hr>			
					<label for="introduction" class="form-label mt-3">輸入你的自我介紹吧!(選填)</label>
					<textarea class="form-control" id="IntroductionText" rows="3" name="IntroductionText"></textarea>
					
					<label for="skill" class="form-label mt-3">輸入你的專長吧!(選填)</label>
					<textarea class="form-control" id="Expertise" rows="3" name="Expertise"></textarea>
					
					<label for="blog" class="form-label mt-3">宣傳你的個人部落格吧(選填)</label>
					<input type="url" class="form-control" id="Blog" placeholder="https://..." name="Blog">
					
					<label for="youtube" class="form-label mt-3">宣傳你的個人Youtube吧(選填)</label>
					<input type="url" class="form-control" id="Youtube" placeholder="https://www.youtube.com/..." name="Youtube">
					
					<label for="facebook" class="form-label mt-3">宣傳你的個人Facebook吧(選填)</label>
					<input type="url" class="form-control" id="Facebook" placeholder="https://www.facebook.com/..." name="Facebook">

					<div class="d-flex justify-content-center">
						<button type="submit" class="btn btn-secondary mt-3">送出</button>
					</div>
			</form>
		</div>
		<div class="col-4">test</div>
	</div>
	<script type="text/javascript">
	function sumbit() {
		if (confirm("確定要更新個人資訊嗎?") == true) {
				return true;
			} else {
				return false;
			}
		}
	</script>

</body>
</html>