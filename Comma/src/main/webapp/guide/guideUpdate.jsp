<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>���̵� �� �����ϱ�</title>
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- ���� ���� �ڵ� (url:http://touchsoul.tistory.com/84) -->
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script> -->
<script type="text/javascript">
	$(function() {
		$("#profile_img").on('change', function() {
			readURL1(this);
		});
		$("#profile_img2").on('change', function() {
			readURL2(this);
		});
		$("#profile_img3").on('change', function() {
			readURL3(this);
		});
	});

	function readURL1(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	function readURL2(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah2').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	function readURL3(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah3').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

</head>
<body>
<!-- Main -->
<article id="main"> 
	<header id="header_guideWrite">
	<h2>Guide Write</h2>
	<p>You can be some one's guide</p>
	</header> 
	<section class="wrapper style5">
		<div class="inner">


	<section> <!-- �۾��� -->
	<form method="post" action="guideWrite_ok.do" id="guideUpdateFmt" enctype="multipart/form-data">
		<div class="row uniform" id="guideWrite_text">
			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 1 ���� : ����-->
				<h5>����</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 ������ -->
				<input type="text" name="guide_subject" id="demo-name" value="${vo.guidevo.guide_subject }"
					placeholder="Subject" />
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 2 ���� : �������Ұ�-->
				<h5>�������Ұ�</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 ������ -->
				<textarea name="guide_loc_intro" id="demo-message"
					placeholder="Write your trip plan" rows="6">${vo.guidevo.guide_loc_intro }</textarea>
			</div>





		 	<div class="2u 12u$(xsmall) gWrite_left">
				<h5>���μҰ�1</h5>
			</div>
			<div class="3u 12u$(xsmall)">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img" name="guide_img" value=""/>
					</div>
					<div>
						<img id="blah" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall)">
				<textarea name="guide_detail" id="demo-message"
					placeholder="Enter your message detail" rows="6">${vo.guidevo.guide_detail }</textarea>
			</div>
			
			<div class="2u 12u$(xsmall)">
			</div>
			<div class="10u$ 12u$(xsmall)" id="plusdelbtn">
				<div class="plusBtn">�����߰�&nbsp;&nbsp;</div>
				<div class="deleteBtn">�������</div>
			</div>
			
			
			<!-- 22222222222222222222222222222222222222222222222222 -->
			<div class="2u 12u$(xsmall) gWrite_left plusWrite1">
				<h5>���μҰ�2</h5>
			</div>
			<div class="3u 12u$(xsmall) plusWrite1">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img2" />
					</div>
					<div>
						<img id="blah2" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall) plusWrite1">
				<textarea name="guide_detail2" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>
			
			<!-- 3333333333333333333333333333333333333333333333333-->
			<div class="2u 12u$(xsmall) gWrite_left plusWrite2">
				<h5>���μҰ�3</h5>
			</div>
			<div class="3u 12u$(xsmall) plusWrite2">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img3" />
					</div>
					<div>
						<img id="blah3" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall) plusWrite2">
				<textarea name="guide_detail3" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>


			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 5 ���� : ����-->
				<h5>����</h5>
			</div>
			<div class="4u 12u$(xsmall)">
				<!-- 5 ������ -->
				<div class="select-wrapper">
					<select name="text_loc" id="demo-category">
						<option value="">- ���� -</option>
						<option value="����" checked>����</option>
						<option value="�λ�">�λ�</option>
						<option value="���ֵ�">���ֵ�</option>
						<option value="������">������</option>
					</select>
				</div>
			</div>

			<div class="1u 12u$(xsmall) gWrite_left">
				<!-- 5-1 ���� : �����ο�-->
				<h5>�����ο�</h5>
			</div>
			<div class="5u$ 12u$(xsmall)">
				<!-- 5-1 ������ -->
				<div class="select-wrapper">
					<select name="text_total_person" id="demo-category">
						<option value="">${vo.text_total_person }��</option>
						<option value="1">1��</option>
						<option value="2">2��</option>
						<option value="3">3��</option>
						<option value="4">4��</option>
						<option value="5">5��</option>
						<option value="6">6��</option>
						<option value="7">7��</option>
						<option value="8">8��</option>
						<option value="9">9��</option>
						<option value="10">10��</option>
					</select>
				</div>
			</div>


			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 6 ���� : ���-->
				<h5>���</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 6 ������ -->
				<input type="text" name="text_cost" id="demo-name" value="${vo.text_cost }"
					placeholder="Cost" />
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 7 ���� : ����-->
				<h5>����</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 7 ������ -->
				<textarea name="guide_cost_detail" id="demo-message"
					placeholder="Enter your cost message" rows="6">${vo.guidevo.guide_cost_detail }</textarea>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 8 ���� : �̵�����-->
				<h5>�̵�����</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 8 ������ -->
				<input type="radio" id="walking" name="text_move" value="walking" checked>
					<label for="walking">walking</label> 
				<input type="radio" id="car" name="text_move" value="car"> 
					<label for="car">car</label>
				<input type="radio" id="bicycle" name="text_move" value="bicycle">
					<label for="bicycle">bicycle</label>
			
			</div>
		
			
			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 5 ���� : �ð�-->
				<h5>�ð�</h5>
			</div>
			<div class="2u 12u$(xsmall)">
				<!-- 5 ������ -->
				<div class="select-wrapper">
					<select name="text_time1" id="demo-category1">
						<option value="">- �ð� -</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
				</div>
			</div>
			<div class="2u 12u$(xsmall)">
				<div class="select-wrapper">
					<select name="text_time2" id="demo-category2">
						<option value="">- �㳷 -</option>
						<option value="am">AM</option>
						<option value="pm">PM</option>
					</select>
				</div>
			</div>
			<div class="1u 12u$(xsmall)" id="timeflow">
				<b>~</b>
			</div>
			<div class="2u 12u$(xsmall)">
				<!-- 5-1 ������ -->
				<div class="select-wrapper">
					<select name="text_time3" id="demo-category3">
						<option value="">- �ð� -</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
				</div>
			</div>
			<div class="2u$ 12u$(xsmall)">
				<div class="select-wrapper">
					<select name="text_time4" id="demo-category4">
						<option value="">- �㳷 -</option>
						<option value="am">AM</option>
						<option value="pm">PM</option>
					</select>
				</div>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 1 ���� : �������-->
				<h5>�������</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 ������ -->
				<input type="text" name="guide_meet" id="demo-name" value="${vo.guidevo.guide_meet }"
					placeholder="Meet place" />
			</div>


			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 7 ���� : ������¥-->
				<h5>������¥</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 7 ������ -->
				<input type="text" id="dt" name="text_tour_date" placeholder="Select Date" value="${vo.text_tour_date }">
			</div>
		</div>
	<br>
	<ul class="actions fit small gWrbtn">
		<li><button class="button special fit small" id="guide_update">����</button></li>
		<li><button class="button fit small" onclick="javascript:history.back()">���</button></li>
	</ul>
	</form>
	</section>
</article>
		

<!-- ���γ��� �߰� jquery -->
<script type="text/javascript">

	var p=0;
	
	$(function(){
		$('.plusBtn').click(function(){
			if(p==0){
				$('.plusWrite1').show();
				p=1;
			}else if(p==1){
				$('.plusWrite2').show();
				p=2;
			}else{
				alert("���̻� �߰� �� �� �����ϴ�.");
			}
		});
		
		$('.deleteBtn').click(function(){
			if(p==1){
				$('.plusWrite1').hide();
				p=0;
			}else if(p==2){
				$('.plusWrite2').hide();
				p=1;
			}else{
				alert("������ ���� �����ϴ�.");
			}
		});
		
		$('#guide_update').click(function(){
			
			$('#guideUpdateFmt').submit();
		});
		
	});
</script>

</body>
</html>