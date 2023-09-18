<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<link rel='stylesheet' href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
				type="text/css" />
			<link rel='stylesheet' href="<c:url value="
				/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />" type="text/css" />
			<!-- bootstrap -->
		</head>

		<body>
			<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
				<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">5MART</a>
				<button class="navbar-toggler position-absolute d-md-none collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<input class="form-control form-control-dark w-100" type="text" placeholder="Search"
					aria-label="Search">
				<ul class="navbar-nav px-3">
					<li class="nav-item text-nowrap">
						<a class="nav-link" href="#">登出</a>
					</li>
				</ul>
			</header>
			<div class="container-fluid">
				<div class="row">
					<div class="col-6 col-xl-8">
						<div class="ratio ratio-16x9">
							<iframe src="https://www.youtube.com/embed/WWB01IuMvzA?si=WCmvsCL27PkLCdWk"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
								allowfullscreen></iframe>
						</div>
					</div>
					<div class="col">
						<main class="col-lg-auto col-md-5 ms-sm-auto px-md-4">
							<div class="accordion" id="panels1">
								<div class="accordion-item">
									<h2 class="accordion-header" id="collapse1"> <button class="accordion-button"
											type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">課程1</button> </h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										aria-labelledby="collapse1" data-bs-parent="#panels1">
										<div class="accordion-body"> <strong>This is the first item's accordion
												body.</strong> It is hidden by default, until the collapse plugin adds
											the appropriate classes that we use to style each element. These classes
											control the overall appearance, as well as the showing and hiding via CSS
											transitions. You can modify any of this with custom CSS or overriding our
											default variables. It's also worth noting that just about any HTML can go
											within the <code>.accordion-body</code>, though the transition does limit
											overflow.
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="collapse2"> <button
											class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
											data-bs-target="#collapseTwo" aria-expanded="false"
											aria-controls="collapseTwo">課程2</button> </h2>
									<div id="collapseTwo" class="accordion-collapse collapse"
										aria-labelledby="collapse2" data-bs-parent="#panels1">
										<div class="accordion-body"> <strong>This is the second item's accordion
												body.</strong> It is hidden by default, until the collapse plugin adds
											the appropriate classes that we use to style each element. These classes
											control the overall appearance, as well as the showing and hiding via CSS
											transitions. You can modify any of this with custom CSS or overriding our
											default variables. It's also worth noting that just about any HTML can go
											within the <code>.accordion-body</code>, though the transition does limit
											overflow.
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="collapse3"> <button
											class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
											data-bs-target="#collapseThree" aria-expanded="false"
											aria-controls="collapseThree">課程3</button> </h2>
									<div id="collapseThree" class="accordion-collapse collapse"
										aria-labelledby="collapse3" data-bs-parent="#panels1">
										<div class="accordion-body"> <strong>This is the third item's accordion
												body.</strong> It is hidden by default, until the collapse plugin adds
											the appropriate classes that we use to style each element. These classes
											control the overall appearance, as well as the showing and hiding via CSS
											transitions. You can modify any of this with custom CSS or overriding our
											default variables. It's also worth noting that just about any HTML can go
											within the <code>.accordion-body</code>, though the transition does limit
											overflow.
										</div>
									</div>
								</div>
							</div>
							<div class="chartjs-size-monitor">
								<div class="chartjs-size-monitor-expand">
									<div class=""></div>
								</div>
								<div class="chartjs-size-monitor-shrink">
									<div class=""></div>
								</div>
							</div>
						</main>
					</div>
				</div>
				<div>
				</div>
			</div>
			<div class="col-6 col-xl-12">
				<div>
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation">
							<a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">總攬</a>
						</li>
						<li class="nav-item" role="presentation">
							<a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab"
								aria-controls="profile" aria-selected="false">Profile</a>
						</li>
						<li class="nav-item" role="presentation">
							<a class="nav-link" id="contact-tab" data-bs-toggle="tab" href="#contact" role="tab"
								aria-controls="contact" aria-selected="false">Contact</a>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
							<div class="container">
								<div class="row">
									<div>
										<h3 style="font-weight: bold;">關於此課程</h3>
									</div>
									<div>Spring Boot 3: Learn Spring 6, Spring Core, Spring REST,
										Spring MVC, Spring Security, Thymeleaf, JPA, Hibernate, MySQL
									</div>
								</div><br>
								<div class="row">
									<hr>
								</div><br>
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
								</div><br>
								<div class="row">
									<hr>
								</div><br>
								<div class="row">
									<div class="col-4">證書</div>
									<div class="col-4">
										<div>完成整門課程，取得 Udemy 證書</div><br>
										<div>
											<div class="d-grid gap-2 col-6">
												<button type="button" class="btn btn-outline-dark">Udemy
													證書
												</button>
											</div>
										</div>
									</div>
								</div><br>
								<div class="row">
									<hr>
								</div><br>
								<div class="row">
									<div class="col-4">說明</div>
									<div class="col-4">
										<div>NEW FOR SPRING BOOT 3 AND SPRING 6 POPULAR IDE - IntelliJ
											(free version) #1 BEST SELLING SPRING BOOT & HIBERNATE COURSE ON
											UDEMY - 320,000+ STUDENTS ENROLLED OVER 70,000 REVIEWS - 5 STARS!
											THIS COURSE COVERS SPRING BOOT 3 AND SPRING 6 LEARN these HOT
											TOPICS in Spring Boot 3 and Spring 6: Spring Boot 3 Spring
											Framework 6 Spring Boot 3 Core Spring Boot 3 Annotations Spring
											Boot 3 Java Configuration (all Java, no xml) Spring Boot 3 and
											Spring MVC Spring Boot 3 Hibernate/JPA CRUD Spring Boot 3 Security
											Spring Boot 3 REST API Maven
										</div>
									</div>
								</div><br>
								<div class="row">
									<hr>
								</div><br>
								<div class="row">
									<div class="col-4">講師</div>
									<div class="col-4">
										<div class="row">
											<div class="col-3">
												<img src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg" alt="xxxx"
													style="max-width: 80px; max-height: 80px;">
											</div>
											<div class="col-8">講師名稱</div>
										</div><br>
										<div class="row">講師簡介 Chád (shod) Darby is an author,
											instructor and speaker in the Java development world. Chád is a
											contributing author to several Java books, including Professional
											Java E-Commerce (Wrox Press), Beginning Java Networking (Wrox
											Press), and XML and Web Services Unleashed (Sams Publishing). Chád
											has Java certifications from Oracle and IBM. He holds a B.S. in
											Computer Science from Carnegie Mellon University.
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
							<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee
								squid.
								Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
								artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress,
								commodo
								enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
								organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS
								salvia
								yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes
								anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson
								biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente
								accusamus tattooed echo park.</p>
						</div>
						<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
							<div class="container-fluid">
								<div class="row">
									<div class="col-3"></div>
									<div class="col-9">
										<div class="row">
											<div class="col" style="font-weight: bold;">
												<h3>課程意見反應</h3>
											</div>
										</div>
										<br>
										<p>
										<div class="row">
											<div class="col-1 center-vertically">
												<p style="font-size: 30px; margin-bottom: 4px">4</p>
												<p style="margin-bottom: 4px"> <img
														src="/SpringEEIT69-5Mart/assets/images/4star.png" alt="xxxx"
														style="max-width: 100px; max-height: 100px;"> </p>
												<p style="font-size: 13px">課程評等</p>
											</div>
											<!--條圖&星星&百分比-->
											<div class="col-11">
												<div class="row align-items-center">
													<div class="col-md-5">
														<div class="progress" style="height: 13px;">
															<div class="progress-bar bg-secondary" role="progressbar"
																style="width: 61%;" aria-valuenow="61" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
													<!-- 星星圖片 -->
													<div class="col-md-4 d-flex align-items-center">
														<img src="/SpringEEIT69-5Mart/assets/images/5star.png"
															alt="xxxx"
															style="max-width: 80px; max-height: 80px; float: left;">
														<div style="margin-left: 15px;">61%</div>
													</div>
												</div>
												<div class="row align-items-center">
													<div class="col-md-5">
														<div class="progress" style="height: 13px;">
															<div class="progress-bar bg-secondary" role="progressbar"
																style="width: 30%;" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
													<!-- 星星圖片 -->
													<div class="col-md-4 d-flex align-items-center">
														<img src="/SpringEEIT69-5Mart/assets/images/4star.png"
															alt="xxxx"
															style="max-width: 80px; max-height: 80px; float: left;">
														<div style="margin-left: 15px;">30%</div>
													</div>
												</div>
												<div class="row align-items-center">
													<div class="col-md-5">
														<div class="progress" style="height: 13px;">
															<div class="progress-bar bg-secondary" role="progressbar"
																style="width: 5%;" aria-valuenow="5" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
													<!-- 星星圖片 -->
													<div class="col-md-4 d-flex align-items-center">
														<img src="/SpringEEIT69-5Mart/assets/images/3star.png"
															alt="xxxx"
															style="max-width: 80px; max-height: 80px; float: left;">
														<div style="margin-left: 15px;">5%</div>
													</div>
												</div>
												<div class="row align-items-center">
													<div class="col-md-5">
														<div class="progress" style="height: 13px;">
															<div class="progress-bar bg-secondary" role="progressbar"
																style="width: 3%;" aria-valuenow="3" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
													<!-- 星星圖片 -->
													<div class="col-md-4 d-flex align-items-center">
														<img src="/SpringEEIT69-5Mart/assets/images/2star.png"
															alt="xxxx"
															style="max-width: 80px; max-height: 80px; float: left;">
														<div style="margin-left: 15px;">3%</div>
													</div>
												</div>
												<div class="row align-items-center">
													<div class="col-md-5">
														<div class="progress" style="height: 13px;">
															<div class="progress-bar bg-secondary" role="progressbar"
																style="width: 1%;" aria-valuenow="1" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
													<!-- 星星圖片 -->
													<div class="col-md-4 d-flex align-items-center">
														<img src="/SpringEEIT69-5Mart/assets/images/1star.png"
															alt="xxxx"
															style="max-width: 80px; max-height: 80px; float: left;">
														<div style="margin-left: 15px;">1%</div>
													</div>
												</div>
											</div>
										</div>
										<p>
										<div class="row">
											<div class="col">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#reviewModal">撰寫評論</button>
											</div>
										</div> <!-- 评价模态框 -->
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
															<input type="radio" name="star" id="star1" />
															<label for="star1">&#9733;</label>
															<input type="radio" name="star" id="star2" />
															<label for="star2">&#9733;</label>
															<input type="radio" name="star" id="star3" />
															<label for="star3">&#9733;</label>
															<input type="radio" name="star" id="star4" />
															<label for="star4">&#9733;</label>
															<input type="radio" name="star" id="star5" />
															<label for="star5">&#9733;</label>
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
															<label for="exampleFormControlTextarea1"
																class="form-label">說明：</label>
															<textarea class="form-control"
																id="exampleFormControlTextarea1" rows="3"
																placeholder="請告訴我們您在這門課上的個人體驗。他適合您嗎？"></textarea>
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
											<div class="col-6"></div>
											<div class="col-3" style="font-size: 13px">篩選評等</div>
										</div> <br>
										<div class="row">
											<div class="col-6">
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
										<div class="comment-container">
											<div class="comment" style="display:block">
												<div class="row">
													<div class="col-1">
														<img src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg"
															alt="xxxx" style="max-width: 80px; max-height: 80px;">
													</div>
													<div class="col-6">
														<div>Nikita S.</div>
														<div>
															<img src="/SpringEEIT69-5Mart/assets/images/4star.png"
																alt="xxxx" style="max-width: 80px; max-height: 80px;">
														</div>
														<div>This is amazing! The only instructor I understand in
															teaching Spring is Chad! The best thing of this lessons are
															they're keep getting updated and have staffs to answer and
															support you with your questions. Thank you so much I learned
															a
															lot! I hope your courses will also be available in LinkedIn
															Learning.
														</div>
													</div>
													<div>
														<hr style="width: 59%;">
													</div>
												</div>
											</div>
											<div class="comment" style="display:block">
												<div class="row">
													<div class="col-1">
														<img src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg"
															alt="xxxx" style="max-width: 80px; max-height: 80px;">
													</div>
													<div class="col-6">
														<div>Nikita S.</div>
														<div>
															<img src="/SpringEEIT69-5Mart/assets/images/4star.png"
																alt="xxxx" style="max-width: 80px; max-height: 80px;">
														</div>
														<div>This is amazing! The only instructor I understand in
															teaching Spring is Chad! The best thing of this lessons are
															they're keep getting updated and have staffs to answer and
															support you with your questions. Thank you so much I learned
															a
															lot! I hope your courses will also be available in LinkedIn
															Learning.
														</div>
													</div>
													<div>
														<hr style="width: 59%;">
													</div>
												</div>
											</div>
											<div class="comment" style="display:block">
												<div class="row">
													<div class="col-1">
														<img src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg"
															alt="xxxx" style="max-width: 80px; max-height: 80px;">
													</div>
													<div class="col-6">
														<div>Nikita S.</div>
														<div>
															<img src="/SpringEEIT69-5Mart/assets/images/4star.png"
																alt="xxxx" style="max-width: 80px; max-height: 80px;">
														</div>
														<div>This is amazing! The only instructor I understand in
															teaching Spring is Chad! The best thing of this lessons are
															they're keep getting updated and have staffs to answer and
															support you with your questions. Thank you so much I learned
															a
															lot! I hope your courses will also be available in LinkedIn
															Learning.
														</div>
													</div>
													<div>
														<hr style="width: 59%;">
													</div>
												</div>
											</div>
											<div class="comment" style="display:none">
												<div class="row">
													<div class="col-1">
														<img src="/SpringEEIT69-5Mart/assets/images/評論人頭照.jpeg"
															alt="xxxx" style="max-width: 80px; max-height: 80px;">
													</div>
													<div class="col-6">
														<div>Nikita S.</div>
														<div>
															<img src="/SpringEEIT69-5Mart/assets/images/4star.png"
																alt="xxxx" style="max-width: 80px; max-height: 80px;">
														</div>
														<div>This is amazing! The only instructor I understand in
															teaching Spring is Chad! The best thing of this lessons are
															they're keep getting updated and have staffs to answer and
															support you with your questions. Thank you so much I learned
															a
															lot! I hope your courses will also be available in LinkedIn
															Learning.
														</div>
													</div>
													<div>
														<hr style="width: 59%;">
													</div>
												</div>
											</div>
										</div>
										<div class="d-grid gap-2 col-6">
											<button class="btn btn-outline-secondary" type="button"
												id="showMore">查看更多評論</button>
										</div>
										<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out
											mcsweeney's
											organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag
											gentrify
											pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia
											banksy
											hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit
											cred
											pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork
											biodiesel
											fixie
											etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of
											them,
											vinyl
											craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
									</div>
								</div>
							</div>
							23
							1
							123<br>
							<br>
							123
						</div>
						<script src="assets/js/popper.min.js"></script>
						<script src="bootstrap/js/bootstrap.min.js"></script>
						<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
							integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
							crossorigin="anonymous"></script>
						<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
							integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
							crossorigin="anonymous"></script>
						<script>
							/* globals Chart:false, feather:false */

							(function () {
								'use strict'

								feather.replace()

								// Graphs
								var ctx = document.getElementById('myChart')
								// eslint-disable-next-line no-unused-vars
								var myChart = new Chart(ctx, {
									type: 'line',
									data: {
										labels: [
											'Sunday',
											'Monday',
											'Tuesday',
											'Wednesday',
											'Thursday',
											'Friday',
											'Saturday'
										],
										datasets: [{
											data: [
												15339,
												21345,
												18483,
												24003,
												23489,
												24092,
												12034
											],
											lineTension: 0,
											backgroundColor: 'transparent',
											borderColor: '#007bff',
											borderWidth: 4,
											pointBackgroundColor: '#007bff'
										}]
									},
									options: {
										scales: {
											yAxes: [{
												ticks: {
													beginAtZero: false
												}
											}]
										},
										legend: {
											display: false
										}
									}
								})
							})()
						</script>


						<script src="<c:url value=" /assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.js" />"></script>
		</body>

		</html>