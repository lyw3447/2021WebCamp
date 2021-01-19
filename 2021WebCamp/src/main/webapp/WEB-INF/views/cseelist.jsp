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
.header {
	padding: 15px 60px;
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
	font-size: 10px;
	padding-top: 10px;
	margin: 0px;
}

.hgu {
	font-size: 20px;
	margin: 0px;
}

.left {
	float: left;
	width: 60%;
	margin-left: 60px;
	padding-top: 100px;
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
	height: 30px;
	padding-left: 15px;
}

.icon2 {
	padding: 7px;
}

.submit {
	font-family: FontAwesome;
	background-color: red;
	color: white;
	width: 30px;
	height: 30px;
	padding: 6px;
	float: right;
}

#list {
	border: 1px solid lightgrey;
	margin-top: 5px;
	padding: 15px;
	width: 100%;
}

.div-search {
	border: 2px solid lightgrey;
	border-radius: 2px;
	width: 30%;
	height: 30px;
	margin-top: 5px;
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
		<p class="logo everytime">에브리타임</p>
		<p class="logo hgu">한동대</p>

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
						class="fa fa-upload icon2" aria-hidden="true"></i> <input
						type="submit" value="&#xf002;" class="search submit" />
				</div>
			</form>
		</div>

		<div class="contents">
			<!-- 게시글 list -->

			<table id="list" width="90%">

				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.title}</td>
						<td>${u.writer}</td>
						<td>${u.content}</td>
						<td>${u.regdate}</td>
						<td><a href="detail/${u.seq}">View</a></td>
					</tr>
				</c:forEach>
			</table>


		</div>

		<div class="div-search">
			<!-- <input type="text" placeholder="검색어를 입력하세요." class="no-border" /> -->
		</div>

	</div>

	<div class="right"></div>

	<div class="footer">
		<p>이용약관 개인정보처리방침 커뮤니티이용규칙 공지사항 문의하기 에브리타임</p>
	</div>




</body>
</html>