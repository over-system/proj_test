<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@charset "UTF-8";

@import url('https://fonts.googleapis.com/css? family=Noto+Sans+KR&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #fff;
	background-size:cover;
}

body::before {
	content: "";
	position: absolute; z-index: 1;
	top: 0; right: 0; bottom: 0; left: 0;
	background-color: #fff;

}

.login-form {
	position: relative; z-index: 2;
}

.login-form h1 {
	font-size: 32px; color: black;
	text-align: center;
	margin-bottom: 60px;
}

.int-area {
	width:400px;
	position: relative;
	margin-top: 20px;
}

.int-area:first-child {
	margin-top: 0;
}
.int-area input {
	width: 100%;
	padding: 20px 10px 10px;
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #999;
	font-size: 18px; color: black;
	outline: none;
}

.int-area label {
	position: absolute; left:10px; top:15px;
	font-size: 18px; color: #999;
	transition: all .5s ease;
}

.int-area label.warining {
	color: red !important;
	animation: warning .3s ease;
	animation-iteration-count: 3;
}

@keyframes warning {
	0% {transform: translateX(-8px);}
	25% {transform: translateX(8px);}
	50% {transform: translateX(-8px);}
	75% {transform: translateX(8px);}
}
.int-area input:focus + label,
.int-area input:valid + label {
	top: -2px;
	font-size: 13px; color: #166cea;
}

.btn-area {
	margin-top: 30px;
}

.btn-area button {
	width: 100%; 
	height: 50px;
	background: #166cea;
	color: #fff;
	font-size: 20px;
	border: none;
	border-radius: 25px;
	cursor: pointer;
}

.caption {
	margin-top : 20px;
	text-align: center;
	color: #fff;
}

</style>

<title>Document</title>
<title>Insert title here</title>
</head>
<body>
<section class="login-form">
		<h1>여기가 내집 관리자</h1>
		<form action="login.do" method="post">
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">ID</label>
			</div>
			
			<div class="int-area">
				<input type="password" name="password" id="password" autocomplete="off" required>
				<label for="password">Password</label>
			</div>
			<div class="btn-area">
				<button type="submit">LOGIN</button>
			</div>
			<div class="caption">
			<a href="new_member.jsp">관리자 추가</a>
			</div>
		</form>
	</section>
	
	<script type="text/javascript">
		let id = $('#id');
		let pw = $('#pw');
		let btn = $('#btn');
		
		$(btn).on('click', function() {
			if($(id).val() == "") {
				$(id).next('label').addClass('warning');
				setTimeout(function() {
					$('label').removeClass('warning');
				}, 1500);
			} else if($(pw).val() == "") {
				$(pw).next('label').addClass('warning');
				setTimeout(function() {
					$('label').removeClass('warning');
				}, 1500);
			}
		});
	</script>
</body>
</html>