<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>	
<html>
<head>
    <meta charset="UTF-8">
    <title>상세</title>
    <link href="${pageContext.request.contextPath }/resources/css/noticeList.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/top.jsp"/>
    <div class="container">
        <div class="board_wrap">
            <div class="board_title">
                <strong>포토폴리오</strong>
                <p>임화진님의 한식A반 포토폴리오입니다.</p>
            </div>
            <div class="board_view_wrap"> <!-- 1.보드 리스트 2. 페이지영역 3. 버튼 영역 wrap으로 감쌈 -->
                <div class="board_view">
                    <div class="title"> <!--글 제목-->
                        산채비빔밥
                    </div>
                    <div class="info"> <!--글 정보-->
                        <dl>
                            <dt>번호</dt>
                            <dd>5</dd>
                        </dl>
                        <dl>
                            <dt>글쓴이</dt>
                            <dd>관리자</dd>
                        </dl>
                        <dl>
                            <dt>작성일</dt>
                            <dd>2023.11.03</dd>
                        </dl>
                        <dl>
                            <dt>조회</dt>
                            <dd>3</dd>
                        </dl>
                    </div>
                    <div class="text"> <!--글 내용-->
                        <img src="pic/koreafood1.bmp" class="popol_img">
	                    <br><br>
	                    <p class="content_text">
							비빔밥은 밥 한 그릇에 보통 다양한 나물과 고기, 참기름, 그리고 고추장을 얹어 수저로 섞어 먹는 음식입니다.
							비빔밥은 남은 반찬 몇 가지로도 새로운 맛을 창조하는 융합과 조화의 음식으로 상생(相生)의 원리가 담겨있다. 오늘날 ‘가장 한국적인 것이 가장 세계적’이라는 말에 잘 어울리는 것이 비빔밥과 그 속에 담긴 조화와 화합의 정신이 아닐까 한다.
						</p>
                    </div>
                    <h3 class="reply">댓글</h3>
                    <div class="comment">
                        <div class="comment_title">
                            <div class="comment-info">
                                <dl>
                                    <dt>번호</dt>
                                    <dd>1</dd>
                                </dl>
                                <dl>
                                    <dt>글쓴이</dt>
                                    <dd>임화진</dd>
                                </dl>
                                <dl>
                                    <dt>작성일</dt>
                                    <dd>2023.11.04</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="dotted"></div>	<!-- 선긋기 -->
                        <div class="comment-text">
                            우와 맛있겠다!
                        </div>
                    </div>
                    <div class="comment">
                        <div class="comment_title">
                            <div class="comment-info">
                                <dl>
                                    <dt>번호</dt>
                                    <dd>2</dd>
                                </dl>
                                <dl>
                                    <dt>글쓴이</dt>
                                    <dd>변윤호</dd>
                                </dl>
                                <dl>
                                    <dt>작성일</dt>
                                    <dd>2023.11.04</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="dotted"></div>	<!-- 선긋기 -->
                        <div class="comment-text">
                            비빔밥 한그릇 뚝딱이겠네요!
                        </div>
                    </div>
                    <div class="comment">
                        <div class="comment_title">
                            <div class="comment-info">
                                <dl>
                                    <dt>번호</dt>
                                    <dd>3</dd>
                                </dl>
                                <dl>
                                    <dt>글쓴이</dt>
                                    <dd>최재영</dd>
                                </dl>
                                <dl>
                                    <dt>작성일</dt>
                                    <dd>2023.11.04</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="dotted"></div>	<!-- 선긋기 -->
                        <div class="comment-text">
                            남자는 비빔밥이긴해~
                        </div>
                    </div>
                    <div class="comment">
                        <div class="comment_title">
                            <div class="comment-info">
                                <dl>
                                    <dt>번호</dt>
                                    <dd>4</dd>
                                </dl>
                                <dl>
                                    <dt>글쓴이</dt>
                                    <dd>최다원</dd>
                                </dl>
                                <dl>
                                    <dt>작성일</dt>
                                    <dd>2023.11.04</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="dotted"></div>	<!-- 선긋기 -->
                        <div class="comment-text">
                           헐~ 미쳤다~~ ><
                        </div>
                    </div>
                </div>
                <div class="bt_wrap">
                    <a href="popolList.html" class="on">LIST</a>
                    <a href="edit.html" class="on_1">EDIT</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>