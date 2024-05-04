<%@ page language="java" contentType="text/html; charset=UTF-8 "
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>강의관리</title>
<link href="${pageContext.request.contextPath}/resources/css/clList2.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../../views/common/top.jsp" />
	   
	<div class="board_wrap">
		<div class="board_title">
			<strong>강의 조회 및 수정</strong>			
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top"> 
					<div class = "clNo">번호</div>
					<div class = "clTitle">강의명</div>
					<div class = "clId">담당강사</div>
					<div class = "clCategory">카테고리</div>
					<div class = "clLevel">레벨</div>	
					<div class = "cl">정원</div>					
				</div>
				<div style="cursor: pointer;" onclick="location.href='view.html'">
					<div class = "clNo">1</div>
					<div class = "clTitle">입문자도 배우기 쉬운 한식A반</div>
					<div class = "clId">강건강</div>
					<div class = "clCategory">한식</div>
					<div class = "clLevel">A</div>	
					<div class = "cl">20</div>					
				</div>
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">2</div>
					<div class = "clTitle">누구나 할 수 있는 베이커리A반</div>
					<div class = "clId">남나눔</div>
					<div class = "clCategory">베이커리</div>
					<div class = "clLevel">A</div>	
					<div class = "cl">30</div>					
				</div>
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">3</div>
					<div class = "clTitle">일식전문가의 비법 전수 일식C반</div>
					<div class = "clId">도대담</div>
					<div class = "clCategory">일식</div>
					<div class = "clLevel">C</div>	
					<div class = "cl">10</div>					
				</div>
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">4</div>
					<div class = "clTitle">중급 양식B</div>
					<div class = "clId">류라라</div>
					<div class = "clCategory">양식</div>
					<div class = "clLevel">B</div>		
					<div class = "cl">20</div>				
				</div>	
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">1</div>
					<div class = "clTitle">입문자도 배우기 쉬운 한식A반</div>
					<div class = "clId">강건강</div>
					<div class = "clCategory">한식</div>
					<div class = "clLevel">A</div>	
					<div class = "cl">20</div>					
				</div>
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">2</div>
					<div class = "clTitle">누구나 할 수 있는 베이커리A반</div>
					<div class = "clId">남나눔</div>
					<div class = "clCategory">베이커리</div>
					<div class = "clLevel">A</div>	
					<div class = "cl">30</div>					
				</div>
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">3</div>
					<div class = "clTitle">일식전문가의 비법 전수 일식C반</div>
					<div class = "clId">도대담</div>
					<div class = "clCategory">일식</div>
					<div class = "clLevel">C</div>	
					<div class = "cl">10</div>					
				</div>
				<div style="cursor: pointer;" onclick="">
					<div class = "clNo">4</div>
					<div class = "clTitle">중급 양식B</div>
					<div class = "clId">류라라</div>
					<div class = "clCategory">양식</div>
					<div class = "clLevel">B</div>		
					<div class = "cl">20</div>				
				</div>				
			</div>		
			<div class="bt_wrap">
				<a href="${contextPath}/writeClass.yh" class="on">강의 추가</a>				
			</div>
		</div>
	</div>
	
	
	
	

</body>
<jsp:include page="../../views/common/footer.jsp" />
</html>
