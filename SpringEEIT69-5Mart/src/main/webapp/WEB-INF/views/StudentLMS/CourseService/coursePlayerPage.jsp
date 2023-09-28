<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 響應式的引入 -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 響應式的引入 -->

<title>課程學習播放器頁面</title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->

<!-- bootstrap 公版-->
<link rel='stylesheet' href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />" type="text/css" />

<!-- <link rel='stylesheet' -->
<%-- 	href="<c:url value=" --%>
<%-- 				/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />" --%>
<!-- 	type="text/css" /> -->
<!-- bootstrap 公版-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- google fonts的icon庫引入 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />
<!-- google fonts的icon庫引入 -->

<!-- font awesome的icon庫引入 -->
<script src="https://kit.fontawesome.com/7ae43304d6.js" crossorigin="anonymous"></script>
<!-- font awesome的icon庫引入 -->

<!-- <!-- CDN引入 -->
<!-- <link -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" -->
<!-- 	crossorigin="anonymous" /> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<!-- <!-- CDN引入 -->


<link rel='stylesheet' href="<c:url value='/assets/css/teacherNavBar.css' />" type="text/css" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@600&family=Noto+Serif+TC:wght@200;700&display=swap" rel="stylesheet">


<style type="text/css">
</style>
 <style>
      /* 自定義CSS，讓tab分頁佔滿寬度 */
      .tab-pane {
        width: 100%;
      }
 </style>
</head>

<body>
	<div class="main-container d-flex">
		<div class="sidebar" id="side_nav">
			<div class="header-box ms-2 px-2 pt-3 pb-4 d-flex justify-content-between">
				<h1 class="fs-4">
					<span class="bg-white text-dark rounded shadow px-2 me-2">S</span><span class="text-white me-2">mart</span>
				</h1>
				<button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
					<i class="fa-solid fa-bars-staggered"></i>
				</button>
			</div>
			<hr class="h-color mx-2">
		</div>
		<div class="content">
			<nav class="navbar navbar-expand-md navbar-light bg-light">
				<div class="container-fluid">
					<div class="d-flex justify-content-between d-md-none d-block">
						<button class="btn px-1 py-0 open-btn me-2">
							<i class="fa-solid fa-bars-staggered"></i>
						</button>
						<a class="navbar-brand fs-4" href="#"><span class="bg-dark text-white rounded shadow px-2 py-0">5</span>mart</a>

					</div>
					<button class="navbar-toggler p-0 border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa-solid fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">profile</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="dashboard-content px-3 pt-4">
				<h2 class="fs-5">dashboard</h2>
				<p>這裡可以填入內容</p>
				 <div class="container mt-5">
      <h1>課程名稱</h1>
      <!-- 使用 Bootstrap Grid System 進行布局 -->
      <div class="row">
        <!-- 影片播放器 -->
        <div class="col-md-8">
          <iframe
            id="Youtube_GodKnows"
            src="https://www.youtube.com/embed/WWB01IuMvzA?si=WCmvsCL27PkLCdWk"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            allowfullscreen
          ></iframe>
        </div>
        <!-- 章節和單元的選單（手風琴） -->
        <div class="col-md-4">
          <!-- 主手風琴：章節 -->
          <!-- 主手風琴：章節 -->
          <div class="accordion" id="mainAccordion">
            <!-- 章節1 -->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#chapter1"
                >
                  章節1
                </button>
              </h2>
              <div
                id="chapter1"
                class="accordion-collapse collapse"
                data-bs-parent="#mainAccordion"
              >
                <div class="accordion-body">
                  <!-- 子手風琴：單元 -->
                  123
                  <div class="accordion" id="accordionExample">
						<c:forEach items="${courseData.chapter}" var="chapter">
							<div class="accordion-item">
								<h2 class="accordion-header">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse"
										data-bs-target="#collapse${chapter.chapterId}"
										aria-expanded="false" aria-controls="collapseOne">${chapter.chapterName}</button>
								</h2>
								<div id="collapse${chapter.chapterId}"
									class="accordion-collapse collapse ">
									<div class="accordion-body">
										<ul class="list-group list-group-flush">
											<c:forEach items="${chapter.unit}" var="unit">
												<li class="list-group-item">
													<div class="d-flex w-100 justify-content-between">
														<h5 class="mb-1">${unit.unitName}</h5>
														<small>07:20</small>
													</div>
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
					123
                </div>
              </div>
            </div>
            <!-- 章節2 -->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#chapter2"
                >
                  章節2
                </button>
              </h2>
              <div
                id="chapter2"
                class="accordion-collapse collapse"
                data-bs-parent="#mainAccordion"
              >
                <div class="accordion-body">
                  <!-- 子手風琴：單元 -->
                  <div class="accordion" id="unitAccordion2">
                    <!-- 單元1 -->
                    <div class="accordion-item">
                      <h3 class="accordion-header">
                        <button
                          class="accordion-button"
                          type="button"
                          data-bs-toggle="collapse"
                          data-bs-target="#unit2-1"
                        >
                          單元1
                        </button>
                      </h3>
                      <div
                        id="unit2-1"
                        class="accordion-collapse collapse"
                        data-bs-parent="#unitAccordion2"
                      >
                        <div class="accordion-body">
                          <!-- 課程影片按鈕 -->
                          <button>影片2-1</button>
                        </div>
                      </div>
                    </div>
                    <!-- 單元2 -->
                    <div class="accordion-item">
                      <h3 class="accordion-header">
                        <button
                          class="accordion-button"
                          type="button"
                          data-bs-toggle="collapse"
                          data-bs-target="#unit2-2"
                        >
                          單元2
                        </button>
                      </h3>
                      <div
                        id="unit2-2"
                        class="accordion-collapse collapse"
                        data-bs-parent="#unitAccordion2"
                      >
                        <div class="accordion-body">
                          <!-- 課程影片按鈕 -->
                          <button>影片2-2</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Tab分頁 -->
      <div class="mt-5">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" href="#overview" data-bs-toggle="tab"
              >課程總覽</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#qa" data-bs-toggle="tab">問與答</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#reviews" data-bs-toggle="tab">評論</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="overview">
            這裡是課程總覽。
            <!-- course overview code START -->
            <div class="container">
              <div class="row">
                <div>
                  <h3 style="font-weight: bold">關於此課程</h3>
                </div>
                <div>
                  Spring Boot 3: Learn Spring 6, Spring Core, Spring REST,
                  Spring MVC, Spring Security, Thymeleaf, JPA, Hibernate, MySQL
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">依編號</div>
                <div class="col-4">
                  <div>技能等級: 所有級別</div>
                  <div>學生: 333617</div>
                  <div>語言: 英語</div>
                  <div>字幕: 是</div>
                </div>
                <div class="col-4">
                  <div>講座: 366</div>
                  <div>影片: 總計 31 小時</div>
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">證書</div>
                <div class="col-4">
                  <div>完成整門課程，取得 Udemy 證書</div>
                  <br />
                  <div>
                    <div class="d-grid gap-2 col-6">
                      <button type="button" class="btn btn-outline-dark">
                        Udemy 證書
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">說明</div>
                <div class="col-4">
                  <div>
                    NEW FOR SPRING BOOT 3 AND SPRING 6 POPULAR IDE - IntelliJ
                    (free version) #1 BEST SELLING SPRING BOOT & HIBERNATE
                    COURSE ON UDEMY - 320,000+ STUDENTS ENROLLED OVER 70,000
                    REVIEWS - 5 STARS! THIS COURSE COVERS SPRING BOOT 3 AND
                    SPRING 6 LEARN these HOT TOPICS in Spring Boot 3 and Spring
                    6: Spring Boot 3 Spring Framework 6 Spring Boot 3 Core
                    Spring Boot 3 Annotations Spring Boot 3 Java Configuration
                    (all Java, no xml) Spring Boot 3 and Spring MVC Spring Boot
                    3 Hibernate/JPA CRUD Spring Boot 3 Security Spring Boot 3
                    REST API Maven
                  </div>
                </div>
              </div>
              <br />
              <div class="row">
                <hr />
              </div>
              <br />
              <div class="row">
                <div class="col-4">講師</div>
                <div class="col-4">
                  <div class="row">
                    <div class="col-3">
                      <img
                        src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg"
                        alt="xxxx"
                        style="max-width: 80px; max-height: 80px"
                      />
                    </div>
                    <div class="col-8">講師名稱</div>
                  </div>
                  <br />
                  <div class="row">
                    講師簡介 Chád (shod) Darby is an author, instructor and
                    speaker in the Java development world. Chád is a
                    contributing author to several Java books, including
                    Professional Java E-Commerce (Wrox Press), Beginning Java
                    Networking (Wrox Press), and XML and Web Services Unleashed
                    (Sams Publishing). Chád has Java certifications from Oracle
                    and IBM. He holds a B.S. in Computer Science from Carnegie
                    Mellon University.
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- course overview code END -->
          <div class="tab-pane" id="qa">這裡是問與答。</div>
          <div class="tab-pane" id="reviews">這裡是評論。</div>
        </div>
      </div>
    </div>
				<p>這裡可以填入內容</p>
			</div>
		</div>

	</div>


	<!-- CDN引入 -->
	<!-- 		<script -->
	<!-- 			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" -->
	<!-- 			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" -->
	<!-- 			crossorigin="anonymous"></script> -->
	<!-- 	<script -->
	<!-- 		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" -->
	<!-- 		integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" -->
	<!-- 		crossorigin="anonymous"></script> -->
	<!-- CDN引入 -->

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- bootstrap -->
	<script type="text/javascript">
		$(".sidebar ul li").on('click', function() {
			$(".sidebar ul li.active").removeClass('active');
			$(this).addClass('active');
		})


		$(".sidebar ul li").mouseenter(function() {
			$(this).find('.fa-solid').css("color", "#123");
			
		})

		$(".sidebar ul li").mouseleave(function() {
			$(this).find('.fa-solid').css("color", "#eee");
		})

		$(".open-btn").on('click', function() {
			$(".sidebar").addClass('active');
		})

		$(".close-btn").on('click', function() {
			$(".sidebar").removeClass('active');
		})
	</script>


</body>
</html>