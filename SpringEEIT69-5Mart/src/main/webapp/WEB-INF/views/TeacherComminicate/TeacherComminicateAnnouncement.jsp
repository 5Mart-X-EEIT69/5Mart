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
<!-- 公告的CSS -->
<link rel='stylesheet'
	href="<c:url value='/assets/css/Announcement.css' />"
	type="text/css" />
</head>
<!-- 公告的CSS -->
<script type="text/javascript">
	window.onload = function() {

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
				<li><a
					href="<c:url value="/TeacherComminicateMessage"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							私人訊息</span>
				</a></li>
				<li class="pe-5"><a
					href="<c:url value="/TeacherComminicateAnnouncement"></c:url>"
					class="nav-link active"> <span style="font-size: 24px;">-
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
		<div class="col-1"></div>
		<div class="col-7 pb-3" style="padding: 72px 0 0;">
			    
        <h1>公告</h1>
        <hr />
        <h4>課程總覽</h4>
        <div class="accordion" id="accordionPanelsStayOpenExample">
		<c:forEach var="courses" items="${course}">
    <div class="accordion-item">
        <h2 class="accordion-header" id="heading-${courses.id}">
            <button class="accordion-button collapsed" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#collapse-${courses.id}" aria-expanded="false"
                    aria-controls="collapse-${courses.id}">
                <img src="${courses.dataUri}" alt="course image" width="48"
                     height="48" class="rounded flex-shrink-0">
                <div class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3">
                    <div>
                        <h6 class="mb-0 fs-4 fw-bolder">${courses.title}</h6>
                        <p class="mb-0 opacity-50 fw-bolder" style="color: red;"> ${empty courses.announcement ? "目前尚未設置公告" : ""}</p>
                    </div>
                </div>
            </button>
        </h2>
        <div id="collapse-${courses.id}" class="accordion-collapse collapse"
             aria-labelledby="heading-${courses.id}">
            <div class="accordion-body">
                <div class="d-flex align-items-center flex-wrap">
                    <label class="col-2">公告時間</label>
                    <label class="col-8 px-3">內容</label>
                    <label class="col-2 ps-2">功能</label>
                </div>
                <hr>
                <div class="d-flex align-items-center flex-wrap">
                    <span class="col-2 " >${courses.announcement.announcementTime}</span>
                    <span class="col-8 px-3">${courses.announcement.content}</span>
                    <button class="col-2 btn btn-link m-0 ps-2" style="text-align: left;" data-bs-toggle="modal" data-bs-target="#announcementModal-${courses.id}">新增/修改</button>
                </div>
                <hr>
            </div>
        </div>
    </div>
    
    <!-- 模態框，用於新增或修改公告 -->
    <div class="modal fade" id="announcementModal-${courses.id}" tabindex="-1" aria-labelledby="announcementModalLabel-${courses.id}" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="announcementModalLabel-${courses.id}">${empty courses.announcement.content ? "新增" : "修改"} 公告</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="<c:url value='/updateAnnouncement'/>" method="post">
                    <div class="modal-body">
                        <textarea class="form-control" name="announcementContent" rows="4">${courses.announcement.content}</textarea>
                        <input type="hidden" name="courseId" value="${courses.id}">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">關閉</button>
                        <input type="submit" class="btn btn-primary" value="保存修改">
                    </div>
                </form>
            </div>
        </div>
    </div>
</c:forEach>
        </div>
    </div>
		<div class="col-xxl-2 col-1">			
		</div>

	</div>


<script>
    function formatDate(timestamp) {
        var date = new Date(timestamp);
        var year = date.getFullYear();
        var month = String(date.getMonth() + 1).padStart(2, '0');
        var day = String(date.getDate()).padStart(2, '0');
        var hours = String(date.getHours()).padStart(2, '0');
        var minutes = String(date.getMinutes()).padStart(2, '0');
        var seconds = String(date.getSeconds()).padStart(2, '0');
        return year + '-' + month + '-' + day + ' ' + hours + ':' + minutes + ':' + seconds;
    }
</script>


</body>
</html>