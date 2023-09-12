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
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#!">5Mart線上學習平台</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Blog</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Page content -->
	<div class="container mt-5">
		<div class="row">
			<div class="col-lg-8">
				<!-- Post content-->
				<article>
					<!-- Post header-->
					<header class="mb-4">
						<!-- Post title-->
						<h1 class="fw-bolder mb-1">課程名稱</h1>
						<!-- Post meta content-->
						<div class="text-muted fst-italic mb-2">Posted on January 1,
							2023 by 5Mart Start</div>
						<!-- Post categories-->
						<a class="badge bg-secondary text-decoration-none link-light"
							href="#!">Web Design</a> <a
							class="badge bg-secondary text-decoration-none link-light"
							href="#!">Freebies</a>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">首頁</a></li>
								<li class="breadcrumb-item"><a href="#">課程</a></li>
								<li class="breadcrumb-item active" aria-current="page">課程名稱</li>
							</ol>
						</nav>
					</header>
					<!-- Preview image figure-->
					<figure class="mb-4">
						<img class="img-fluid rounded"
							src="https://picsum.photos/900/400?random=10" alt="...">
					</figure>
					<!-- Post content-->
					<section class="mb-5">
						<p class="fs-5 mb-4">Science is an enterprise that should be
							cherished as an activity of the free human mind. Because it
							transforms who we are, how we live, and it gives us an
							understanding of our place in the universe.</p>
						<p class="fs-5 mb-4">The universe is large and old, and the
							ingredients for life as we know it are everywhere, so there's no
							reason to think that Earth would be unique in that regard.
							Whether of not the life became intelligent is a different
							question, and we'll see if we find that.</p>
						<p class="fs-5 mb-4">If you get asteroids about a kilometer in
							size, those are large enough and carry enough energy into our
							system to disrupt transportation, communication, the food chains,
							and that can be a really bad day on Earth.</p>
						<h2 class="fw-bolder mb-4 mt-5">I have odd cosmic thoughts
							every day</h2>
						<p class="fs-5 mb-4">For me, the most fascinating interface is
							Twitter. I have odd cosmic thoughts every day and I realized I
							could hold them to myself or share them with people who might be
							interested.</p>
						<p class="fs-5 mb-4">Venus has a runaway greenhouse effect. I
							kind of want to know what happened there because we're twirling
							knobs here on Earth without knowing the consequences of it. Mars
							once had running water. It's bone dry today. Something bad
							happened there as well.</p>
					</section>
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">第一堂</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse show"
								data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<strong>This is the first item's accordion body.</strong> It is
									shown by default, until the collapse plugin adds the
									appropriate classes that we use to style each element. These
									classes control the overall appearance, as well as the showing
									and hiding via CSS transitions. You can modify any of this with
									custom CSS or overriding our default variables. It's also worth
									noting that just about any HTML can go within the
									<code>.accordion-body</code>
									, though the transition does limit overflow.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">第二堂</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse"
								data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<strong>This is the second item's accordion body.</strong> It
									is hidden by default, until the collapse plugin adds the
									appropriate classes that we use to style each element. These
									classes control the overall appearance, as well as the showing
									and hiding via CSS transitions. You can modify any of this with
									custom CSS or overriding our default variables. It's also worth
									noting that just about any HTML can go within the
									<code>.accordion-body</code>
									, though the transition does limit overflow.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">第三堂</button>
							</h2>
							<div id="collapseThree" class="accordion-collapse collapse"
								data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<strong>This is the third item's accordion body.</strong> It is
									hidden by default, until the collapse plugin adds the
									appropriate classes that we use to style each element. These
									classes control the overall appearance, as well as the showing
									and hiding via CSS transitions. You can modify any of this with
									custom CSS or overriding our default variables. It's also worth
									noting that just about any HTML can go within the
									<code>.accordion-body</code>
									, though the transition does limit overflow.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseFour"
									aria-expanded="false" aria-controls="collapseFour">第四堂</button>
							</h2>
							<div id="collapseFour" class="accordion-collapse collapse"
								data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<strong>This is the third item's accordion body.</strong> It is
									hidden by default, until the collapse plugin adds the
									appropriate classes that we use to style each element. These
									classes control the overall appearance, as well as the showing
									and hiding via CSS transitions. You can modify any of this with
									custom CSS or overriding our default variables. It's also worth
									noting that just about any HTML can go within the
									<code>.accordion-body</code>
									, though the transition does limit overflow.
								</div>
							</div>
						</div>
					</div>
				</article>
				<!-- Comments section-->
				<section class="mb-5">
					<div class="card bg-light">
						<div class="card-body">
							<!-- Comment form-->
							<form class="mb-4">
								<textarea class="form-control" rows="3"
									placeholder="Join the discussion and leave a comment!"></textarea>
							</form>
							<!-- Comment with nested comments-->
							<div class="d-flex mb-4">
								<!-- Parent comment-->
								<div class="flex-shrink-0">
									<img class="rounded-circle"
										src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
								</div>
								<div class="ms-3">
									<div class="fw-bold">Commenter Name</div>
									If you're going to lead a space frontier, it has to be
									government; it'll never be private enterprise. Because the
									space frontier is dangerous, and it's expensive, and it has
									unquantified risks.
									<!-- Child comment 1-->
									<div class="d-flex mt-4">
										<div class="flex-shrink-0">
											<img class="rounded-circle"
												src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
												alt="..." />
										</div>
										<div class="ms-3">
											<div class="fw-bold">Commenter Name</div>
											And under those conditions, you cannot establish a
											capital-market evaluation of that enterprise. You can't get
											investors.
										</div>
									</div>
									<!-- Child comment 2-->
									<div class="d-flex mt-4">
										<div class="flex-shrink-0">
											<img class="rounded-circle"
												src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
												alt="..." />
										</div>
										<div class="ms-3">
											<div class="fw-bold">Commenter Name</div>
											When you put money directly to a problem, it makes a good
											headline.
										</div>
									</div>
								</div>
							</div>
							<!-- Single comment-->
							<div class="d-flex">
								<div class="flex-shrink-0">
									<img class="rounded-circle"
										src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
								</div>
								<div class="ms-3">
									<div class="fw-bold">Commenter Name</div>
									When I look at the universe and all the ways the universe wants
									to kill us, I find it hard to reconcile that with statements of
									beneficence.
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- Side widgets-->
	<div class="col-lg-4"></div>
</body>
</html>