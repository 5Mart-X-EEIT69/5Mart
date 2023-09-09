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
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">首頁</a></li>
			<li class="breadcrumb-item"><a href="#">課程</a></li>
			<li class="breadcrumb-item active" aria-current="page">Data</li>
		</ol>
	</nav>

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
					shown by default, until the collapse plugin adds the appropriate
					classes that we use to style each element. These classes control
					the overall appearance, as well as the showing and hiding via CSS
					transitions. You can modify any of this with custom CSS or
					overriding our default variables. It's also worth noting that just
					about any HTML can go within the
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
					<strong>This is the second item's accordion body.</strong> It is
					hidden by default, until the collapse plugin adds the appropriate
					classes that we use to style each element. These classes control
					the overall appearance, as well as the showing and hiding via CSS
					transitions. You can modify any of this with custom CSS or
					overriding our default variables. It's also worth noting that just
					about any HTML can go within the
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
					hidden by default, until the collapse plugin adds the appropriate
					classes that we use to style each element. These classes control
					the overall appearance, as well as the showing and hiding via CSS
					transitions. You can modify any of this with custom CSS or
					overriding our default variables. It's also worth noting that just
					about any HTML can go within the
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
					hidden by default, until the collapse plugin adds the appropriate
					classes that we use to style each element. These classes control
					the overall appearance, as well as the showing and hiding via CSS
					transitions. You can modify any of this with custom CSS or
					overriding our default variables. It's also worth noting that just
					about any HTML can go within the
					<code>.accordion-body</code>
					, though the transition does limit overflow.
				</div>
			</div>
		</div>
	</div>
</body>
</html>