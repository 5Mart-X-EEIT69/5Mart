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
</head>
<script type="text/javascript">

	function deleteCourse(courses,title) {
		if (confirm('確定要刪除課程ID: ' + courses + '， ' + title + '  這門課程?')) {
			let curl  = '<c:url value="/TeacherDelete/' + courses +' "/>' ;
            $.ajax({
                url: curl,
                type: 'DELETE',
                success: function(response){
                   	console.log("成功",response);
                   	alert("刪除成功，將跳轉至已開課內容");
                   	window.location.href = '<c:url value="/TeacherCourseList" />';
                },
                error: function(response){
                    console.log("失敗",response);
                }
            })
			console.log(curl);
		} else {
		}
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
				<li class="pe-5"><a href="<c:url value="/TeacherCourseList"></c:url>"
					class="nav-link active"> <span style="font-size: 24px;">-  已開課內容 </span>
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
        <div class="col-1">test</div>
        <div class="col-7 pb-3" style="padding: 72px 0 0;">
            <h1>課程總覽</h1>
            <hr />
            <h4>已開課內容</h4>
            <div class="accordion" id="accordionPanelsStayOpenExample">
            <c:forEach var="courses" items="${course}">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading-${courses.id}">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapse-${courses.id}" aria-expanded="false"
                            aria-controls="#collapse-${courses.id}">
                            <img src="${courses.dataUri}" alt="twbs" width="48" height="48" class="rounded flex-shrink-0">
                            <div class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3">
                                <div>
                                    <h6 class="mb-0 fs-4 fw-bolder">${courses.title}</h6>
                                    <p class="mb-0 opacity-50 fw-bolder" style="color:red;">目前已有"還沒做"位學生購買課程</p>
                                </div>
                            </div>
                        </button>
                    </h2>
                    <div id="collapse-${courses.id}" class="accordion-collapse collapse"
                        aria-labelledby="heading-${courses.id}">
                        <div class="accordion-body">
                            <div class="d-flex align-items-center flex-wrap">
                                <label class="col-2">導師</label>
                                <label class="col-2">開課時間</label>
                                <label class="col-2 px-3">瀏覽課程人次</label>
                                <label class="col-2">購買課程人次</label>
                                <label class="col-2">平均評價</label>
                                <label class="col-2 ps-2">功能</label>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center flex-wrap">
                                <span class="col-2">(還沒做)</span>
                                <span class="col-2">${courses.registerTime}</span>
                                <span class="col-2 px-3">(還沒做)</span>
                                <span class="col-2 ps-2">(還沒做)</span>
                                <span class="col-2">(還沒做)</span>
                                <div class="col-2 d-flex flex-column">
                                
                                    <button class="btn btn-link m-0 ps-2" style="text-align: left;"><a href="<c:url value="/TeacherEdit/${courses.id}"/>">編輯課程</a></button>
                                    <button class="btn btn-link m-0 ps-2" style="text-align: left;">編輯影片</button>
                                    <button class="btn btn-link m-0 ps-2" style="text-align: left;" onclick="deleteCourse('${courses.id}','${courses.title}')">刪除課程</button>
                                </div>                                
                            </div>
                            <hr>
                        </div>
                    </div>
                </div>            
            </c:forEach>
<!--                 <div class="accordion-item"> -->
<!--                     <h2 class="accordion-header" id="panelsStayOpen-headingTwo"> -->
<!--                         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" -->
<!--                             data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" -->
<!--                             aria-controls="panelsStayOpen-collapseTwo"> -->
<%--                             <img src="<c:url value="/assets/images/godtone.jpg" />" alt="twbs" width="48" height="48" class="rounded flex-shrink-0"> --%>
<!--                             <div class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3"> -->
<!--                                 <div> -->
<!--                                     <h6 class="mb-0 fs-4 fw-bolder">JAVA從入門到放棄</h6> -->
<!--                                     <p class="mb-0 opacity-50 fw-bolder" style="color:red;">目前已有12位學生購買課程</p> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </button> -->
<!--                     </h2> -->
<!--                     <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" -->
<!--                         aria-labelledby="panelsStayOpen-headingTwo"> -->
<!--                         <div class="accordion-body"> -->
<!--                             <div class="d-flex align-items-center flex-wrap"> -->
<!--                                 <label class="col-2">導師</label> -->
<!--                                 <label class="col-2">開課時間</label> -->
<!--                                 <label class="col-2 px-3">瀏覽課程人次</label> -->
<!--                                 <label class="col-2">購買課程人次</label> -->
<!--                                 <label class="col-2">平均評價</label> -->
<!--                                 <label class="col-2 ps-2">功能</label> -->
<!--                             </div> -->
<!--                             <hr> -->
<!--                             <div class="d-flex align-items-center flex-wrap"> -->
<!--                                 <span class="col-2">張嘉航</span> -->
<!--                                 <span class="col-2">2023/9/15</span> -->
<!--                                 <span class="col-2 px-3">123456</span> -->
<!--                                 <span class="col-2 ps-2">12</span> -->
<!--                                 <span class="col-2">4.7星</span> -->
<!--                                 <div class="col-2 d-flex flex-column"> -->
<!--                                     <button class="btn btn-link m-0 ps-2" style="text-align: left;">編輯課程</button> -->
<!--                                     <button class="btn btn-link m-0 ps-2" style="text-align: left;">刪除課程</button> -->
<!--                                 </div>                                 -->
<!--                             </div> -->
<!--                             <hr> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="accordion-item"> -->
<!--                     <h2 class="accordion-header" id="panelsStayOpen-headingThree"> -->
<!--                         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" -->
<!--                             data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" -->
<!--                             aria-controls="panelsStayOpen-collapseThree"> -->
<%--                             <img src="<c:url value="/assets/images/godtone.jpg" />" alt="twbs" width="48" height="48" class="rounded flex-shrink-0"> --%>
<!--                             <div class="d-flex gap-2 w-100 justify-content-between align-items-center ps-3"> -->
<!--                                 <div> -->
<!--                                     <h6 class="mb-0 fs-4 fw-bolder">JAVA從入門到放棄</h6> -->
<!--                                     <p class="mb-0 opacity-50 fw-bolder" style="color:red;">目前已有7位學生購買課程</p> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </button> -->
<!--                     </h2> -->
<!--                     <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" -->
<!--                         aria-labelledby="panelsStayOpen-headingThree"> -->
<!--                         <div class="accordion-body"> -->
<!--                             <div class="d-flex align-items-center flex-wrap"> -->
<!--                                 <label class="col-2">導師</label> -->
<!--                                 <label class="col-2">開課時間</label> -->
<!--                                 <label class="col-2 px-3">瀏覽課程人次</label> -->
<!--                                 <label class="col-2">購買課程人次</label> -->
<!--                                 <label class="col-2">平均評價</label> -->
<!--                                 <label class="col-2 ps-2">功能</label> -->
<!--                             </div> -->
<!--                             <hr> -->
<!--                             <div class="d-flex align-items-center flex-wrap"> -->
<!--                                 <span class="col-2">張嘉航</span> -->
<!--                                 <span class="col-2">2023/9/15</span> -->
<!--                                 <span class="col-2 px-3">123456</span> -->
<!--                                 <span class="col-2 ps-2">7</span> -->
<!--                                 <span class="col-2">4.7星</span> -->
<!--                                 <div class="col-2 d-flex flex-column"> -->
<!--                                     <button class="btn btn-link m-0 ps-2" style="text-align: left;">編輯課程</button> -->
<!--                                     <button class="btn btn-link m-0 ps-2" style="text-align: left;">刪除課程</button> -->
<!--                                 </div>                                 -->
<!--                             </div> -->
<!--                             <hr> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
        </div>
        <div class="col-2">
			<form action="#" method='POST'>
<!-- 			編輯課程用 -->
				<!--        <input id='id' name='id' value=''> -->
			</form>
		</div>
    </div>


</body>
</html>