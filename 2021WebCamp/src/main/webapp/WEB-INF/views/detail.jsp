<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>에브리타임</title>
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

.header li a {
	text-decoration: none;
	color: black;
	display: block;
	font-weight: bold;
}

.header li a:hover {
	color: #c12525;
}

.header .here {
	border-bottom: 5px solid #c12525;
	padding-bottom: 26px;
	color: #c12525;
}

img { /*Logo*/
	width: 60px;
	height: 60px;
	float: left;
}

.logo-side {
	float: left;
	margin: 10px 0 0 5px;
}

.everytime {
	color: #c12525;
	font-size: 12px;
	margin: 0;
	padding-left: 3px;
	font-weight: bold;
}

.hgu {
	font-size: 22px;
	margin: 0px;
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

.menu {
	background-color: #F5F5F5;
	width: 100%;
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
	text-decoration: none;
	color: black;
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
	margin-bottom: -100px;
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

.post {
	border: 1px solid lightgrey;
	padding: 15px;
}

.fa-user {
	float: left;
	background: lightgrey;
	border-radius: 3px;
	color: white;
	padding: 5px;
}

.info {
	float: left;
	margin: 0 0 15px 5px;
}

.writer {
	font-weight: bold;
	font-size: 14px;
	margin: 2px;
}

.regdate {
	color: lightgrey;
	font-size: 13px;
	margin: 2px;
}

.action {
	color: lightgrey;
	float: right;
}

.action a {
	text-decoration: none;
	color: grey;
	font-size: 12px;
}

.post-title {
	font-size: 20px;
	font-weight: bold;
}

.reply {
	background-color: #F8F8F8;
	border-bottom: 1px solid lightgrey;
	border-left: 1px solid lightgrey;
	border-right: 1px solid lightgrey;
	height: 45px;
}

.reply input[type="text"] {
	font-size: 13px;
	padding: 7px;
	float: left;
	border: none;
	background-color: #F8F8F8;
	margin: 8px;
	width: 80%;
}

input[type="text"]:focus {
	outline: none;
}

.submit {
	background-color: #c12525;
	color: white;
	width: 45px;
	height: 45px;
	float: right;
	border: none;
}

.back {
	border: 1px solid #c12525;
	border-radius: 3px;
	color: #c12525;
	background-color: white;
	font-weight: bold;
	font-size: 13px;
	padding: 7px;
	margin: 5px;
}

.right { /*오른쪽 메뉴*/
	width: 25%;
	float: left;
}

.boxes {
	border: 1px solid lightgrey;
	background-color: #F8F8F8;
	margin: 5px 20px;
}

.boxes .title {
	font-weight: bold;
	color: #0000CD;
	font-size: 14px;
	margin: 15px;
}

.content {
	border-top: 1px solid lightgrey;
	padding: 15px;
	font-size: 13px;
	height: 30px;
}

.popular .content {
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
	text-decoration: none;
	color: grey;
	font-size: 12px;
	padding: 3px;
}

.footer a:hover {
	color: #c12525;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말 삭제하시겠습니까?");
		if (a)
			location.href = '../deleteok/' + id;
	}
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
		<div class="logo-side">
			<p class="everytime">에브리타임</p>
			<p class="hgu">한동대</p>
		</div>

		<ul>
			<li><a href="../csee" class="here">게시판</a></li>
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

	<div class="menu">
		<div class="border"></div>
		<ul>
			<li><a href="../csee" class="here">자유게시판</a></li>
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

			<div class="post">
				<input type="hidden" name="seq" value="${u.seq}" /> <span><i
					class="fa fa-user fa-2x" aria-hidden="true"></i></span>
				<div class="info">
					<p class="writer">${u.writer}</p>
					<p class="regdate">${u.regdate}</p>
				</div>

				<div class="action">
					<a href="../editform/${u.seq}">수정</a> <a
						href="javascript:delete_ok('${u.seq}')">삭제</a>
				</div>
				<div style="clear: left;">
					<p class="post-title">${u.title}</p>
					<p style="font-size: 14px;">${u.content}</p>
				</div>

			</div>
			<div class="reply">
				<input type="text" name="reply" placeholder="댓글을 입력하세요." />
				<button type="submit" class="btn submit">
					<i class="fa fa-pencil fa-2x" aria-hidden="true"
						style="argin-left: 0;"></i>
				</button>
			</div>

			<button type="button" class="back" onclick="location.href='../csee' ">
				<i class="fa fa-list" aria-hidden="true" style="margin: 5px;"></i>글
				목록
			</button>
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
				에브리타임</span></a>
	</div>




</body>
</html>