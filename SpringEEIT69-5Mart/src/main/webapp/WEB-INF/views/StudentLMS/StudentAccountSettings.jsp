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
<link rel='stylesheet'
	href="<c:url value="
				/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />"
	type="text/css" />
<!-- bootstrap -->
</head>

<body>
<body>
	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">5MART</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link" href="#">登出</a>
			</li>
		</ul>
	</header>
	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-home">
                                                <path
										d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                                <polyline
										points="9 22 9 12 15 12 15 22"></polyline>
                                            </svg> Dashboard
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file">
                                                <path
										d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                                                <polyline
										points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;課程中心</a> <a
							class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file">
                                                <path
										d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                                                <polyline
										points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;進行中的課程</a> <a
							class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file">
                                                <path
										d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                                                <polyline
										points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;已結束的課程</a> <a
							class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file">
                                                <path
										d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                                                <polyline
										points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;我的評論</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-shopping-cart">
                                                <circle cx="9" cy="21"
										r="1"></circle>
                                                <circle cx="20" cy="21"
										r="1"></circle>
                                                <path
										d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                            </svg>&nbsp;商務中心</a> <a
							class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-shopping-cart">
                                                <circle cx="9" cy="21"
										r="1"></circle>
                                                <circle cx="20" cy="21"
										r="1"></circle>
                                                <path
										d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                            </svg>&nbsp;願望清單</a> <a
							class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-shopping-cart">
                                                <circle cx="9" cy="21"
										r="1"></circle>
                                                <circle cx="20" cy="21"
										r="1"></circle>
                                                <path
										d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                            </svg>&nbsp;購物車</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-users">
                                                <path
										d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7"
										r="4"></circle>
                                                <path
										d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path
										d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>&nbsp;通知中心</a> <a
							class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-users">
                                                <path
										d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7"
										r="4"></circle>
                                                <path
										d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path
										d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>&nbsp;訊息</a> <a class="nav-link"
							href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
									height="24" viewBox="0 0 24 24" fill="none"
									stroke="currentColor" stroke-width="2" stroke-linecap="round"
									stroke-linejoin="round" class="feather feather-users">
                                                <path
										d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7"
										r="4"></circle>
                                                <path
										d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path
										d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>&nbsp;師生交流</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-bar-chart-2">
                                                <line x1="18" y1="20"
										x2="18" y2="10"></line>
                                                <line x1="12" y1="20"
										x2="12" y2="4"></line>
                                                <line x1="6" y1="20"
										x2="6" y2="14"></line>
                                            </svg>&nbsp;報表</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-layers">
                                                <polygon
										points="12 2 2 7 12 12 22 7 12 2"></polygon>
                                                <polyline
										points="2 17 12 22 22 17"></polyline>
                                                <polyline
										points="2 12 12 17 22 12"></polyline>
                                            </svg>&nbsp;帳號中心</a></li>
					</ul>
					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>我的最愛</span> <a class="link-secondary" href="#"
							aria-label="Add a new report"> <svg
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-plus-circle">
                                            <circle cx="12" cy="12"
									r="10"></circle>
                                            <line x1="12" y1="8" x2="12"
									y2="16"></line>
                                            <line x1="8" y1="12" x2="16"
									y2="12"></line>
                                        </svg>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file-text">
                                                <path
										d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                                <polyline
										points="14 2 14 8 20 8"></polyline>
                                                <line x1="16" y1="13"
										x2="8" y2="13"></line>
                                                <line x1="16" y1="17"
										x2="8" y2="17"></line>
                                                <polyline
										points="10 9 9 9 8 9"></polyline>
                                            </svg>&nbsp;課程1</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file-text">
                                                <path
										d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                                <polyline
										points="14 2 14 8 20 8"></polyline>
                                                <line x1="16" y1="13"
										x2="8" y2="13"></line>
                                                <line x1="16" y1="17"
										x2="8" y2="17"></line>
                                                <polyline
										points="10 9 9 9 8 9"></polyline>
                                            </svg>&nbsp;課程2</a></li>
						<li class="nav-item"></li>
						<li class="nav-item"></li>
					</ul>
				</div>
			</nav>
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div class="chartjs-size-monitor">
					<div class="chartjs-size-monitor-expand">
						<div class=""></div>
					</div>
					<div class="chartjs-size-monitor-shrink">
						<div class=""></div>
					</div>
				</div>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">帳號中心</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group me-2"></div>
					</div>
				</div>
				<div>
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation"><a
							class="nav-link active" id="profile-info-tab"
							data-bs-toggle="tab" href="#profile" role="tab"
							aria-controls="profile" aria-selected="true">個人資料</a></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="profile-picture-tab" data-bs-toggle="tab" href="#picture"
							role="tab" aria-controls="picture" aria-selected="false">個人照片</a>
						</li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="safety-tab" data-bs-toggle="tab" href="#safety" role="tab"
							aria-controls="safety" aria-selected="false">安全性</a></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="privacy-tab" data-bs-toggle="tab" href="#privacy" role="tab"
							aria-controls="privacy" aria-selected="false">隱私權</a></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="payment-tab" data-bs-toggle="tab" href="#payment" role="tab"
							aria-controls="payment" aria-selected="false">付款資訊</a></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="subscription-tab" data-bs-toggle="tab" href="#subscription"
							role="tab" aria-controls="subscription" aria-selected="false">訂閱管理</a>
						</li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="deactivate-tab" data-bs-toggle="tab" href="#deactivate"
							role="tab" aria-controls="deactivate" aria-selected="false">停用帳號</a>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="profile"
							role="tabpanel" aria-labelledby="profile-info-tab">
							<div class="row g-3">
								<div class="col-sm-6">
									<label for="firstName" class="form-label">名稱</label> <input
										type="text" class="form-control" id="firstName" placeholder=""
										value="" required="">
									<div class="invalid-feedback">Valid first name is
										required.</div>
								</div>
								<div class="col-sm-6">
									<label for="lastName" class="form-label">姓氏</label> <input
										type="text" class="form-control" id="lastName" placeholder=""
										value="" required="">
									<div class="invalid-feedback">Valid last name is
										required.</div>
								</div>
								<div class="col-12">
									<label for="username" class="form-label">使用者名稱</label>
									<div class="input-group">
										<span class="input-group-text">@</span> <input type="text"
											class="form-control" id="username" placeholder="Username"
											required="">
										<div class="invalid-feedback">Your username is required.
										</div>
									</div>
								</div>
								<div class="col-12">
									<label for="email" class="form-label">Email <span
										class="text-muted">(必填)</span>
									</label> <input type="email" class="form-control" id="email"
										placeholder="you@example.com">
									<div class="invalid-feedback">Please enter a valid email
										address for shipping updates.</div>
								</div>
								<div class="col-12">
									<label for="address" class="form-label">自我介紹</label>
									<div class="invalid-feedback">Please enter your shipping
										address.</div>
									<div class="mb-3">
										<!-- <label for="formInput15" class="form-label">輸入</label>                                  -->
										<textarea class="form-control" id="formInput15" rows="3"></textarea>
									</div>
								</div>
								<div class="col-md-5">
									<label for="country" class="form-label">預設語言</label> <select
										class="form-select" id="country" required="">
										<option value="">台灣正體中文</option>
										<option>日本語</option>
										<option>English</option>
									</select>
									<div class="invalid-feedback">Please select a valid
										country.</div>
								</div>
								<button class="w-100 btn btn-primary btn-lg" type="submit">儲存設定</button>
							</div>
						</div>
						<div class="tab-pane fade" id="picture" role="tabpanel"
							aria-labelledby="profile-picture-tab">
							<div class="row g-3">
								<div class="col-4 d-flex align-items-center" id="photoContainer">
									<form action="?" method="post" class="w-100 mb-3"
										onsubmit="return sumbit()">
										<label class="form-label">更新您的個人照片</label>
										<div class="w-100 mb-3 border rounded" style="height: 357px">
											<figure class="figure m-0 d-flex justify-content-center">
												<img src="" class="ifigure-img img-fluid rounded">
											</figure>
										</div>
										<div class="mb-3">
											<label for="formFile" class="form-label">新增/變更圖片</label>
											<div class="input-group mb-3">
												<input type="file" class="form-control"
													id="inputGroupFile02"> <label
													class="input-group-text" for="inputGroupFile02">上傳圖片</label>
											</div>
										</div>
										<input class="form-control form-control-lg" id="imgbtn"
											type="file" accept="image/*">
										<div class="d-flex justify-content-center">
											<button type="submit" class="btn btn-secondary mt-3">儲存照片</button>
										</div>
									</form>
								</div>
								<button class="w-100 btn btn-primary btn-lg" type="submit">儲存設定</button>
							</div>
						</div>
						<div class="tab-pane fade" id="safety" role="tabpanel"
							aria-labelledby="safety-tab">
							<div>
								<form>
									<div class="mb-3">
										<label for="exampleInputEmail1" class="form-label">電子郵件：</label>
										<input type="email" class="form-control"
											id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="您的電子郵件地址是XXX@gmail.com">
										<div id="emailHelp" class="form-text">We'll never share
											your email with anyone else.</div>
									</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label"></label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="輸入目前密碼">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label"></label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="輸入新的密碼">
							</div>

							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label"></label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="確認新的密碼">
							</div>
							<button type="submit" class="btn btn-primary">儲存</button>
							</form>
						</div>
					</div>
					<div class="tab-pane fade" id="privacy" role="tabpanel"
						aria-labelledby="privacy-tab">
						<p>
							privacy-tab <br> <br> Etsy mixtape wayfarers, ethical
							wes anderson tofu before they sold out mcsweeney's organic lomo
							retro fanny pack lo-fi farm-to-table readymade. Messenger bag
							gentrify pitchfork tattooed craft beer, iphone skateboard
							locavore carles etsy salvia banksy hoodie helvetica. DIY synth
							PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.
							Williamsburg banh mi whatever gluten-free, carles pitchfork
							biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you
							probably haven't heard of them, vinyl craft beer blog stumptown.
							Pitchfork sustainable tofu synth chambray yr.
						</p>
					</div>
					<div class="d-flex justify-content-center tab-pane fade"
						id="payment" role="tabpanel" aria-labelledby="payment-tab">
						<h2>付款方式</h2>
						<div class="row g-3">
							<div class="col-4 d-flex align-items-center" id="photoContainer">
								<div class="accordion" id="accordionFlushExample"
									style="width: 350px">
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingOne">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#flush-collapseOne" aria-expanded="false"
												aria-controls="flush-collapseOne">
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="flexRadioDefault" id="flexRadioDefault1"> <label
														class="form-check-label" for="flexRadioDefault1">
														<i class="bi bi-credit-card-2-back"></i> 信用卡
													</label>
												</div>
											</button>
										</h2>
										<div id="flush-collapseOne"
											class="accordion-collapse collapse"
											aria-labelledby="flush-headingOne"
											data-bs-parent="#accordionFlushExample">
											<div class="accordion-body">
												<div class="row">
													<div clas="col">持卡人姓名</div>
												</div>
												<div class="row">
													<div class="col">
														<div class="input-group mb-3">
															<input type="text" class="form-control"
																placeholder="持卡人姓名" aria-label="Username"
																aria-describedby="basic-addon1">
														</div>
													</div>
												</div>
												<div class="row">
													<div clas="col">信用卡卡號</div>
												</div>
												<div class="row">
													<div class="col">
														<div class="input-group mb-3">
															<input type="text" id="creditCardInput"
																class="form-control" placeholder="1234 5678 9123 4567"
																aria-label="Cardnumber" aria-describedby="basic-addon2"
																maxlength="19">
														</div>
														<script>
															// 获取输入字段
															const creditCardInput = document
																	.getElementById('creditCardInput');

															// 添加事件监听器以在输入时添加分隔符
															creditCardInput
																	.addEventListener(
																			'input',
																			function(
																					event) {
																				let inputValue = event.target.value;
																				inputValue = inputValue
																						.replace(
																								/\s/g,
																								''); // 删除所有空格

																				if (inputValue.length > 19) {
																					inputValue = inputValue
																							.slice(
																									0,
																									19); // 限制最大长度为19
																				}

																				let formattedValue = '';

																				for (let i = 0; i < inputValue.length; i++) {
																					formattedValue += inputValue[i];
																					if ((i + 1) % 4 === 0
																							&& (i + 1) < inputValue.length) {
																						formattedValue += ' ';
																					}
																				}

																				event.target.value = formattedValue;
																			});
														</script>
													</div>
												</div>
												<div class="row">
													<div class="col-6">到期日</div>
													<div class="col-6">信用卡安全碼</div>
												</div>
												<div class="row">
													<div class="col-6">
														<input type="text" class="form-control"
															placeholder="月月/年年" aria-label="Date"
															aria-describedby="basic-addon3" id="expiryDate"
															maxlength="7">
														<script>
															const expiryDateInput = document
																	.getElementById('expiryDate');

															expiryDateInput
																	.addEventListener(
																			'input',
																			function(
																					event) {
																				let inputValue = event.target.value;
																				inputValue = inputValue
																						.replace(
																								/\D/g,
																								''); // 删除非数字字符

																				if (inputValue.length > 4) {
																					inputValue = inputValue
																							.slice(
																									0,
																									4);
																				}

																				let formattedValue = '';

																				if (inputValue.length > 2) {
																					formattedValue += inputValue
																							.slice(
																									0,
																									2)
																							+ '/';
																					formattedValue += inputValue
																							.slice(2);
																				} else {
																					formattedValue = inputValue;
																				}

																				event.target.value = formattedValue;
																			});
														</script>
													</div>
													<div class="col-6">
														<input type="text" class="form-control" placeholder="CVC"
															aria-label="CVC" aria-describedby="basic-addon4"
															maxlength="3">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="accordion-item">
										<h2 class="accordion-header" id="flush-headingTwo">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#flush-collapseTwo" aria-expanded="false"
												aria-controls="flush-collapseTwo">
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="flexRadioDefault" id="flexRadioDefault2"> <label
														class="form-check-label" for="flexRadioDefault2">
														<i class="bi bi-coin"></i> 轉帳
													</label>
												</div>
											</button>
										</h2>
										<div id="flush-collapseTwo"
											class="accordion-collapse collapse"
											aria-labelledby="flush-headingTwo"
											data-bs-parent="#accordionFlushExample">
											<div class="accordion-body">
												<div class="row">
													<div class="rol">轉帳銀行：822</div>
												</div>
												<div class="row">
													<div class="rol">帳號：123456789123</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<button class="w-100 btn btn-primary btn-lg" type="submit">儲存設定</button>
						</div>
					</div>
					<div class="tab-pane fade" id="subscription" role="tabpanel"
						aria-labelledby="subscription-tab">
						<p>
							subscription-tab <br> <br> Etsy mixtape wayfarers,
							ethical wes anderson tofu before they sold out mcsweeney's
							organic lomo retro fanny pack lo-fi farm-to-table readymade.
							Messenger bag gentrify pitchfork tattooed craft beer, iphone
							skateboard locavore carles etsy salvia banksy hoodie helvetica.
							DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
							pitchfork. Williamsburg banh mi whatever gluten-free, carles
							pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester
							cred you probably haven't heard of them, vinyl craft beer blog
							stumptown. Pitchfork sustainable tofu synth chambray yr.
						</p>
					</div>
					<div class="tab-pane fade" id="deactivate" role="tabpanel"
						aria-labelledby="deactivate-tab">
						<p>
							deactivate-tab <br> <br> Etsy mixtape wayfarers,
							ethical wes anderson tofu before they sold out mcsweeney's
							organic lomo retro fanny pack lo-fi farm-to-table readymade.
							Messenger bag gentrify pitchfork tattooed craft beer, iphone
							skateboard locavore carles etsy salvia banksy hoodie helvetica.
							DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
							pitchfork. Williamsburg banh mi whatever gluten-free, carles
							pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester
							cred you probably haven't heard of them, vinyl craft beer blog
							stumptown. Pitchfork sustainable tofu synth chambray yr.
						</p>
					</div>
				</div>
		</div>
		</main>
	</div>
	</div>
	<script src="assets/js/popper.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<!-- 	圖片base64還沒抓，先做好靜態 -->
	<script type="text/javascript">
		$('#photoContainer').on(
				"change",
				"#imgbtn",
				function() {

					image = $(this).prev().children().children()[0]
					// console.log("test"+video)
					console.log(image)

					let input = $(this)[0].files;
					// console.log(input)
					// console.log(input.length)
					if (input.length > 0) {
						let fileReader = new FileReader();

						let fileToLoad = input[0];
						console.log("fileToLoad=" + fileToLoad.name);
						fileReader.onload = function(fileLoadedEvent) {
							image.src = fileLoadedEvent.target.result;
						};
						fileReader.readAsDataURL(fileToLoad);
					}

					$('#photoContainer').children().children('div').eq(1)
							.removeAttr('style')
				})

		function sumbit() {
			if (confirm("確定要更新個人照片嗎?") == true) {
				return true;
			} else {
				return false;
			}
		}
	</script>
</body>

<!-- bootstrap -->
<script
	src="<c:url value=" /assets/vendor/bootstrap-5.3.1-dist/bootstrap.bundle.min.js" />"></script>
<!-- Bootstrap JS (Optional) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
