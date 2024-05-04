<%@ page language="java" contentType="text/html; charset=UTF-8 "
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>강의 추가</title>
<link href="${pageContext.request.contextPath}/resources/css/writeClass.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap" rel="stylesheet">

</head>
<body>
	<jsp:include page="../../views/common/top.jsp" />
	<form action="${ contextPath }/insertClass.yh">
		<div class="container">	   
			<div class="board_wrap">
				<div class="board_title">
					<strong>강의 추가</strong>			
				</div>
				<div class="board_write_wrap">
					<div class="board_write">
						<div class="title">
							<dl>
								<dt>강의명</dt>
								<dd><input type="text" placeholder="강의명" name="clTitle"></dd>
							</dl>
							<br>
							<dl>
								<dt>강의 시작일</dt>
								<dd><input type="date" name="clStartdate"></dd>
							</dl>
							<br>
							<dl>
								<dt>강의 종료일</dt>
								<dd><input type="date" name="clEnddate"></dd>
							</dl>
							<br>
							<dl>
								<dt>레벨</dt>
								<dd>
									<select name="clLevel">
										<option value="A"> A </option>
								        <option value="B"> B </option>
								        <option value="C"> C </option>						        
									</select>
								</dd>
							</dl>
							<br>
							<dl>
								<dt>수강료</dt>
								<dd><input type="number" name="clPrice" placeholder=""></dd>
							</dl>
							<br>
							<dl>
								<dt>강의소개</dt>
								<dd><textarea name="clIntro"></textarea></dd>
							</dl>
							<br>
							<dl>
								<dt>카테고리</dt>
								<dd>
									<select name="clCategory">
										<option value="K"> 한 식 </option>
								        <option value="W"> 양 식 </option>
								        <option value="J"> 일 식 </option>
								        <option value="B"> 베이커리</option>						        
									</select>							
								</dd>
							</dl>
							<br>
							<dl>
								<dt>정원</dt>
								<dd><input type="number" placeholder=" " name="clNum" value="20"></dd>
							</dl>
							<br>
							<dl>
								<dt>사진주소</dt>
								<dd><input type="text" placeholder=" " name="clImage"></dd>
							</dl>
							<br>
							<dl>
								<dt>담당강사</dt>
								<dd>
									<select name="clId">
										<option value=""> 강건강 </option>
								        <option value=""> 남나눔 </option>
								        <option value=""> 도대담 </option>
								        <option value=""> 류라라 </option>															        
									</select>	
								</dd>
							</dl>
						</div>						
						<div class="bt_wrap">						
							<button class="on">등록</button>
							<button class="back" type="button" onclick="javascript:history.back();">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
<jsp:include page="../../views/common/footer.jsp" />
</body>
</html>