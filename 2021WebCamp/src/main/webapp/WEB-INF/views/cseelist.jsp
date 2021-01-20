<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Every Time</title>
<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
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

ul {
	list-style-type: none;
	overflow: hidden;
	position: fixed;
	left: 30%;
	top: 12px;
}

li {
	float: left;
	padding: 10px;
	height: 100%;
}

li :hover {
	border-bottom: 2px solid red;
	padding-bottom: 32px;
	color: red;
}

li a {
	text-decoration: none;
	color: black;
	display: block;
	font-weight: bold;
}

img { /*Logo*/
	width: 55px;
	float: left;
}

.everytime {
	color: red;
	font-size: 12px;
	padding-top: 10px;
	margin: 0 59px;
}

.hgu {
	font-size: 23px;
	margin: 0px;
}

.menu {
	background-color: #F5F5F5;
	width: 100%;
	height: 300px;
	padding: 0;
	margin: 0;
	border-bottom: 1px solid lightgrey;
}

.page-wrap {
	min-height: 100%;
	margin-bottom: -142px;
}

.page-wrap:after {
	content: "";
	display: block;
}

.left {
	float: left;
	width: 55%;
	margin-left: 10%;
	padding-top: 15px;
}

h3 {
	border: 1px solid lightgrey;
	padding: 15px;
	margin-top: 20px;
	margin-bottom: 5px;
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

textarea {
	width: 95%;
	height: 300px;
}

.no-border:focus {
	outline: none;
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

.btn {
	background-color: red;
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
	padding-top: 15px;
	width: 25%;
	float: left;
}

.boxes {
	border: 1px solid lightgrey;
	margin: 20px;
	background-color: #F8F8F8;
}

.right .title {
	font-weight: bold;
	color: #0000CD;
	font-size: 14px;
}

.right .content {
	font-size: 13px;
	height: 30px;
}

.footer {
	bottom: 0;
	float: left;
	margin-left: 35%;
}

.footer a {
	text-decoration: none;
	color: grey;
	font-size: 13px;
	padding: 3px;
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
		<img src="https://img.apksum.com/1c/com.everytime.v2/5.3.5/icon.png" />
		<p class="everytime">에브리타임</p>
		<p class="hgu">한동대</p>

		<ul>
			<li><a href="#">게시판</a></li>
			<li><a href="#">시간표</a></li>
			<li><a href="#">강의평가</a></li>
			<li><a href="#">학점계산기</a></li>
			<li><a href="#">친구</a></li>
			<li><a href="#">책방</a></li>
			<li><a href="#">캠퍼스픽</a></li>
		</ul>

		<div class="icons">
			<i class="fa fa-envelope-o icon" aria-hidden="true"></i> <i
				class="fa fa-user-o icon" aria-hidden="true"></i>
		</div>
	</div>

	<div class="menu"></div>

	<div class="page-wrap">
		<div class="left">
			<!-- 왼쪽 게시글 작성form & 게시글 list -->
			<h3>자유게시판</h3>
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
							<i class="fa fa-pencil" aria-hidden="true" style="font-size: 23px; margin-left: 0; text-align: center;"></i>
						</button>
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

				<input type="text" placeholder="검색어를 입력하세요."
					class="no-border search-bt" /> <input type="submit"
					value="&#xf002;" class="search " />

			</div>

		</div>

		<div class="right">
			<div class="boxes">
				<p class="title">실시간 인기 글</p>
				<p class="content">이곳은 실시간 인기 첫 번째 글입니다. 안녕하세요</p>
				<p class="content">이곳은 실시간 인기 두 번째 글입니다.</p>
			</div>

			<div class="boxes">
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
				에브리타임</span></a>
	</div>

</body>
</html>