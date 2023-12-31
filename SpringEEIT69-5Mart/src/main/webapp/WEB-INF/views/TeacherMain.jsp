<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>5Mart線上教育平台</title>
<link rel="shortcut icon" href="\SpringEEIT69-5Mart\assets\images\favicon.ico" type="image/x-icon">
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
		<div class="col-xxl-2 col-3 d-flex flex-column p-3 bg-light">
			<a href="<c:url value="/homepage"></c:url>"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span style="font-size: 40px;"><i class="bi bi-5-square "></i>
					5mart</span>
			</a>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item pb-2"><a href="<c:url value="/TeacherMain"></c:url>"
					class="nav-link active" aria-current="page"> <span
						style="font-size: 32px;"><i class="bi bi-display"></i> 課程</span>
				</a></li>

				<li class="nav-item"><a
					href="<c:url value="/TeacherCreate"></c:url>"
					class="nav-link link-dark" aria-current="page"> <span
						style="font-size: 24px;">-  建立課程</span>
				</a></li>
				<li><a
					href="<c:url value="/TeacherCreateFundraisingCourses"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-  建立募資課程</span>
				</a></li>
				<li><a href="<c:url value="/TeacherCreateArticle"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-  建立文章</span>
				</a></li>
				<li><a href="<c:url value="/TeacherCourseList"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-  已開課內容 </span>
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
<!-- 		<div class="d-flex flex-column p-3 bg-light" style="width: 300px;"> -->
<!-- 			<ul class="nav nav-pills flex-column mb-auto"> -->
<!-- 				<li class="nav-item"><a -->
<%-- 					href="<c:url value="/TeacherCreate"></c:url>" --%>
<!-- 					class="nav-link link-dark" aria-current="page"> <span -->
<!-- 						style="font-size: 32px;"> 建立課程</span> -->
<!-- 				</a></li> -->
<!-- 				<li><a -->
<%-- 					href="<c:url value="/TeacherCreateFundraisingCourses"></c:url>" --%>
<!-- 					class="nav-link link-dark"> <span style="font-size: 32px;"> -->
<!-- 							建立募資課程</span> -->
<!-- 				</a></li> -->
<%-- 				<li><a href="<c:url value="/TeacherCreateArticle"></c:url>" --%>
<!-- 					class="nav-link link-dark"> <span style="font-size: 32px;"> -->
<!-- 							建立文章</span> -->
<!-- 				</a></li> -->
<%-- 				<li><a href="<c:url value="/TeacherCourseList"></c:url>" --%>
<!-- 					class="nav-link link-dark"> <span style="font-size: 32px;"> -->
<!-- 							已開課內容 </span> -->
<!-- 				</a></li> -->
<!-- 			</ul> -->
<!-- 			<hr> -->
<!-- 		</div> -->
		<div class="col-2"></div>
		<div class="col-4 d-flex align-items-center justify-content-center">
		<h1>這裡是課程頁面</h1>
		</div>
		<div class="col-xxl-2 col-1"></div>
	</div>


</body>
</html>