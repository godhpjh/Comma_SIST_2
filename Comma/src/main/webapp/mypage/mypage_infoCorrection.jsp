<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- 프로필 사진 삽입 코드 (url:http://touchsoul.tistory.com/84) -->
<!-- 		<script type="text/javascript">
	        $(function() {
	        	
	            $("#profile_img").on('change', function(){
	                readURL(this);
	            });
	        });
	
	        function readURL(input) {
	            if (input.files && input.files[0]) {
	            var reader = new FileReader();
	
	            reader.onload = function (e) {
	                    $('#blah').attr('src', e.target.result);
	                }
	
	              reader.readAsDataURL(input.files[0]);
	            }
	        }
	    </script> -->
</head>
<body>
	<h3>복구중....</h3>

	<section class="wrapper style5" id="two">		
		<div class="inner">
			<h4>기본정보</h4>
			<div class="table-wrapper">
				<table class="infomodify">
						<tr>
							<th>ID</th>							
								<td><input type="text" id="id" value="${id }" readonly="readonly"></td>
							
							<th>Nickname</th>							
							<td><input type="text" id="id" value="${vo.user_nick }"></td>
						</tr>
						<tr>
							<th>Password</th>
							<td><input type="password" id="password" value="" /></td>
							<th>Password</th>
							<td><input type="password" id="password" value="" /></td>
						</tr>
						<tr>
							<th>E-Mail</th>
							<td colspan=3>
								<input type="email" id="email1" value="${vo.user_mail }" size="8"/>@
								<input type="email" id="email2" value="" size="8"/>
							</td>
						</tr>
				</table>
				<hr/>		구간 나누기
				<!--
				<h4>추가정보</h4>
				
				<table class="infomodify">
						<tr>
							<th>프로필사진</th>
							<td>
							<div class="my-thumb-1">			
							
								<input type='file' id="profile_img"/>
								<img id="blah" src="#" alt="your image" />
							
							</div> 
							</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>
							<div id="demo">
								<input type="text" id="dt" placeholder="날짜선택" >
        						<div id="dd"></div>
   							</div>
   							</td>
						</tr>
						 <tr>
							<th>성별</th>
							<td>
							<input type="radio" class="gender" id="demo-priority-low" name="demo-priority" value="male"/>
							<label for="demo-priority-low">male</label>
							<input type="radio" class="gender" id="demo-priority-normal" name="demo-priority" value="female"/>
							<label for="demo-priority-normal">female</label>
							</td>
						</tr>
						<tr>
							<th>Mobile</th>
							<td class="phonemy">
								<select id="tel1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
									<option value="016">016</option>
								</select>
								<input type="text" id="tel2" size="4">
								<input type="text" id="tel3" size="4">
							</td>
						</tr>
						<tr>
							<th>Address</th>
							<td>주소</td>
						</tr>
				</table>
			
				<hr/>		구간 나누기
				
				<table>
					<thead>
						<tr><b>Introduce Yourself, shortly!</b></tr>
					</thead>
					<tbody>
						<textarea rows="4" cols="50"></textarea>
					</tbody>
					<tfoot/> 
				</table>-->
			</div>
		</div>
	</section>
		
</body>
</html>