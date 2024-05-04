<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레벨 테스트 결과</title>
<link href="${contextPath}/resources/css/css.css" rel="stylesheet">
<link href="${contextPath}/resources/css/levelTest.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../../common/top.jsp" />
	<div class="container">
		<div class="levelTestResult">
			<div id="title">레벨 테스트 결과</div>
			<div id="result">${resultNum}점</div>
			

			<table>
				<tr>
					<td colspan="4" id="td1">아무개님께 추천 드리는 클래스<td>
				</tr>
				<tr>
					<td colspan="4" id="td2">사진 클릭시 해당 클래스의 상세 페이지로 이동합니다.</td>
				</tr>				
				<tr>
					<td class="td3" style="border-right: solid 1px #655345;"><img src="${contextPath}/resources/pic/cook2.jpg"></td>
					<td class="td3" style="border-right: solid 1px #655345;"><img src="${contextPath}/resources/pic/salad3.jpg"></td>
					<td class="td3" style="border-right: solid 1px #655345;"><img src="${contextPath}/resources/pic/cook5.jpg"></td>
					<td class="td3"><img src="${contextPath}/resources/pic/bread1.jpg"></td>				
					</tr>
				<tr>
					<td>한식${resultClass}</td>
					<td>일식${resultClass}</td>					
					<td>양식${resultClass}</td>
					<td>베이커리${resultClass}</td>
				</tr>
			</table>
			<br>
			<div class="bt_wrap">
				<a href='' class="on">이전</a>
			</div>
		</div>
	</div>
	<jsp:include page="../../common/footer.jsp" />
	
	
</body>
</html>