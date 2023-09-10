<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index-templates</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->
<!-- bootstrap -->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<script
	src="<c:url value="/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.js"/>"></script>
<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->
<style>
.rating {
	direction: rtl;
	display: inline-flex;
}

.rating input {
	display: none;
}

.rating label {
	font-size: 2em;
	color: #cccccc;
	cursor: pointer;
}

.rating input:checked ~label {
	color: #f6c613;
}

.rating-text {
	display: none;
	color: #000000;
	font-weight: bold;
}

.rating input:checked ~label+.rating-text {
	display: inline;
}

.center-vertically {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100%;
}

/* 篩選評等寬度 */
.narrow-select {
	width: 120px;
}

</style>

</head>

<body>

	<nav class="navbar"
		style="background-color: #ffffff; box-shadow: 0px 5px 5px rgba(0, 0, 0, 0.1);">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">5MART</a>
		</div>
	</nav>


	<div class="container-fluid">
		<p>
		<div class="row">
			<div class="col" style="font-weight: bold;">
				<h3>課程意見反應</h3>
			</div>
		</div>
		</p>

		<br>

		<p>
		<div class="row">
			<div class="col-1 center-vertically">

				<p style="font-size: 30px; margin-bottom: 4px">4</p>
				<p style="margin-bottom: 4px">
					<img src="/SpringEEIT69-5Mart/assets/images/4star.png" alt="xxxx"
						style="max-width: 100px; max-height: 100px;">
				</p>
				<p style="font-size: 13px">課程評等</p>



			</div>



			<!--條圖&星星&百分比-->
			
			<div class="col-11">
				<div class="row align-items-center">
					<div class="col-md-4">
						<div class="progress" style="height: 13px;">
							<div class="progress-bar bg-secondary" role="progressbar"
								style="width: 61%;" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<!-- 星星圖片 -->
					<div class="col-md-4 d-flex align-items-center">
						<img src="/SpringEEIT69-5Mart/assets/images/5star.png" alt="xxxx"
							style="max-width: 80px; max-height: 80px; float: left;">
						<div style="margin-left: 15px;">61%</div>
					</div>
				</div>


				<div class="row align-items-center">
					<div class="col-md-4">
						<div class="progress" style="height: 13px;">
							<div class="progress-bar bg-secondary" role="progressbar"
								style="width: 30%;" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<!-- 星星圖片 -->
					<div class="col-md-4 d-flex align-items-center">
						<img src="/SpringEEIT69-5Mart/assets/images/4star.png" alt="xxxx"
							style="max-width: 80px; max-height: 80px; float: left;">
						<div style="margin-left: 15px;">30%</div>
					</div>
				</div>


				<div class="row align-items-center">
					<div class="col-md-4">
						<div class="progress" style="height: 13px;">
							<div class="progress-bar bg-secondary" role="progressbar"
								style="width: 5%;" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<!-- 星星圖片 -->
					<div class="col-md-4 d-flex align-items-center">
						<img src="/SpringEEIT69-5Mart/assets/images/3star.png" alt="xxxx"
							style="max-width: 80px; max-height: 80px; float: left;">
						<div style="margin-left: 15px;">5%</div>
					</div>
				</div>


				<div class="row align-items-center">
					<div class="col-md-4">
						<div class="progress" style="height: 13px;">
							<div class="progress-bar bg-secondary" role="progressbar"
								style="width: 3%;" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<!-- 星星圖片 -->
					<div class="col-md-4 d-flex align-items-center">
						<img src="/SpringEEIT69-5Mart/assets/images/2star.png" alt="xxxx"
							style="max-width: 80px; max-height: 80px; float: left;">
						<div style="margin-left: 15px;">3%</div>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col-md-4">
						<div class="progress" style="height: 13px;">
							<div class="progress-bar bg-secondary" role="progressbar"
								style="width: 1%;" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<!-- 星星圖片 -->
					<div class="col-md-4 d-flex align-items-center">
						<img src="/SpringEEIT69-5Mart/assets/images/1star.png" alt="xxxx"
							style="max-width: 80px; max-height: 80px; float: left;">
						<div style="margin-left: 15px;">1%</div>
					</div>
				</div>
			</div>




			<p>
			<div class="row">
				<div class="col">
					<button type="button" class="btn btn-outline-secondary"
						data-bs-toggle="modal" data-bs-target="#reviewModal">撰寫評論</button>
				</div>
			</div>

			<!-- 评价模态框 -->
			<div class="modal fade" id="reviewModal" tabindex="-1"
				aria-labelledby="reviewModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="reviewModalLabel">評論</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<!-- 在这里添加评价表单或内容 -->

							星等： <br>

							<div class="rating">
								<input type="radio" name="star" id="star1" /><label for="star1">&#9733;</label>
								<input type="radio" name="star" id="star2" /><label for="star2">&#9733;</label>
								<input type="radio" name="star" id="star3" /><label for="star3">&#9733;</label>
								<input type="radio" name="star" id="star4" /><label for="star4">&#9733;</label>
								<input type="radio" name="star" id="star5" /><label for="star5">&#9733;</label>
							</div>
							<div class="rating-text">太棒了</div>
							<div class="rating-text">不錯</div>
							<div class="rating-text">一般</div>
							<div class="rating-text">差</div>
							<div class="rating-text">很糟</div>
							<script>
                const ratingInputs = document.querySelectorAll('.rating input');
                const ratingTexts = document.querySelectorAll('.rating-text');

                ratingInputs.forEach((input, index) => {
                  input.addEventListener('change', () => {
                    // Hide all rating texts
                    ratingTexts.forEach((text) => {
                      text.style.display = 'none';
                    });

                    // Show the selected rating text
                    ratingTexts[index].style.display = 'inline';
                  });
                });
              </script>
							<div class="mb-3">
								<label for="exampleFormControlTextarea1" class="form-label">說明：</label>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" placeholder="請告訴我們您在這門課上的個人體驗。他適合您嗎？"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">關閉</button>
							<button type="button" class="btn btn-dark">提交評價</button>
						</div>
					</div>
				</div>
			</div>
			</p>


			<p>
			<div class="row">
				<div class="col" style="font-weight: bold;">
					<h3>評論</h3>
				</div>
			</div>
			</p>


			<div class="row">
				<div class="col-5"></div>
				<div class="col-2" style="font-size: 13px">篩選評等</div>
			</div>

			<br>

			<div class="row">
				<div class="col-5">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="搜尋評論"
							aria-label="Recipient's username"
							aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary" type="button"
							id="button-addon2">
							<i class="bi bi-search-heart"></i> Search
						</button>
					</div>
				</div>
				<div class="col-2">
					<select class="form-select narrow-select"
						aria-label="Default select example">
						<option selected>所有評等</option>
						<option value="1">五星</option>
						<option value="2">四星</option>
						<option value="3">三星</option>
						<option value="4">二星</option>
						<option value="5">一星</option>
					</select>
				</div>
			</div>


			<div class="row">
				<div class="col-1">
				<img src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg" alt="xxxx"
							style="max-width: 80px; max-height: 80px; ">
				</div>
				<div class="col-5">
					<div>Nikita S.</div>
					
					<div><img src="/SpringEEIT69-5Mart/assets/images/4star.png" alt="xxxx"
							style="max-width: 80px; max-height: 80px; "></div>
					<div>This is amazing! The only instructor I understand in
						teaching Spring is Chad! The best thing of this lessons are
						they're keep getting updated and have staffs to answer and support
						you with your questions. Thank you so much I learned a lot! I hope
						your courses will also be available in LinkedIn Learning.</div>


				</div>

				<p>
				<hr style="width: 59%;">
				</p>


			</div>


		</div>
</body>
</html>