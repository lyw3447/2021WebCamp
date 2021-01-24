<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EveryDay</title>
<style>
body {
	margin: 0;
	font-family: "맑은 고딕", 돋움, tahoma;
}

.login {
	text-align: center;
}

.fa-calendar { /*Logo*/
	color: #c12525;
	padding: 12px;
}

input[type="text"] {
	
}

input[type="text"]:focus {
	outline: none;
}

p a {
	color: #c12525;
	font-weight: bold;
}

.footer {
	background-color: #F5F5F5;
	border-top: 1px solid lightrgrey;
	text-align: center;
	padding: 10px;
	font-size: 13px;
}

a {
	text-decoration: none;
}

.footer a {
	color: black;
	padding: 3px;
}

.sample {
	color: grey;
	float: right;
	font-style: italic;
	margin: 5px;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
</head>
<body>
	<!-- <img src='../img/snowman.jpg' height="250"> -->
	<div class="login">
	<i class="fa fa-calendar" aria-hidden="true" style="font-size: 40px;"></i>
		<p style="color: grey;">지금 <span style="font-weight: bold;">에브리데이</span>를 시작하세요!</p>
		<form method="post" action="loginOk">
			<div>
				<input type='text' name='userid' />
			</div>
			<div>
				<input type='password' name='password' />
			</div>
			<button type='submit'>로그인</button>
		</form>
		<p>
			에브리데이에 처음이신가요? <a href="#">회원가입</a>
		</p>
	</div>

	<p class="sample">이 웹사이트는 웹서비스 개발 연습 목적으로 만들어졌습니다.</p>
	<div class="footer">
		<a href="#">이용약관</a> <a href="#">개인정보처리방침</a> <a href="#">문의하기</a> <a
			href="#"><span>&copy; 에브리데이</span></a>
	</div>


</body>
</html>