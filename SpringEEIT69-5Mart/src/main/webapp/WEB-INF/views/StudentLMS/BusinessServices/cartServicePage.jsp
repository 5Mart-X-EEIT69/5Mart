<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content=""/>
        <title>Student LMS Dashboard</title>
        <!-- Bootstrap core CSS -->
        <link href="bootstrap_theme/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- Custom styles for this template -->
        <link href="dashboard.css" rel="stylesheet"/>
        <link href="chartjs.css" rel="stylesheet"/>
        <link rel="stylesheet" href="/Pingendo/assets/css/teacherNavBar.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
        <!-- <link rel='stylesheet' -->
        <!-- 	type="text/css" /> -->
        <!-- bootstrap 公版-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
        <!-- google fonts的icon庫引入 -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0"/>
        <!-- google fonts的icon庫引入 -->
        <!-- font awesome的icon庫引入 -->
        <script src="https://kit.fontawesome.com/7ae43304d6.js" crossorigin="anonymous"></script>
        <!-- font awesome的icon庫引入 -->
        <link rel='stylesheet' href="<c:url value='/assets/css/teacherNavBar.css' />" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@600&family=Noto+Serif+TC:wght@200;700&display=swap" rel="stylesheet"/>
        <style type="text/css"></style>
    </head>
    <style>
@charset "UTF-8";

body {
	background: #eee;
}

#side_nav {
	background: #000;
	min-width: 250px;
	max-width: 250px;
	transition: all 0.3s;
}

.content {
	min-height: 100vh;
	width: 100%;
}

hr.h-color {
	background: #eee;
	color: #eee;
}

.sidebar li.active {
	background: #eee;
	border-radius: 8px;
}

.sidebar li.active a, .sidebar li.active a:hover {
	color: #000;
}

.sidebar li a {
	color: #fff;
}

@media ( max-width : 767px) {
	#side_nav {
		margin-left: -250px;
		position: fixed;
		min-height: 100vh;
		z-index: 1;
	}
	#side_nav.active {
		margin-left: 0;
	}
}
</style>
    <body>
        <div class="main-container d-flex">
            <div class="sidebar" id="side_nav">
                <div class="header-box ms-2 px-2 pt-3 pb-4 d-flex justify-content-between">
                    <h1 class="fs-4"> <span class="bg-white text-dark rounded shadow px-2 me-2">5</span><span class="text-white me-2">mart</span> </h1>
                    <button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i class="fa-solid fa-bars-staggered"></i>
                    </button>
                </div>
                <ul class="list-unstyled px-2">
                    <li class="active">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-chart-line pe-2" style="color: #ffffff"></i>儀錶板</a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>課程中心</a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>進行中課程</a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-tv pe-2" style="color: #ffffff"></i>已完成課程</a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>通知中心</span><span class="bg-dark rounded-pill text-white py-0 px-2">02</span></a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>系統通知</span><span class="bg-dark rounded-pill text-white py-0 px-2">02</span></a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>課程問與答</span><span class="bg-dark rounded-pill text-white py-0 px-2">02</span></a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between"><span><i class="fa-solid fa-comment pe-2" style="color: #ffffff"></i>私人訊息</span><span class="bg-dark rounded-pill text-white py-0 px-2">02</span></a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-user pe-2" style="color: #ffffff"></i>商務中心</a>
                    </li>
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-user pe-2" style="color: #ffffff"></i>購物車</a>
                    </li>
                </ul>
                <hr class="h-color mx-2"/>
                <ul class="list-unstyled px-2">
                    <li class="">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-gear pe-2" style="color: #ffffff"></i>設定</a>
                    </li>
                </ul>
            </div>
            <div class="content">
                <nav class="navbar navbar-expand-md navbar-light bg-light">
                    <div class="container-fluid">
                        <div class="d-flex justify-content-between d-md-none d-block">
                            <button class="btn px-1 py-0 open-btn me-2"><i class="fa-solid fa-bars-staggered"></i>
                            </button><a class="navbar-brand fs-4" href="#"><span class="bg-dark text-white rounded shadow px-2 py-0">5</span>mart</a>
                        </div>
                        <button class="navbar-toggler p-0 border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa-solid fa-bars"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">profile</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div>
                    <!-- < class="dashboard-content px-3 pt-4"> -->
                    <main class="col-lg-auto ms-sm-0 px-md-4">
                        <div class="chartjs-size-monitor">
                            <div class="chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div>
                            <div class="chartjs-size-monitor-shrink">
                                <div class=""></div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                            <h1 class="h2">商務中心</h1>
                            <div class="btn-toolbar mb-2 mb-md-0">
                                <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar">
                                        <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                        <line x1="16" y1="2" x2="16" y2="6"></line>
                                        <line x1="8" y1="2" x2="8" y2="6"></line>
                                        <line x1="3" y1="10" x2="21" y2="10"></line>
                                    </svg>
                                    &nbsp;本週&nbsp;
                                </button>
                            </div>
                        </div>
                        <h2>我的購物車</h2>
                        <div class="col-md-5 col-lg-4 order-md-last">
                            <h4 class="d-flex justify-content-between align-items-center mb-3"> <span class="text-muted">購物車清單</span> <span class="badge bg-secondary rounded-pill">3</span> </h4>
                            <ul class="list-group mb-3">
                                <li class="list-group-item d-flex justify-content-between lh-sm">
                                    <div>
                                        <h6 class="my-0">Product name</h6><small class="text-muted">description</small>
                                    </div>                                     <span class="text-muted">$12</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between lh-sm">
                                    <div>
                                        <h6 class="my-0">Second product</h6><small class="text-muted">description</small>
                                    </div>                                     <span class="text-muted">$8</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between lh-sm">
                                    <div>
                                        <h6 class="my-0">Third item</h6><small class="text-muted">description</small>
                                    </div>                                     <span class="text-muted">$5</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between bg-light">
                                    <div class="text-success">
                                        <h6 class="my-0">Promo code</h6><small>折扣代碼</small>
                                    </div>                                     <span class="text-success">−$5</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between"><span>Total (USD)</span> <strong>$20</strong>
                                </li>
                            </ul>
                            <form class="card p-2">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Promo code">
                                    <button type="submit" class="btn btn-secondary">折扣代碼</button>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                    <tr>
</tr>
                                </thead>
                                <tbody>
</tbody>
                            </table>
                            <button class="w-100 btn btn-primary btn-lg" type="submit">繼續結帳</button>
                        </div>
                    </main>
                </div>
                <p>這裡可以填入內容</p>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- bootstrap -->
    <script type="text/javascript">
    $(".sidebar ul li").on("click", function () {
      $(".sidebar ul li.active").removeClass("active");
      $(this).addClass("active");
    });

    $(".open-btn").on("click", function () {
      $(".sidebar").addClass("active");
    });

    $(".close-btn").on("click", function () {
      $(".sidebar").removeClass("active");
    });
  </script>
</body>
