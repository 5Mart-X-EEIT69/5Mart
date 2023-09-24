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
	<div class="container">
		<div class="row">
			<div class="col-5">
				<h6>講師</h6>
				<h1>姓名</h1>
				<div class="d-flex flex-row">
					<div class="me-5 col-2">學生總數</div>
					<div class="col-10">評論總數</div>
				</div>
				<div class="d-flex flex-row">
					<div class="mt-2 me-5 col-2">123</div>
					<div class="mt-2 col-10">456</div>
				</div>
				<h5 class="my-4">關於我</h5>
				<p>Hi! I'm Colt. I'm a developer with a serious love for
					teaching. I've spent the last few years teaching people to program
					at 2 different immersive bootcamps where I've</p>
				<p>helped hundreds of people become web developers and change
					their lives. My graduates work at companies like Google,
					Salesforce, and Square.</p>
				<p>Most recently, I led Galvanize's SF's 6 month immersive
					program as Lead Instructor and Curriculum Director. After
					graduating from my class, 94% of my students went on to receive
					full-time developer roles. I also worked at Udacity as a Senior
					Course Developer on the web development team where I got to reach
					thousands of students daily.</p>
				<p>I’ve since focused my time on bringing my classroom teaching
					experience to an online environment. In 2016 I launched my Web
					Developer Bootcamp course, which has since gone on to become one of
					the best selling and top rated courses on Udemy. I was also voted
					Udemy’s Best New Instructor of 2016.</p>
				<p>I've spent years figuring out the "formula" to teaching
					technical skills in a classroom environment, and I'm really excited
					to finally share my expertise with you. I can confidently say that
					my online courses are without a doubt the most comprehensive ones
					on the market.</p>
				<p>Join me on this crazy adventure!</p>
			</div>
			<div class="col-1"></div>
			<div class="col-4">
				<div class="p-5">
					<img class="img-fluid rounded-circle"
						src="https://picsum.photos/200/200?random=10" alt="...">
				</div>
				<div class="row">
					<div class="d-flex flex-column">
							<button type="button" class="mb-2 me-5 btn btn-secondary d-flex justify-content-center">個人網站</button>
							<button type="button" class="btn btn-secondary d-flex justify-content-center">Youtube</button>
					</div>
				</div>
			</div>

		</div>

		<div class="row mt-5 d-flex justify-content-center">
			<h4 class="ud-heading-lg" style="text-align: left">我的課程</h4>
		</div>
		<div class="row mt-5 d-flex justify-content-left">
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>

			</div>
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>

		<div class="row mt-5 d-flex justify-content-left">
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>

			</div>
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
	</div>


	<!-- bootstrap -->
	<script
		src="<c:url value=" /assets/vendor/bootstrap-5.3.1-dist/bootstrap.bundle.min.js" />"></script>
	<!-- bootstrap -->
</body>

</html>