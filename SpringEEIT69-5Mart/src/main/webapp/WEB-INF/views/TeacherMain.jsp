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
<link rel='stylesheet' href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />" type="text/css" />
<script	src="<c:url value="/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.js"/>"></script>
<link rel='stylesheet' href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>" type="text/css" />
<!-- bootstrap -->
</head>
<body>
	<p></p>
	<p></p>
	<div class="d-flex flex-column bg-light" style="width: 4.5rem;">
		<a href="/" class="d-block p-3 link-dark text-decoration-none"
			title="" data-bs-toggle="tooltip" data-bs-placement="right"
			data-bs-original-title="Icon-only">
			<i class="bi bi-5-square "></i><span class="visually-hidden">Icon-only</span>
		</a>
		<ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
			<li class="nav-item"><a href="#"
				class="nav-link active py-3 border-bottom" aria-current="page"
				title="" data-bs-toggle="tooltip" data-bs-placement="right"
				data-bs-original-title="Home"> <svg class="bi" width="24"
						height="24" role="img" aria-label="Home">
						<use xlink:href="#home"></use></svg>
			</a></li>
			<li><a href="#" class="nav-link py-3 border-bottom" title=""
				data-bs-toggle="tooltip" data-bs-placement="right"
				data-bs-original-title="Dashboard"> <svg class="bi" width="24"
						height="24">
						<use xlink:href="#speedometer2"></use></svg>
			</a></li>
			<li><a href="#" class="nav-link py-3 border-bottom" title=""
				data-bs-toggle="tooltip" data-bs-placement="right"
				data-bs-original-title="Orders"> <svg class="bi" width="24"
						height="24">
						<use xlink:href="#table"></use></svg>
			</a></li>
			<li><a href="#" class="nav-link py-3 border-bottom" title=""
				data-bs-toggle="tooltip" data-bs-placement="right"
				data-bs-original-title="Products"> <svg class="bi" width="24"
						height="24">
						<use xlink:href="#grid"></use></svg>
			</a></li>
			<li><a href="#" class="nav-link py-3 border-bottom" title=""
				data-bs-toggle="tooltip" data-bs-placement="right"
				data-bs-original-title="Customers"> <svg class="bi" width="24"
						height="24">
						<use xlink:href="#people-circle"></use></svg>
			</a></li>
		</ul>
		<div class="dropdown border-top">
			<a href="#"
				class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle"
				id="dropdownUser3" data-bs-toggle="dropdown" aria-expanded="false">
				<img src="https://github.com/mdo.png" alt="mdo" width="24"
				height="24" class="rounded-circle">
			</a>
			<ul class="dropdown-menu text-small shadow"
				aria-labelledby="dropdownUser3">
				<li><a class="dropdown-item" href="#">New project...</a></li>
				<li><a class="dropdown-item" href="#">Settings</a></li>
				<li><a class="dropdown-item" href="#">Profile</a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a class="dropdown-item" href="#">Sign out</a></li>
			</ul>
		</div>
	</div>
</body>
</html>