<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>文章總攬</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"></script>
<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">5Mart</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            文章
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">職場技能</a></li>
            <li><a class="dropdown-item" href="#">投資理財</a></li>
            <li><a class="dropdown-item" href="#">語言</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>


	<div class="container">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-10">
				<div id="carouselExample" class="carousel slide">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖002.jpg"
								class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖009.jpeg"
								class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="\SpringEEIT69-5Mart\assets\images\課程封面圖010.jpeg"
								class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExample" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExample" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

			</div>
		</div>
	</div>

	<br>


	 <div class="container">
        <div class="row">
            <div class="col-1"></div>
            
            
            
            <div class="col-10">
                <!-- 選項卡部分 -->
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">最新文章</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">熱門文章</button>
                    </li>
                    
                </ul>

                <!-- 文章選項卡 -->
                <div class="tab-content" id="myTabContent">
                    <!-- 最新文章選項卡 -->
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <!-- 最新文章輪播 -->
                        <div id="latestCarousel" class="carousel slide" data-bs-ride="false">
                            <div class="carousel-inner">
                            
                                <div class="carousel-item active">
                                    <div style="display: flex;">
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖002.jpg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的另一个目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖002.jpg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">新卡片的文本内容</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的另一个目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖002.jpg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">新卡片的文本内容</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <!-- 添加更多的carousel-item来增加内容 -->
                                <div class="carousel-item">
                                    <div style="display: flex;">
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的另一个目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">新卡片的文本内容</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的另一个目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖003.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">新卡片的文本内容</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                
                                
                            </div>
                            <!-- 添加轮播控制按钮 -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#latestCarousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#latestCarousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                        <!-- 最新文章輪播結束 -->
                    </div>

                    <!-- 熱門文章選項卡 -->
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <!-- 熱門文章輪播 -->
                        <div id="profileCarousel" class="carousel slide" data-bs-ride="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div style="display: flex;">
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖010.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖010.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖010.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <!-- 添加更多的carousel-item来增加内容 -->
                                <div class="carousel-item">
                                    <div style="display: flex;">
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖007.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖007.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="链接到的目标网址">
                                            <div class="card" style="width: 18rem; margin-top: 20px; margin-left: 45px;">
                                                <img src="\SpringEEIT69-5Mart\assets\images\課程封面圖007.jpeg" class="card-img-top" alt="...">
                                                <div class="card-body">
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- 添加轮播控制按钮 -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#profileCarousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#profileCarousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                        <!-- 熱門文章輪播結束 -->
                    </div>
                </div>
                <!-- 選項卡部分結束 -->
            </div>
        </div>
    </div>
</body>
</html>