<%@ page language="java" contentType="text/html; charset=UTF-8 "
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 상담 상세</title>
<link href="${pageContext.request.contextPath}/resources/css/css.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="../../views/common/top.jsp" />
	<form action="counselingDetail.dw" method="post">
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong>1:1 상담</strong>
					<p>1:1 상담 페이지입니다. 문의 사항을 남겨주세요.</p>
				</div>
				<div class="board_view_wrap">
					<!-- 1.보드 리스트 2. 페이지영역 3. 버튼 영역 wrap으로 감쌈 -->
					<div class="board_view">
						<div class="title">
							<!--글 제목-->
							${ b.cbTitle }
						</div>
						<div class="info">
							<!--글 정보-->
							<dl>
								<dt>번호</dt>
								<dd>${ b.cbNo }</dd>
							</dl>
							<dl>
								<dt>글쓴이</dt>
								<dd>${ b.mbName }</dd>
							</dl>
							<dl>
								<dt>작성일</dt>
								<dd>${ b.cbDate }</dd>
							</dl>
							<dl>
								<dt>조회</dt>
								<dd>${ b.cbNum }</dd>
							</dl>
						</div>
						<div class="text">
							<!--글 내용-->
							${ b.cbContent }
						</div>
						<div class="comment">
							<h3>답변</h3>
							<div class="comment_title">
								<div class="comment-info">
									<dl>
										<dt>번호</dt>
										<dd>1</dd>
									</dl>
									<dl>
										<dt>글쓴이</dt>
										<dd>RS 요리학원 관리자</dd>
									</dl>
									<dl>
										<dt>작성일</dt>
										<dd>2023.11.04</dd>
									</dl>
									<dl>
										<dt>조회</dt>
										<dd>3</dd>
									</dl>
								</div>
							</div>
							<div class="comment-text">
								안녕하세요 재영님!<br> 13일 개강반 바리스타 클래스로 수강정정 도와드렸으며,<br>
								마이페이지에서 확인 가능하십니다.<br> RS 요리학원을 이용해주셔서 감사합니다.<br>
							</div>
						</div>
					</div>
					<div class="bt_wrap">
						<a href="list.html" class="on">LIST</a> <a href="edit.html"
							class="on_1">EDIT</a>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<jsp:include page="../../views/common/footer.jsp" />
</html>