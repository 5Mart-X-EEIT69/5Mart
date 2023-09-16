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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->
<style type="text/css">
.bubbleWrapper {
	padding: 10px 10px;
	display: flex;
	justify-content: flex-end;
	flex-direction: column;
	align-self: flex-end;
	color: #fff;
}

.inlineContainer {
	display: inline-flex;
}

.inlineContainer.own {
	flex-direction: row-reverse;
}

.inlineIcon {
	width: 20px;
	object-fit: contain;
}

.ownBubble {
	min-width: 60px;
	max-width: 700px;
	padding: 14px 18px;
	margin: 6px 8px;
	background-color: #5b5377;
	border-radius: 16px 16px 0 16px;
	border: 1px solid #443f56;
}

.otherBubble {
	min-width: 60px;
	max-width: 700px;
	padding: 14px 18px;
	margin: 6px 8px;
	background-color: #6C8EA4;
	border-radius: 16px 16px 16px 0;
	border: 1px solid #54788e;
}

.own {
	align-self: flex-end;
}

.other {
	align-self: flex-start;
}

span.own, span.other {
	font-size: 14px;
	color: grey;
}
</style>
</head>
<script type="text/javascript">
	window.onload = function() {

	}
</script>
<body>
	<div class="d-flex flex-row min-vh-100">
		<div class="col-2 d-flex flex-column p-3 bg-light">
			<a href="<c:url value="/"></c:url>"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span style="font-size: 40px;"><i class="bi bi-5-square "></i>
					5mart</span>
			</a>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item"><a
					href="<c:url value="/TeacherMain"></c:url>"
					class="nav-link link-dark" aria-current="page"> <span
						style="font-size: 32px;"><i class="bi bi-display"></i> 課程</span>
				</a></li>
				<li class="pb-2"><a
					href="<c:url value="/TeacherComminicate"></c:url>"
					class="nav-link active"> <span style="font-size: 32px;"><i
							class="bi bi-chat-left" style="font-size: 32px;"></i> 學生交流</span>
				</a></li>

				<li class="nav-item"><a
					href="<c:url value="/TeacherComminicateQA"></c:url>"
					class="nav-link link-dark" aria-current="page"> <span
						style="font-size: 24px;">- 問與答</span>
				</a></li>
				<li class="pe-5"><a
					href="<c:url value="/TeacherComminicateMessage"></c:url>"
					class="nav-link active"> <span style="font-size: 24px;">-
							私人訊息</span>
				</a></li>
				<%-- 				<li ><a href="<c:url value="/TeacherComminicateTask"></c:url>" class="nav-link link-dark"> <span --%>
				<!-- 						style="font-size: 24px;">-  作業</span> -->
				<!-- 				</a></li> -->
				<li><a
					href="<c:url value="/TeacherComminicateAnnouncement"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							公告 </span>
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
		<div class="col-2 border rounded max-vh-100" style="overflow-y: scroll;">
			<div class="my-2">
				<h4 class="ps-3">私人訊息</h4>
				<div class="list-group">
					<a href="#"	class="list-group-item list-group-item-action active d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
					<a href="#"	class="list-group-item list-group-item-action d-flex" aria-current="true">
						<div class="col-2">
							<i class="bi bi-person-circle fs-1 me-1"></i>
						</div>
						<div class="col-10 pt-1">
							<div class="d-flex justify-content-between">
								<h5 class="mb-1">用戶名稱</h5>
								<small>2023/9/16 12:12</small>
							</div>
							<p class="mb-1 text-truncate">你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，你好，</p>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-6">
			<div style="overflow-y: scroll; max-height: 95vh;">
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">08:41</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer own">
						<img class="inlineIcon"
							src="https://www.pinclipart.com/picdir/middle/205-2059398_blinkk-en-mac-app-store-ninja-icon-transparent.png">
						<div class="ownBubble own">都是抄來的</div>
					</div>
					<span class="own">08:55</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">全部都是抄來的</div>
					</div>
					<span class="other">10:13</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer own">
						<img class="inlineIcon"
							src="https://www.pinclipart.com/picdir/middle/205-2059398_blinkk-en-mac-app-store-ninja-icon-transparent.png">
						<div class="ownBubble own">抄來的</div>
					</div>
					<span class="own">11:07</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer">
						<img class="inlineIcon"
							src="https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png">
						<div class="otherBubble other">抄來的</div>
					</div>
					<span class="other">11:11</span>
				</div>
				<div class="bubbleWrapper">
					<div class="inlineContainer own">
						<img class="inlineIcon"
							src="https://www.pinclipart.com/picdir/middle/205-2059398_blinkk-en-mac-app-store-ninja-icon-transparent.png">
						<div class="ownBubble own">都是抄來的</div>
					</div>
					<span class="own">12:12</span>
				</div>
			</div>
			<div class="input-group" style="min-height: 5vh">
				<input type="text" class="form-control" aria-describedby="send">
				<button class="btn btn-outline-secondary" type="button"	id="send">送出</button>
			</div>
		</div>
		<div class="col-2">test</div>
</body>
</html>