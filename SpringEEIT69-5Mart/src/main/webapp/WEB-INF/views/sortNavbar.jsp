<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel='stylesheet' href="<c:url value='/assets/css/visitorHomePage.css' />" type="text/css" />
<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=語言' />">語言</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有語言</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">英文</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">日文</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">韓文</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">西班牙文</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=開發' />">開發</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有開發</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">網頁開發</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">程式語言</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">遊戲開發</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">資料庫設計與開發</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">軟體測試</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=行銷' />">行銷</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有行銷</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">數位行銷</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">社群行銷</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">數據分析</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">行銷策略</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">文案撰寫</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">創業</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=投資理財' />">投資理財</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有投資理財</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">個人理財</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">投資觀念</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">財務分析</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">量化交易</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">財務管理</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">股票分析</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=攝影' />">攝影</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有攝影</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">商業攝影</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">影像創作</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">後製剪輯</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">攝影理論</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=設計' />">設計</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有設計</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">平面設計</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">室內設計</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">建築設計</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">網頁設計</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">遊戲設計</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">設計理論</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=音樂' />">音樂</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有音樂</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">樂器</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">音樂軟體</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">音樂基礎</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">音樂創作</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">聲樂</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<c:url value='/searchsort?sort=職場技能' />">職場技能</a>
		<ul class="dropdown-menu">
			<li>
				<a class="dropdown-item" href="#">
					<strong>所有職場技能</strong>
				</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">生產力工具</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">求職技巧</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">創業</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">職場溝通</a>
			</li>
			<li>
				<a class="dropdown-item" href="#">獨立接案</a>
			</li>
		</ul>
	</li>

</ul>