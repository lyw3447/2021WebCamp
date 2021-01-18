<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Everytime</title>
<style>
.head {
	padding: 15px 60px;
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

img {
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

.icons {
	width: 40px;
	position: fixed;
	left: 90%;
	top: 12px;
}

.left {
	float: left;
	width: 60%;
	margin-left: 60px;
}

h3 {
	border: 2px solid lightgrey;
	padding: 13px;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말 삭제하시겠습니까? " + id + "?");
		if (a)
			location.href = 'deleteok/' + id;
	}
</script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
</head>
<body>

	<div class="head">
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
			<i class="far fa-envelope"></i> <i class="far fa-user"></i>
		</div>

	</div>

	<div class="left">
		<h3>자유게시판</h3>
		<div class="new"></div>


	</div>

	<div class="right"></div>

	<div class="footer"></div>




	<table id="list" width="90%">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Content</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.title}</td>
				<td>${u.writer}</td>
				<td>${u.content}</td>
				<td>${u.regdate}</td>
				<td><a href="editform/${u.seq}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

	<h1>새로운 글 작성</h1>
	<form action="addok" method="post">
		<table>
			<tr>
				<td>Title:</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>Writer:</td>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="add" /></td>
			</tr>
		</table>
	</form>

</body>
</html>