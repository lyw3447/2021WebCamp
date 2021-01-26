<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Everyday</title>
<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
	font-family: "맑은 고딕", 돋움, tahoma;
	letter-spacing: -0.5px;
}

body {
	padding-top: 90px;
}

.header {
	padding: 15px 10%;
	border-bottom: 1px solid lightgrey;
	position: fixed;
	width: 100%;
	height: 60px;
	background: white;
	top: 0px;
}

a {
	text-decoration: none;
	color: black;
}

.header ul {
	list-style-type: none;
	overflow: hidden;
	position: fixed;
	left: 35%;
	top: 12px;
}

.header li {
	float: left;
	padding: 10px;
	height: 100%;
}

.header li :hover {
	color: #c12525;
}

.header li a {
	display: block;
	font-weight: bold;
}

.header .here {
	border-bottom: 5px solid #c12525;
	padding-bottom: 26px;
	color: #c12525;
}

.fa-calendar { /*Logo*/
	float: left;
	color: #c12525;
	padding: 12px;
}

.logo-side {
	float: left;
	margin: 10px 0 0 5px;
}

.everytime {
	color: #c12525;
	font-size: 12px;
	margin: 0;
	font-weight: bold;
}

.hgu {
	font-size: 24px;
	margin: 0px;
	padding-left: 2px;
}

.icons {
	position: fixed;
	top: 28px;
	left: 85%;
}

.icon {
	border: 1px solid lightgrey;
	border-radius: 10px;
	padding: 10px;
}

.logout {
	display: none;
	position: absolute;
	width: 55px;
	padding: 10px;
	margin: 5px;
	background-color: #c12525;
	color: white;
	border-radius: 5px;
}

.hv {
	display: inline-block;
}

.hv:hover .logout {
	display: block;
}

.menu {
	background-color: #F5F5F5;
	height: 200px;
	padding-left: 30%;
	border-bottom: 1px solid lightgrey;
	margin-bottom: 20px;
	
}

.menu ul {
	float: left;
	list-style-type: none;
	overflow: auto;
	margin: 16px 90px 16px 15px;
	padding-left: 0;
}

.menu li {
	padding: 2px;
}

.menu li a {
	font-size: 13px;
}

.menu li a:hover {
	color: #c12525;
}

.menu .here {
	color: #c12525;
	font-weight: bold;
}

.border {
	border-left: 1px solid lightgrey;
	float: left;
	height: 80%;
	margin-top: 20px;
}

.page-wrap {
	min-height: 100%;
	margin-bottom: 100px;
}

.page-wrap:after {
	content: "";
	display: block;
}

.left {
	float: left;
	width: 55%;
	margin-left: 13%;
}

h2 {
	border: 1px solid lightgrey;
	padding: 15px;
	margin: 5px 0;
}

.new {
	border: 2px solid lightgrey;
	padding: 0px 15px;
	margin-bottom: 5px;
	background-color: #F0F0F0;
}

.newpost {
	font-size: 13px;
	color: grey;
}

.fa-pencil {
	float: right;
}

.hide {
	border: 2px solid lightgrey;
	color: grey;
	display: none;
	margin-bottom: 5px;
}

.title {
	margin: 15px;
	font-size: 15px;
}

.no-border {
	border: none;
}

.no-border:focus {
	outline: none;
}

textarea {
	width: 95%;
	height: 300px;
}

.content {
	border-top: 1px solid lightgrey;
	padding: 15px;
}

.icons2 {
	border-top: 1px solid lightgrey;
	height: 45px;
	padding-left: 15px;
}

.icon2 {
	padding: 15px;
}

.writer {
	width: 30px;
	float: right;
	padding: 5px;
	margin: 10px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

.btn {
	background-color: #c12525;
	color: white;
	padding: 10px;
	width: 45px;
	height: 45px;
	float: right;
	border: none;
}

.contents { /* border 겹치는 부분에 대한 css 더 효율적인 법?*/
	border-left: 1px solid lightgrey;
	border-right: 1px solid lightgrey;
	border-top: 1px solid lightgrey;
}

.list { /* border 겹치는 부분에 대한 css 더 효율적인 방법?*/
	border-bottom: 1px solid lightgrey;
	padding: 15px;
	height: 60px;
}

.contents :hover {
	background-color: #F8F8F8;
}

.list-title {
	font-size: 14px;
	margin: 0;
	padding: auto;
}

.list-content {
	font-size: 12px;
	color: #B8B8B8;
	margin: 5px 0;
}

.list-date {
	font-size: 11px;
	color: #B8B8B8;
	margin: 0px;
	float: left;
}

.list-writer {
	font-size: 11px;
	margin: 0px;
	padding-left: 5px;
	float: left;
}

.search {
	font-family: FontAwesome;
	width: 30px;
	height: 30px;
	border: none;
}

.search-bt {
	border: 1px solid #505050;
	border-radius: 3px;
	width: 170px;
	height: 30px;
	margin: 5px;
}

span {
	font-weight: bold;
}

.right {
	width: 25%;
	float: left;
}

.boxes {
	border: 1px solid lightgrey;
	margin: 5px 20px;
	background-color: #F8F8F8;
}

.boxes .title {
	font-weight: bold;
	color: #0000CD;
	font-size: 14px;
	margin: 15px;
}

.boxes .content {
	font-size: 13px;
	height: 30px;
}

.hot .content {
	padding-left: 15px;
	height: 5px;
}

.footer {
	float: left;
	margin-left: 35%;
}

.footer a {
	color: grey;
	font-size: 12px;
	padding: 3px;
}

.footer a:hover {
	color: #c12525;
}

.sample {
	color: grey;
	float: right;
	font-style: italic;
	margin: 5px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$(".new").click(function() {
			$(".new").hide();
			$(".hide").show();
		});

	});
</script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
</head>
<body>

	<div class="header">
		<!-- 상단 메뉴 -->

		<i class="fa fa-calendar" aria-hidden="true" style="font-size: 34px;"></i>
		<div class="logo-side">
			<p class="everytime">Everyday</p>
			<p class="hgu">HGU</p>
		</div>

		<ul>
			<li><a href="csee" class="here">게시판</a></li>
			<li><a href="#">시간표</a></li>
			<li><a href="#">강의평가</a></li>
			<li><a href="#">학점계산기</a></li>
			<li><a href="#">친구</a></li>
			<li><a href="#">책방</a></li>
			<li><a href="#">캠퍼스픽</a></li>
		</ul>

		<div class="icons">
			<i class="fa fa-envelope-o icon" aria-hidden="true"></i>
			<div class="hv">
				<i class="fa fa-user-o icon" aria-hidden="true"></i> <a
					href="../login/logout" class="logout">로그아웃</a>
			</div>

		</div>

	</div>

	<div class="menu">
		<div class="border"></div>
		<ul>
			<li><a href="csee" class="here">자유게시판</a></li>
			<li><a href="#">비밀게시판</a></li>
			<li><a href="#">졸업생게시판</a></li>
			<li><a href="#">새내기게시판</a></li>
			<li><a href="#">장터게시판</a></li>
			<li><a href="#">홍보게시판</a></li>
			<li><a href="#">동아리/학회</a></li>
		</ul>
		<div class="border"></div>
		<ul>
			<li><a href="#">정보게시판</a></li>
			<li><a href="#">취업/진로</a></li>
		</ul>
		<div class="border"></div>
		<ul>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
		</ul>
		<ul>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
		</ul>
		<ul>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">게시판</a></li>
		</ul>
		<div class="border"></div>
	</div>

	<div class="page-wrap">
		<div class="left">
			<!-- 왼쪽 게시글 작성form & 게시글 list -->
			<h2>자유게시판</h2>
			<div class="new">
				<p class="newpost">
					새 글을 작성해 주세요!<i class="fa fa-pencil" aria-hidden="true"></i>
				</p>
			</div>


			<div class="hide">

				<!-- 작성 form -->

				<form action="addok" method="post">

					<input type="text" name="title" placeholder="글 제목"
						class="no-border title" />

					<div class="content">
						<textarea name="content" class="no-border"
							placeholder="여기를 눌러서 글을 작성할 수 있습니다."></textarea>
					</div>

					<div class="icons2">
						<i class="fa fa-code icon2" aria-hidden="true"></i> <i
							class="fa fa-upload icon2" aria-hidden="true"></i>

						<button type="submit" class="btn submit">
							<i class="fa fa-pencil" aria-hidden="true"
								style="font-size: 23px; margin-left: 0; text-align: center;"></i>
						</button>
						<input type="text" name="writer" class="writer" value="익명" />


					</div>
				</form>
			</div>

			<div class="contents">
				<!-- 게시글 list -->
				<c:forEach items="${list}" var="u">
					<div class="list" onclick="location.href='detail/${u.seq}'"
						style="cursor: pointer;">
						<p class="list-title">${u.title}</p>
						<p class="list-content">${u.content}</p>
						<p class="list-date">${u.regdate}</p>
						<p class="list-writer">${u.writer}</p>
					</div>
				</c:forEach>

			</div>

			<div class="div-search">
				<form id="searchForm" action="csee" method="get"
					style="margin: 0; padding: 0">
					<input type="text" placeholder="검색어를 입력하세요."
						class="no-border search-bt" /> <input type="submit"
						value="&#xf002;" class="search " />
				</form>

			</div>

		</div>

		<div class="right">
			<div class="boxes popular">
				<p class="title">실시간 인기 글</p>
				<p class="content">이곳은 실시간 인기 첫 번째 글입니다. 안녕하세요</p>
				<p class="content">이곳은 실시간 인기 두 번째 글입니다.</p>
			</div>

			<div class="boxes hot">
				<p class="title">HOT 게시물</p>
				<p class="content">이곳은 HOT 게시물 첫 번째 글입니다.</p>
				<p class="content">이곳은 HOT 게시물 두 번째 글입니다.</p>
				<p class="content">이곳은 HOT 게시물 세 번째 글입니다.</p>
				<p class="content">이곳은 HOT 게시물 네 번째 글입니다.</p>
			</div>

			<div class="boxes">
				<p class="title">BEST 게시판</p>
			</div>

			<div class="boxes">
				<p class="title">최근 강의평</p>
				<p class="content"></p>
				<p class="content"></p>
				<p class="content"></p>
				<p class="content"></p>

			</div>

		</div>
	</div>

	<div class="footer">
		<a href="#">이용약관</a> <a href="#">개인정보처리방침</a> <a href="#">커뮤니티이용규칙</a>
		<a href="#">공지사항</a> <a href="#">문의하기</a> <a href="#"><span>&copy;
				에브리데이</span></a>

	</div>
	<p class="sample">이 웹사이트는 웹서비스 개발 연습 목적으로 만들어졌습니다.</p>

</body>
</html>