<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>

<link href="${pageContext.request.contextPath}/resources/css/find.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>
				<a href="Main.html">RS ACADEMY</a>
			</h1>
			<div class="nav">
				<ul>
					<li><a href="">회원</a></li>
					<li><a href="">강사</a></li>
					<li><a href="">수강신청</a></li>
					<li><a href="">마이페이지</a></li>
				</ul>
			</div>
		</div>
		<div class="find-wrap">
			<h2>FIND PASSWORD</h2>
			<div class="find-info">
				<dl>
					<dt>아이디</dt>
					<dd>
						<input type="text" placeholder="rsacademy">
					</dd>
				</dl>
				<dl>
					<dt>이름</dt>
					<dd>
						<input type="text" placeholder="홍길동">
					</dd>
				</dl>
				<dl>
					<dt>이메일</dt>
					<dd>
						<input type="email" placeholder="rsacademy@naver.com">
					</dd>
				</dl>
				<div class="code-bt">
					<a href="">인증번호 발송</a>
				</div>
				<dl>
					<dt>인증 코드 입력</dt>
					<dd>
						<input type="" class="code">
					</dd>
				</dl>
				<div class="check-bt">
					<a href="">확인</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>