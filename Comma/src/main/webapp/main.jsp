<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>여행가이드 메인</title>
		<meta charset="utf-8" />
		
		<!-- meta:문서의 기본형식 지정/ 메인 -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="X-UA-Compatible" content="IE=10" />
		<link rel="stylesheet" type="text/css" href="assets/css/basic.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<!-- meta:문서의 기본형식 지정/ 메인 -->
		
		<!-- inline 팝업창 -->
			<link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>
		<!-- inline 팝업창 -->
		
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
	
		<!-- 마우스오버시 메뉴나옴 -->
			<script type="text/javascript" src="./jquery.js"></script>
	        <link href="style.css" rel="stylesheet" type="text/css">
		 	<script type="text/javascript" src="./menu.js"></script>			
		 <!-- 마우스오버시 메뉴나옴 -->
		 
		 <link rel="stylesheet" type="text/css" href="assets/css/mytest.css" />
		 
		 
		 <!-- 메인4개 이미지 효과 -->
		 <script type="text/javascript" charset="utf-8" src='js/jquery.js'></script>
		<script type="text/javascript" charset="utf-8">
		$(window).load(function(){
			
			//set and get some variables
			var thumbnail = {
				imgIncrease : 100, /* 이미지 증가 크기 */
				effectDuration : 400, /* 이미지 증가 시간 */
				imgWidth : $('#mainImg .spotlight .image').find('img').width(), /* 이미지 가로 길이 */
				imgHeight : $('#mainImg .spotlight .image').find('img').height() /* 이미지 세로길이 */
				
			};
			
			/* //make the list items same size as the images
			$('#mainImg .spotlight .image').css({ 
				
				'width' : thumbnail.imgWidth, 
				'height' : thumbnail.imgHeight 
				
			}); */
			
			//when mouse over the list item...
			$('#mainImg .spotlight .image').hover(function(){
				
				$(this).find('img').stop().animate({
					
					/* increase the image width for the zoom effect*/
					width: parseInt(thumbnail.imgWidth) + thumbnail.imgIncrease,
					/* we need to change the left and top position in order to 
					have the zoom effect, so we are moving them to a negative
					position of the half of the imgIncrease */
					left: thumbnail.imgIncrease/2*(-1),
					top: thumbnail.imgIncrease/2*(-1)
					
				},{ 
					
					"duration": thumbnail.effectDuration,
					"queue": false
					
				});
				
				//show the caption using slideDown event
				$(this).find('.caption:not(:animated)').slideDown(thumbnail.effectDuration);
				
			//when mouse leave...
			}, function(){
				
				//find the image and animate it...
				$(this).find('img').animate({
					
					/* get it back to original size (zoom out) */
					width: thumbnail.imgWidth,
					/* get left and top positions back to normal */
					left: 0,
					top: 0
					
				}, thumbnail.effectDuration);
				
				//hide the caption using slideUp event
				$(this).find('.caption').slideUp(thumbnail.effectDuration);
				
			});
			
		});
	</script>
	</head>
	
	
	
	<body class="landing">
		<!-- Page Wrapper -->
			<div id="page-wrapper">


				<!-- Header -->
					<header id="header" class="alt">
						<h1><a href="main.do">상단메뉴</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									
									<c:if test="${sessionScope.id!=null }">
									<form method="post" action="logout.do" id="logout-frm" hidden="hidden"></form>
									${sessionScope.name }님 환영합니다.
									<button class="button special log" id="logout-btn" >Logout</button>
									</c:if>
									
									<c:if test="${sessionScope.id==null }">
									<button class="button special log" id="login-btn">Login</button>
									
									<!-- 1추가:로그인 레이어 팝업창 -->
									<form class="white-popup mfp-hide" id="login-form" method="post" action="login.do">
										<h1>Log-In</h1>
											<div>
												<input name="id" id="id" required="" type="text" placeholder="ID">
											</div>
											<br>
											<div>
												<input name="pwd" id="pwd" required="" type="password" placeholder="Password">
											</div>
											<br>
											<div class="logbtn">
												<input name="login" value="Login" id="log-btn" type="button">
												<input name="join" value="Join" id=join-btn type="button">
											</div>
											<br>
											<div class="logbtn">
												<input name="idfind" value="id찾기" id="id-btn" type="button">
												<input name="pwdfind" value="pwd찾기" id="pwd-btn" type="button">
											</div>
										</ol>
									</form>
									<!-- 로그인 레이어 팝업창 -->
									
									
									<!-- 2추가:회원가입 레이어 팝업창 -->
									<form class="white-popup mfp-hide" id="join-form">
										<h1>Join-us</h1>
											<div>
												<input name="id" id="id" required="" type="text" placeholder="ID">
												<input name="id2" value="확인" id="id2" type="button">
											</div>
											<br>
											<div>
												<input name="pwd" id="pwd" required="" type="password" placeholder="Password">
											</div>
											<br>
											<div>
												<input name="pwd" id="pwd" required="" type="password" placeholder="Password">
											</div>
											<br>
											<div>
												<input name="name" id="name" required="" type="text" placeholder="Name">
											</div>
											<br>
											<div>
												<input name="nickName" id="nickName" required="" type="text" placeholder="NickName">
												<input name="id2" value="확인" id="id2" type="button">
											</div>
											<br>
											<div>
												<input name="email" id="email" required="" type="text" placeholder="E-mail">
											</div>
											<br>
											<div class="logbtn">
												<input name="join" value="join" id="join" type="button">
											</div>
										</ol>
									</form>
									</c:if>
									<!-- 회원가입 레이어 팝업창 -->
									
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									
									
									<!-- 사이드메뉴 -->
									<div id="menu" class="group g1">												
										<ul>
											<div class="box"><li><a href="index.jsp">Home</a></li></div>
											<div class="box"><li><a href="intro/introduceSite.jsp">소개페이지</a></li></div>
											<div class="box"><li><a href="intro/introduceKor.jsp">한국소개</a></li></div>
											
											<div class="box">
											    <li class="title"><a href="#">가이드</a></li>
											    <div class="cont">
											    	<li><a href="guide/guide.jsp">1.가이드목록</a></li>
											    	<li><a href="guide/guideWrite.jsp">2.가이드글쓰기</a></li>
											    </div>
											 </div>
											
											<div class="box">
											    <li class="title"><a href="#">관광객</a></li>
											    <div class="cont">
											    	<li><a href="guide/guide.jsp">1.관광객목록</a></li>
											    </div>
											 </div>
											 <div class="box">
											 <li><a href="mypage/mypage.jsp">마이페이지</a></li>
											 </div>
										</ul>
									</div> 
								</li>
							</ul>
						</nav>
					</header>


				<!-- Three -->
					<section id="three" class="wrapper style3 special widthsiz">			<!-- style3:배경,폰트...색상 -->
						<div class="innerM">		<!-- 수정 -->
						
							<ul id="banner1">
								<div class="inner">
								<br>
									<h2>여행가이드사이트</h2>
								<br>	
								</div>
							</ul>
							
							
							
							<section id="mainImg" class="wrapper alt">
								<section class="spotlight">
									<div class="image main">
										<a href="#"><img src="images/flower3.jpg" alt="" /></a>
										<div class='caption'>
											<p class='captionInside'>사이트 이용법을 알아보세요</p>
										</div>
									</div>
									
									<div class="image main">
										<a href="#"><img src="images/tower.jpg" alt="" /></a>
										<div class='caption'>
											<p class='captionInside'>사이트 이용법을 알아보세요</p>
										</div>
									</div><div class="image main">
										<a href="#"><img src="images/costume.jpg" alt="" /></a>
										<div class='caption'>
											<p class='captionInside'>사이트 이용법을 알아보세요</p>
										</div>
									</div><div class="image main">
										<a href="#"><img src="images/hight.jpg" alt="" /></a>
										<div class='caption'>
											<p class='captionInside'>사이트 이용법을 알아보세요</p>
										</div>
									</div>
								</section>
							</section>
							
							 <!--  <ul class="features9 row uniform">
								<li>
									<div class="inner2">
										<a href="intro/introduceSite.jsp"><p>PageIntroduce</p></a>
										<img alt="소개" src="images/character.png" />				
					  				</div>
								</li>
								
								<li>
									<div class="inner2">
										<a href="intro/introduceKor.jsp"><p>KoreaIntroduce</p></a>
										<img alt="소개" src="images/character.png" />		
					  				</div>
								</li>
								
								<li>
									<div class="inner2">
										<a href="guide/guide.jsp"><p>Guide</p></a>
										<img alt="소개" src="images/character.png" />				
					  				</div>
								</li>
								
								<li>
									<div class="inner2">
										<a href="tourist/tourist.jsp"><p>Customer</p></a>
										<img alt="소개" src="images/character.png" />				
					  				</div>
								</li>
							</ul> -->
						</div>
					</section>
			

				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</footer>

			</div>




			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
				
				<!-- inline 로그인 팝업창 -->
				<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
				<script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>
				<!-- inline 로그인 팝업창 -->
				
				<!-- inline 로그인 팝업창 -->
				 <script type="text/javascript">
				$(document).ready(function() {
					$('#login-btn').magnificPopup({
						items :{src:'#login-form',type : 'inline'},
								preloader: false,focus: '#name',
								callbacks: {beforeOpen: function() {
									if($(window).width() < 700) {
										this.st.focus = false;
									} else {
										this.st.focus = '#name';
									}
								}
						}
					});
					
					$('#log-btn').click(function(){
						
						var id = $('#id').val();
						if(id.trim()==""){
							$('#id').focus();
							return;
						}
						
						var pwd = $('#pwd').val();
						if(pwd.trim()==""){
							$('#pwd').focus();
							return;
						}
						
						$('#login-form').submit();						
					});
					
					$('#logout-btn').click(function(){
						$('#logout-frm').submit();											
					});
					
					
					$('#join-btn').magnificPopup({
						items :{src:'#join-form',type : 'inline'},
								preloader: false,focus: '#name',
								callbacks: {beforeOpen: function() {
									if($(window).width() < 700) {
										this.st.focus = false;
									} else {
										this.st.focus = '#name';
									}
								}
						}
					});
				});
				</script> 
				<!-- inline 로그인 팝업창 -->
				
				<!-- 사이드 메뉴 -->
				<script type="text/javascript">
				$(function() {

				  var group = $(".group");
				
				  group.each(function() {
				    var _group = new GroupBox(this);
				  });
				
				  // 사용자 정의 생성자 함수 정의
				  function GroupBox(groupElement) {
				
				    var box = $(groupElement).find(".box");
				    var title = $(groupElement).find(".box .title a");
				
				    box.each(function(idx) {
				      var newBox = new RootBox(this);
				      if (idx > 0) {
				        newBox.siblingsClose();
				      }
				    });
				  }
				
				  // 사용자 정의 생성자 함수 정의
				  function RootBox(boxElement) {
				    var _this = this;
				    var boxEl = $(boxElement);
				    var target = $(boxEl).find(".title a");
				    var cont = $(boxEl).find(".cont");
				
				    // _groupParent = $(boxEl).parent();
				
				    target.on("click", anchorClickEvent);
				
				    function anchorClickEvent() {
				
				      if (cont.is(':hidden')) {
				        _this.open();
				      } else {
				        _this.close();
				      }
				    }
				
				    _this.siblingsClose = function() {
				      cont.css('display', 'none');
				    };
				
				    _this.open = function() {
				      cont.slideDown();
				    };
				    _this.close = function() {
				      cont.slideUp();
				    }
				  }
				});
				</script>
			
	</body>
</html>