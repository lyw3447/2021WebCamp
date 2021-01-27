<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EveryDay</title>

<style>
* {
	padding: 0;
	margin: 0;
	font-weight: normal;
}

section {
	padding-right: 301px;
	width: 100%;
	box-sizing: border-box;
	font-family: NanumSquare;
}

.top {
	background-color: #f5f5f5;
	height: 600px;
	text-align: center;
}

.fa-mobile {
	padding-top: 100px;
	display: inline-block;
	margin-left: -400px;
	color: #708090;
}

.fa-address-book-o {
	padding-top: 200px;
	display: inline-block;
	margin-left: -400px;
	color: #906f90;
}

.fa-file-text-o {
	padding-top: 200px;
	display: inline-block;
	margin-left: -400px;
	color: #88906f;
}

.top-right {
	display: inline-block;
	margin: 100px;
}

strong {
	font-weight: bold;
}

.red {
	color: #c12525;
}

h1 {
	width: 350px;
	text-align: left;
	position: absolute;
	top: 300px;
	font-size: 28px;
}

.download {
	position: absolute;
	top: 400px;
}

.google, .apple {
	border: 1px solid #e3e3e3;
	border-radius: 5px;
	width: 150px;
	height: 50px;
	color: grey;
}

.middle {
	height: 500px;
}

.number {
	text-align: center;
	padding: 70px;
}

.number div {
	display: inline-block;
	margin: 20px;
}

.num strong {
	font-size: 40px;
}

.line {
	border-right: 2px solid lightgrey;
	height: 20px;
}

h2 {
	text-align: center;
	padding: 70px;
	font-size: 24px;
}

.middle p, .bottom p {
	text-align: center;
	color: #444444;
	line-height: 25px;
}

.bottom {
	height: 500px;
	background-color: #f5f5f5;
}

.icons {
	text-align: center;
}

.icon {
	background-color: #fff;
	border-radius: 50%;
	width: 100px;
	height: 100px;
	display: inline-block;
	margin: 50px;
}

.set {
	margin-top: 23px;
}

.slideanim {visibility:hidden;}
.slide {
  /* The name of the animation */
  animation-name: slide;
  -webkit-animation-name: slide;
  /* The duration of the animation */
  animation-duration: 1s;
  -webkit-animation-duration: 1s;
  /* Make the element visible */
  visibility: visible;
}

/* Go from 0% to 100% opacity (see-through) and specify the percentage from when to slide in the element along the Y-axis */
@keyframes slide {
  0% {
    opacity: 0;
    transform: translateY(70%);
  }
  100% {
    opacity: 1;
    transform: translateY(0%);
  }
}
@-webkit-keyframes slide {
  0% {
    opacity: 0;
    -webkit-transform: translateY(70%);
  }
  100% {
    opacity: 1;
    -webkit-transform: translateY(0%);
  }
}
.scribe {
	margin-top: 50px;
}

a {
	text-decoration: none;
	color: black;
}

.footer {
	text-align: center;
	font-size: 13px;
}

.footer a {
	padding: 3px;
}

.links {
	padding: 20px;
}

.sample {
	color: grey;
	font-style: italic;
	text-align: right;
	margin: 5px;
}

.right {
	position: fixed;
	top: 0;
	right: 0;
	height: 100%;
	overflow-y: auto;
	background-color: #fff;
	border-left: 1px solid #d6d6d6;
	display: block;
}

.fa-calendar { /*Logo*/
	color: #c12525;
}

.cal {
	text-align: center;
	padding: 40px;
}

.login, .signup {
	width: 280px;
	height: 40px;
	border: none;
	margin: 10px;
}

.login {
	background-color: white;
	border: 1px solid #e3e3e3;
	display: block;
}

.signup {
	background-color: #c12525;
	color: white;
	font-weight: bold;
	display: block;
}

.btn {
	margin-bottom: 50px;
}

.list {
	border-top: 1px solid #d6d6d6;
	border-bottom: 1px solid #d6d6d6;
	padding-bottom: 5px;
}

.find-school {
	padding: 10px;
	font-size: 14px;
}

.search {
	width: 80%;
	height: 30px;
	margin: 5px;
	border: none;
	background-color: #f5f5f5;
}

.search:focus {
	outline: none;
}

.search-bt {
	font-family: FontAwesome;
	width: 30px;
	height: 30px;
	border: none;
	background: none;
}

.div-search {
	background-color: #f5f5f5;
	margin: 0 10px;
	border: 1px solid #d6d6d6;
}
</style>
<link rel=" shortcut icon" href="../img/favicon.ico" type="image/x-icon"> <!--favicon 설정 -->
<link rel="icon" href="../img/favicon.ico" type="image/x-icon"> <!--favicon 설정 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(
			function() {
				$(".slideshow > div:gt(0)").hide();

				setInterval(function() {
					$('.slideshow > div:first').fadeOut(0).next().fadeIn(
							0).end().appendTo('.slideshow');
				}, 3000);
			});
</script>
<script>
$(document).ready(function(){
	$(window).scroll(function() {
		$(".slideanim").each(function() {
			var pos = $(this).offset().top;

			var winTop = $(window).scrollTop();
			if (pos < winTop + 800) { //이부분 screen size에 따라 다름. 다시 확인 필요?!
				$(this).addClass("slide");
			}
		});

	});
}) 
</script>
<script>
	$(window).scroll(testScroll);
	var viewed = false;

	function isScrolledIntoView(elem) {
		var docViewTop = $(window).scrollTop();
		var docViewBottom = docViewTop + $(window).height();

		var elemTop = $(elem).offset().top;
		var elemBottom = elemTop + $(elem).height();

		return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
	}

	function testScroll() {
		if (isScrolledIntoView($(".number")) && !viewed) {
			viewed = true;
			$('.n100').each(function() {
				$(this).prop('Counter', 50).animate({
					Counter : $(this).text()
				}, {
					duration : 300,
					easing : 'swing',
					step : function(now) {
						$(this).text(Math.ceil(now));
					}
				});
			});
			$('.n200').each(function() {
				$(this).prop('Counter', 100).animate({
					Counter : $(this).text()
				}, {
					duration : 350,

					easing : 'swing',
					step : function(now) {
						$(this).text(Math.ceil(now));
					}
				});
			});
			$('.n300').each(function() {
				$(this).prop('Counter', 200).animate({
					Counter : $(this).text()
				}, {
					duration : 400,
					easing : 'swing',
					step : function(now) {
						$(this).text(Math.ceil(now));
					}
				});
			});
			$('.n400').each(function() {
				$(this).prop('Counter', 300).animate({
					Counter : $(this).text()
				}, {
					duration : 450,
					easing : 'swing',
					step : function(now) {
						$(this).text(Math.ceil(now));
					}
				});
			});
			$('.n500').each(function() {
				$(this).prop('Counter', 400).animate({
					Counter : $(this).text()
				}, {
					duration : 500,
					easing : 'swing',
					step : function(now) {
						$(this).text(Math.ceil(now));
					}
				});
			});
		}
	}
</script>
</head>
<body>
	<section class="top">
		<div class="slideshow">
			<div>
				<i class="fa fa-mobile fa-3x" aria-hidden="true"
					style="font-size: 500px;"></i>
			</div>
			<div>
				<i class="fa fa-address-book-o" aria-hidden="true"
					style="font-size: 300px;"></i>
			</div>
			<div>
				<i class="fa fa-file-text-o" aria-hidden="true"
					style="font-size: 300px;"></i>
			</div>

		</div>

		<div class="top-right">
			<h1>
				대학 생활을 더 편하고 즐겁게,<strong class="red">에브리데이</strong>
			</h1>
			<div class="download">
				<button type="button" class="google">
					<i class="fa fa-android" aria-hidden="true"></i> <strong>Google
						Play</strong>
				</button>
				<button type="button" class="apple">
					<i class="fa fa-apple" aria-hidden="true"></i> <strong>App
						Store</strong>
				</button>
			</div>
		</div>

	</section>

	<section class="middle">
		<h2>
			대학생을 위한 <br /> <strong class="red">국내 1위 대학생 서비스 에브리데이! </strong>
		</h2>
		<p>
			시간표 작성, 수업 일정 및 할일 등 편리한 <strong>학업 관리</strong>가 가능하고,<br />학식 등 유용한
			<strong>학교 생활 정보</strong>를 접할 수 있으며,<br />같은 캠퍼스의 학생들과 소통하는 <strong>익명
				커뮤니티</strong>를 이용할 수 있습니다.
		</p>

		<div class="number">
			<div>
				<p class="num">
					<strong class="n100">100</strong>만
				</p>
				<p class="detail">등록된 학교</p>
			</div>
			<div class="line"></div>
			<div>
				<p class="num">
					<strong class="n200">200</strong>만
				</p>
				<p class="detail">시간표 사용</p>
			</div>
			<div class="line"></div>
			<div>
				<p class="num">
					<strong class="n300">300</strong>만
				</p>
				<p class="detail">중고 거래</p>
			</div>
			<div class="line"></div>
			<div>
				<p class="num">
					<strong class="n400">400</strong>만
				</p>
				<p class="detail">가입한 대학생</p>
			</div>
			<div class="line"></div>
			<div>
				<p class="num">
					<strong class="n500">500</strong>만
				</p>
				<p class="detail">등록된 게시글</p>
			</div>
		</div>
	</section>



	<section class="bottom">
		<h2>
			전국 캠퍼스 <br /> <strong class="red">재학생 커뮤니티 에브리데이!</strong>
		</h2>
		<p>
			학교 인증을 거친 재학생들의 안전한 대화를 위한 <strong>익명 시스템</strong>과<br />학생들이 직접
			게시판을 개설하여 운영하는 <strong>커뮤니티 플랫폼</strong>을 통해<br />많은 대학교에서 가장 활발히
			이용하는 재학생 커뮤니티로 자리잡았습니다.
		</p>
		<div class="icons">
			<div class="icon">
				<i class="fa fa-lock fa-3x set slideanim" aria-hidden="true"></i>
				<p class="scribe">학교 인증</p>
			</div>
			<div class="icon">
				<i class="fa fa-shield fa-3x set slideanim" aria-hidden="true"></i>
				<p class="scribe">익명 시스템</p>
			</div>
			<div class="icon">
				<i class="fa fa-users fa-3x set slideanim" aria-hidden="true"></i>
				<p class="scribe">재학생 참여</p>
			</div>
		</div>
	</section>

	<section>
		<p class="sample">이 웹사이트는 웹서비스 개발 연습 목적으로 만들어졌습니다.</p>
	</section>

	<section class="footer">
		<div class="links">
			<a href="#">이용약관</a> <a href="#">개인정보처리방침</a> <a href="#">문의하기</a> <a
				href="#"><span>&copy; 에브리데이</span></a>
		</div>

	</section>


	<div class="right">
		<div class="cal">
			<i class="fa fa-calendar" aria-hidden="true" style="font-size: 35px;"></i>
		</div>
		<div class="btn">
			<button type="button" class="login" onclick="location.href='login'">로그인</button>
			<button type="button" class="signup" onclick="location.href='#'">에브리데이
				회원가입</button>
		</div>

		<div class="list">
			<p class="find-school">
				<strong>우리 학교 찾기</strong>
			</p>
			<form id="searchForm" action="csee" method="get"
				style="margin: 0; padding: 0">
				<div class="div-search">
					<input type="text" placeholder="찾으시는 학교를 검색하세요."
						class="no-border search" /> <input type="submit" value="&#xf002;"
						class="search-bt " />
				</div>
			</form>


		</div>
	</div>



</body>
</html>
