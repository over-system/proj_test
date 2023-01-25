<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style type="text/css">
	.container {
		width : 500px;
		margin : 40px auto;
		line-height : 16px;
	}
	h5 {
			font-size: 32px; color: #black;
			text-align: center;
			margin-bottom: 60px;
	}
	.n {
		font-size : 13px;
	}
	.new_member {
		background-color :	skyblue;
		color: white;
		border-radius : 5px;
		border : 0;
		padding: 10px 172px;
	}
	#new_member {
		background-color: rgb(255, 80, 90);
		color : black;
		border : 0;
		dorder-radius : 5px;
		padding : 10px 224px;
	}
	.bottom input {
		background-color : white;
		border : 0;
		color : teal;
		font-size : 16px;
	}
	i {
		color : lightgray;
	}
	#imail {
		position : absolute;
		top : 110px;
		margin : 0 470px;
	}
	#iperson1 {
		position : absolute;
		top : 160px;
		margin : 0 470px;
	}
	#iperson2 {
		position : absolute;
		top : 210px;
		margin : 0 470px;
	}
	#ipw {
		postition : absolute;
		top : 260px;
		margin : 0 470px;
	}
	input {
		border : 1px solid lightgray;
		border-radius : 3px;
	}
	.py-4{
		margin-top: 50px;
	}
	#loginButton{
		text-decoration: underline;
		color: #0064FF;
	}
	
	body {
		font-family: 'Noto Sans KR', sans-serif;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		background-size:cover;
	}
	.m-0 {
		margin-top : 20px;
		text-align: center;
		color: #black;
	}

</style>
</head>
<body>
<section class="new-form">
		<h5>관리자 추가 페이지</h5>
		<hr> <br>
		<form action="insertUser.do" method="post" id="frm">
		<div class="int-area">
			<input type="text" placeholder="아이디" name="id" autocomplete="off" required style="height:30px; width: 495px">
			<div class="check_font" id="id_check"></div><br>
			<input type="password" placeholder="비밀번호" name="password" required style="height:30px; width: 495px"><br><br>
			<input type="password" placeholder="비밀번호 확인" name="pwck" required style="height:30px; width: 495px"><br><br>
			<input type="text" placeholder="이름" name="name" required style="height:30px; width: 495px"><br><br>
			<input type="text" placeholder="전화번호" name="tel" required style="height:30px; width: 495px"><br><br>
			</div>
			<p>
				<input type="submit" value="추가하기" id="new" class="new_member"/><br>
				<p><a href="login3.jsp"><input type="button" value="취소" class="new_member"></a></p>
			</p>
		</form>
		<div class="m-0">
				<p>계정이 있으신가요?<br>
				<a href="login2.jsp" id="loginButton">로그인하러 가기</a></p>
			<input type="hidden" name="idChk" value="invalid" />
		</div>
		
<script type="text/javascript">
// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#id").blur(function() {
		// id = "id_reg" / name = "userId"
		var user_id = $('#id').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/user/idCheck?userId='+ user_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다 :p");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					} else {
						
						if(idJ.test(user_id)){
							// 0 : 아이디 길이 / 문자열 검사
							$("#id_check").text("");
							$("#reg_submit").attr("disabled", false);
				
						} else if(user_id == ""){
							
							$('#id_check').text('아이디를 입력해주세요 :)');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
							
						} else {
							
							$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
						
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
</script>
		
<!--   <script type="text/javascript">
$(document).ready(function(){
	$("#frm").submit(function(){
		alert("submit called");
		if ($('input[name=idChk]').val() === 'invalid') {
		    alert("id가 중복되었거나 중복 체크하지 않았습니다.");
			return false;
		}else if($('input[name=password]').val() !== $('input[name=pwck]').val()){
			alert("암호와 암호 확인이 일치하지 않습니다.");
			return false;
		}
		
  	});

	$("#btn").click(function() {
		var url = 'checkID.do?id=' + $('input[name=id]').val();
		$.getJSON(url, function(data) {
			// data = {id : '1111'}
			if (data.id === $('input[name=id]').val()) {
				alert("아이디가 중복되었습니다.");
				$('input[name=idChk]').val("invalid");
			} else {
				alert("사용가능한 아이디 입니다.");
				$('input[name=idChk]').val("valid");
			}
		});
	});
	
});
</script> -->



  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="resources/js/admin.js"></script>

</section>
</body>
</html>