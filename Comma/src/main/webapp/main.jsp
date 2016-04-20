<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>���డ�̵� ����</title>
		<meta charset="utf-8" />
		
		<!-- meta:������ �⺻���� ����/ ���� -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="X-UA-Compatible" content="IE=10" />

		<link rel="stylesheet" type="text/css" href="../controller/assets/css/mytest.css" />
		<link rel="stylesheet" type="text/css" href="../controller/assets/css/basic.css" />
		<link rel="stylesheet" type="text/css" href="../controller/assets/css/style.css" />
		<link rel="stylesheet" href="../controller/assets/css/main.css" />		

		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<!-- meta:������ �⺻���� ����/ ���� -->
		
		<!-- inline �˾�â--> 
		<link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>

		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		
		<!-- ���콺������ �޴����� -->
		<script type="text/javascript" src="./jquery.js"></script>
	    <link href="style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./menu.js"></script>			
</head>
	

<body class="landing">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1>
				<a href="main.do">��ܸ޴�</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="special">
					
						<!-- 1�߰�:�α��� ���̾� �˾�â-->
						<c:if test="${sessionScope.id!=null }">
							${sessionScope.name }�� ȯ���մϴ�.
							<button class="button special log" id="logout-btn">Logout</button>
							<form method="post" id="logout-frm" action="logout.do" hidden="hidden"></form>
						</c:if>
						<c:if test="${sessionScope.id==null }">
						<button class="button special log" id="join-btn">Sign In</button>&nbsp;&nbsp;
						<button class="button special log" id="login-btn">Login</button> 
						<form class="white-popup mfp-hide" id="login-form" method="post" action="login.do">
							<h1>Log-In</h1>
							<div>
								<input name="id" id="id" required="" type="text"
									placeholder="ID">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div class="logbtn">
								<input name="login" value="login" id="log-btn" type="button">
								<input name="join" value="join" id=join-btn type="button">
							</div>
							<br>
							<div class="logbtn">
								<input name="idfind" value="idã��" id="idfind-btn" type="button">
								<input name="pwdfind" value="pwdã��" id="pwdfind-btn" type="button">
							</div>
							
						</form>  
						
						<!-- 2�߰�:ȸ������ ���̾� �˾�â-->
						<form class="white-popup mfp-hide" id="join-form">
							<h1>Join-us</h1>
							<div>
								<input name="id" id="id1" required="" type="text"
									placeholder="ID"><span><input name="id2" value="Ȯ��" id="id2"
									type="button"></span>
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd1" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd2" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div>
								<input name="name" id="name" required="" type="text"
									placeholder="Name">
							</div>
							<br>
							<div>
								<input name="nickName" id="nickName" required="" type="text"
									placeholder="NickName"> <input name="id2" value="Ȯ��"
									id="id2" type="button">
							</div>
							<br>
							<div>
								<input name="email" id="email" required="" type="text"
									placeholder="E-mail">
							</div>
							<br>
							<div class="joinBtn">
								<input name="join" value="join" id="join" type="button">
							</div>
							
						</form> 
						</c:if>
						<!-- 3���̵�޴� -->
						<a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu" class="group g1">
							<ul>
								<div class="box">
									<li><a href="main.do">Home</a></li>
								</div>
								<div class="box">
									<li><a href="introduceSite.do">�Ұ�������</a></li>
								</div>
								<div class="box">
									<li><a href="introduceKor.do">�ѱ��Ұ�</a></li>
								</div>

								<div class="box">
									<li class="title"><a href="#">���̵�</a></li>
									<div class="cont">
										<li><a href="guide.do">1.���̵���</a></li>
										<li><a href="guideWrite.do">2.���̵�۾���</a></li>
									</div>
								</div>

								<div class="box">
									<li class="title"><a href="#">������</a></li>
									<div class="cont">
										<li><a href="tourist.do">1.���������</a></li>
										<li><a href="touristWrite.do">2.�������۾���</a></li>
									</div>
								</div>
								<div class="box">
									<li><a href="mypage.do">����������</a></li>
								</div>
							</ul>
						</div> 
					</li>
				</ul>
			</nav>
		</header>


		<!-- Main -->
		<section id="three" class="wrapper style2 special widthsiz1">
			<!-- style3:���,��Ʈ...���� -->

			<ul id="banner1">
				<div class="inner">
					<br>
					<h2>���డ�̵����Ʈ</h2>
					<br>
				</div>
			</ul>

			<div id="mainMenu">&nbsp;&nbsp; 
				<span><a href="#">����Ʈ�Ұ�</a></span>&nbsp;&nbsp; 
				<span><a href="#">�ѱ��Ұ�</a></span>&nbsp;&nbsp;
				<span><a href="#">���̵�</a></span>&nbsp;&nbsp; 
				<span><a href="#">������</a></span>
			</div>
		</section>


		<section id="three" class="wrapper style2 special widthsiz2">
			<div class="inner">
				<section>
					<!-- ���� �������� -->
					<div class="row uniform" id="mainTop">
					
						<div class="3u 12u$(small)">								<!-- 1 ���� -->
							<div id="mainSearch">
								<div class="mainSearch1" style="color: #53565B; font-style: bold">
								<img src="images/search.png">&nbsp;&nbsp;EASY SEARCH</div>
								<input type="text" name="demo-name" id="demo-name" value=""
									placeholder="���� �˻�" class="mainSearch1"/> 
								<input type="text" id="dt" placeholder="��¥����" class="mainSearch1"/>
								<div class="select-wrapper">
									<select name="demo-category" id="demo-category" class="mainSearch1">
										<option value="">�ο�����</option>
										<option value="1">1��</option>
										<option value="1">2��</option>
										<option value="1">3��</option>
										<option value="1">4��</option>
									</select> 
								<input type="submit" value="SEARCH" class="special mainSearch1" />
								</div>

							</div>
						</div>

						<div class="7u 12u$(small)">								<!-- 2 ��� -->
							<span class="image fit a">
								<div id="main_bn">
									<li><img src="images/guide_banner.jpg" alt="" /></li>		<!-- �̹��� character�� ���߱�!!! -->
									<li><img src="images/tour_banner.jpg" alt="" /></li>
									<li><img src="images/korea_banner.jpg" alt="" /></li>
									<li><img src="images/character.png" alt="" /></li>

								</div>
							</span>
						</div>
						
						<div class="2u$ 12u$(small) mainRight1">					<!-- 3 ������ -->
							<div id="mainRight">
								<div id="mainRight_home"><a href="#1">									<!-- logo���� �ʼ�! �ض��ض� -->
									<span class="mainRight_span"><img src="images/home.png"></span>
									Home</a></div>
								<div id="mainRight_comma"><a href="#2">									<!-- comma ��ġ����! -->
									<span class="mainRight_span"><img src="images/comma.png"></span>
									����Ʈ�Ұ�</a></div>
								<div><a href="#3">
									<span class="mainRight_span"><img src="images/korea.png"></span>
									�ѱ��Ұ�</a></div>
								<div><a href="#4">
									<span class="mainRight_span"><img src="images/guide.png"></span>
									���̵��</a></div>
								<div><a href="#5">
									<span class="mainRight_span"><img src="images/tour.png"></span>
									��������</a></div>
								<div><a href="#5">
									<span class="mainRight_span"><img src="images/commu.png"></span>
									Ŀ�´�Ƽ</a></div>	
							</div>
						</div>
					</div>
				</section>
			</div>
	</section>
	
	
	
	<section id="three" class="wrapper style2 special widthsiz3">
			<div class="inner">
				<section>
					<!-- ���� �������� -->
				<div class="row uniform">
					<div class="6u 12u$(small) secondPart" id="guideRanking"> 
						<h4>Best Guide 6</h4>
						<span class="ranking1"><img src="images/character.png" alt="" /></span>

						<span><img src="images/incheon1.jpg" alt="" /></span>
						<span><img src="images/incheon2.jpg" alt="" /></span>
						<span><img src="images/incheon3.jpg" alt="" /></span>
						<span><img src="images/seoul1.jpg" alt="" /></span>
						<span><img src="images/seoul3.jpg" alt="" /></span>

					</div>

					<div class="6u$ 12u$(small) secondPart" id="HotSpot">
						<h4>�ǽð� �α� ����&���̵��</h4>
							<!-- <span>
								<table class="searchFisrt" id="newest">
									<tr><td><a href="#1">1.����</a></td></tr>
									<tr><td><a href="#2">2.����</a></td></tr>
									<tr><td><a href="#3">3.����</a></td></tr>
									<tr><td><a href="#4">4.����</a></td></tr>
									<tr><td><a href="#5">5.����</a></td></tr>
								</table>
							</span>
							
							<span>		
								<table class="searchSecond">
									<tr><td>4��7��/�Թ�����/2000��</td></tr>
									<tr><td>4��7��/�Թ�����/2000��</td></tr>
									<tr><td>4��7��/�Թ�����/2000��</td></tr>
									<tr><td>4��7��/�Թ�����/2000��</td></tr>
									<tr><td>4��7��/�Թ�����/2000��</td></tr>
								</table>
							</span> -->
							
							<!--
								<div id="main_bn">
									<li><img src="images/character.png" alt="" /></li>		
									<li><img src="images/character.png" alt="" /></li>
									<li><img src="images/character.png" alt="" /></li>
									<li><img src="images/character.png" alt="" /></li>
								</div>	
									
								<div id="mainRight">
									<div><a href="#1">Home</a></div>
									<div><a href="#2">����Ʈ�Ұ�</a></div>
									<div><a href="#3">�ѱ��Ұ�</a></div>
									<div><a href="#4">���̵��</a></div>
									<div><a href="#5">��������</a></div>
								</div> 
								
							-->
							
							<div id="newest1">
								<table class="searchFisrt" >
									<tr><td><a href="#1">1.����</a></td></tr>
									<tr><td><a href="#2">2.����</a></td></tr>
									<tr><td><a href="#3">3.����</a></td></tr>
									<tr><td><a href="#4">4.����</a></td></tr>
									<tr><td><a href="#5">5.����</a></td></tr>
								</table>
							</div>
							
							<div id="newest2">
								<li>
									<img src="" alt="4��7��2/�Թ�����/2000��" />
									<img src="" alt="4��7��2/�Թ�����/2000��" />
									<img src="" alt="4��7��2/�Թ�����/2000��" />
									<img src="" alt="4��7��2/�Թ�����/2000��" />
									<img src="" alt="4��7��2/�Թ�����/2000��" />
								</li>		
								<li>
									<img src="" alt="4��8��2/�Թ�����/2000��" />
									<img src="" alt="4��8��2/�Թ�����/2000��" />
									<img src="" alt="4��8��2/�Թ�����/2000��" />
									<img src="" alt="4��8��2/�Թ�����/2000��" />
									<img src="" alt="4��8��2/�Թ�����/2000��" />
								</li>
								<li>
									<img src="" alt="4��9��2/�Թ�����/2000��" />
									<img src="" alt="4��9��2/�Թ�����/2000��" />
									<img src="" alt="4��9��2/�Թ�����/2000��" />
									<img src="" alt="4��9��2/�Թ�����/2000��" />
									<img src="" alt="4��9��2/�Թ�����/2000��" />
								</li>
								<li>
									<img src="" alt="4��11��2/�Թ�����/2000��" />
									<img src="" alt="4��11��2/�Թ�����/2000��" />
									<img src="" alt="4��11��2/�Թ�����/2000��" />
									<img src="" alt="4��11��2/�Թ�����/2000��" />
									<img src="" alt="4��11��2/�Թ�����/2000��" />
								</li>	
								
							</div>
							
					</div>
				</div>
					
				</section>
			</div>
	</section>


	<section id="three" class="wrapper style2 special widthsiz1">
			<div class="inner">
				<section>
				<div class="box alt">
				<div class="row uniform guideRanking">
					<div class="6u 12u$(small)" id="guideRanking"> 
						<h4>���� ���� ����</h4>
						<div class="row uniform" id="weatherMain">
							<img src="images/weathermap.png" alt="" />
							<c:forEach var="vo" items="${wlist }">
								<p>${vo.loc }</p>
								<p>${vo.tempera}</p>
							</c:forEach>
						</div>
					</div>
					
					<div class="6u$ 12u$(small)" id="guideRanking"> 
						<h4>���̵带 ã�ƿ�</h4>
						
					</div>
				</div>
				</div>
				</section>
			</div>
	</section>
	

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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



	<!-- inline �α��� �˾�â -->
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<!--  <script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>-->

	
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
	
	
	<!-- ���̵� �޴� -->
	<script type="text/javascript">
				$(function() {

				  var group = $(".group");
				
				  group.each(function() {
				    var _group = new GroupBox(this);
				  });
				
				  // ����� ���� ������ �Լ� ����
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
				
				  // ����� ���� ������ �Լ� ����
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

	<!-- ���� ��� �����̵� -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="js/jquery.ulslide.js"></script>

	<script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>

	<script type="text/javascript">
	 $(function() {
         $('#main_bn').ulslide({
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             navigator: '#mainRight a',
             duration: 300,
				autoslide: 3000
         });
         
         /* newest���̺� */
         $('#newest2').ulslide({
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             navigator: '#newest1 a',
             duration: 300,
			autoslide: 3000
         });
     });
    </script>
</body>
</html>