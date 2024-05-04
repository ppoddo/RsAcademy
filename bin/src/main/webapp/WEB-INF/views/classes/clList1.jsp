<%@ page language="java" contentType="text/html; charset=UTF-8 "
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>강의리스트</title>
<link href="${pageContext.request.contextPath}/resources/css/clList1.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap" rel="stylesheet">

</head>
<body>
	
	<jsp:include page="../../views/common/top.jsp" />

	<div class="board_wrap">
		<form>
				
			<div class="board_title">
				<strong>강의 선택</strong>
			</div>			
			
			<span class="slideshow-container">
				<div class="display display-test2 area1">
					<br><br><br>						
					<div class="select"> 
						<b>맞춤 강의 선택</b> 
					</div>
					<br><br>
					<div class="radioclass_1">
						<label>클래스</label><br>
						<input type="radio" id="ko" name="classname" value="ko" class="classname" />
						<label for="ko">한식</label>				
						<input type="radio" id="we" name="classname" value="we" class="classname" />
						<label for="we">양식</label>
						<input type="radio" id="jp" name="classname" value="jp" class="classname"/>
						<label for="jp">일식</label>
						<input type="radio" id="ba" name="classname" value="ba" class="classname" />
						<label for="ba">베이커리</label>
					</div>
					<br><br>
					<div class="radioclass_2">
						<label>레벨</label><br>
						<input type="radio" id="A" name="classlevel" value="A" class="classlevel"/>
						<label for="ko">입문</label>				
						<input type="radio" id="B" name="classlevel" value="B" class="classlevel"/>
						<label for="en">중급</label>
						<input type="radio" id="C" name="classlevel" value="C" class="classlevel"/>
						<label for="jp">고급</label>					
					</div>
					<br><br>					
				</div>   
				
				<div class="Slidesbackground">
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath}/resources/pic/cookslide.jpg" class="slideshow-image">
					</div>
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath}/resources/pic/breadslide.jpg" class="slideshow-image">
					</div>
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath}/resources/pic/jpslide.jpg" class="slideshow-image">
					</div>					
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath}/resources/pic/enslide.jpg" class="slideshow-image">
					</div>
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath}/resources/pic/fireslide.jpg" class="slideshow-image">
					</div>					
				</div>						
			</span>
			
			<br>
		
			<div id=list_head>
				<table  border="1px" id="sub_list">
					<tr class="tr" >
						<th class="list1">사진</th>
						<th class="list2">클래스</th>
						<th class="list3">레벨</th>
						<th class="list4">강의명</th>
						<th class="list5">수강기간</th>
						<th class="list6">강사</th>
						<th class="list7">정원</th>
						<th class="list8">수강료</th>					
						<th class="list9">신청</th>						
					</tr>
					
					<tr >
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/ko.jpg" alt="한식"  class="classimg">
						</td>
						<td>한식</td>
						<td>입문</td>
						<td> 입문자도 배우기 쉬운 한식A반 </td>					
						<td>23.11.11~23.12.24</td>
						<td>강건강</td>
						<td>20</td>
						<td>₩450,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>						
					</tr>	
										
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/bread.jpg" alt="베이커리" class="classimg">
						</td>
						<td>베이커리</td>
						<td>입문</td>
						<td> 누구나 할 수 있는 베이커리A반 </td>					
						<td>23.11.11~23.12.10</td>
						<td>남나눔</td>
						<td>30</td>
						<td>₩300,000</td>
						<td><input type ="button" value="신 청 " class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/jp.jpg" alt="일식" class="classimg">
						</td>
						<td>일식</td>
						<td>고급</td>
						<td> 일식전문가의 비법 전수 일식C반 </td>					
						<td>23.11.11~23.12.30</td>
						<td>도대담</td>
						<td>10</td>
						<td>₩900,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/we.jpg" alt="양식" class="classimg">
						</td>
						<td>양식</td>
						<td>중급</td>
						<td> 중급 양식B </td>					
						<td>23.11.11~23.12.22</td>
						<td>류라라</td>
						<td>20</td>
						<td>₩600,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/ko.jpg" alt="한식"  class="classimg">
						</td>
						<td>한식</td>
						<td>입문</td>
						<td> 입문자도 배우기 쉬운 한식A반 </td>					
						<td>23.11.11~23.12.24</td>
						<td>강건강</td>
						<td>20</td>
						<td>₩450,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>						
					</tr>						
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/bread.jpg" alt="베이커리" class="classimg">
						</td>
						<td>베이커리</td>
						<td>입문</td>
						<td> 누구나 할 수 있는 베이커리A반 </td>					
						<td>23.11.11~23.12.10</td>
						<td>남나눔</td>
						<td>30</td>
						<td>₩300,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/jp.jpg" alt="일식" class="classimg">
						</td>
						<td>일식</td>
						<td>고급</td>
						<td> 일식전문가의 비법 전수 일식C반 </td>					
						<td>23.11.11~23.12.30</td>
						<td>도대담</td>
						<td>10</td>
						<td>₩900,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/we.jpg" alt="양식" class="classimg">
						</td>
						<td>양식</td>
						<td>중급</td>
						<td> 중급 양식B </td>					
						<td>23.11.11~23.12.22</td>
						<td>류라라</td>
						<td>20</td>
						<td>₩600,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>	
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/ko.jpg" alt="한식"  class="classimg">
						</td>
						<td>한식</td>
						<td>입문</td>
						<td> 입문자도 배우기 쉬운 한식A반 </td>					
						<td>23.11.11~23.12.24</td>
						<td>강건강</td>
						<td>20</td>
						<td>₩450,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>						
					</tr>						
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/bread.jpg" alt="베이커리" class="classimg">
						</td>
						<td>베이커리</td>
						<td>입문</td>
						<td> 누구나 할 수 있는 베이커리A반 </td>					
						<td>23.11.11~23.12.10</td>
						<td>남나눔</td>
						<td>30</td>
						<td>₩300,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/jp.jpg" alt="일식" class="classimg">
						</td>
						<td>일식</td>
						<td>고급</td>
						<td> 일식전문가의 비법 전수 일식C반 </td>					
						<td>23.11.11~23.12.30</td>
						<td>도대담</td>
						<td>10</td>
						<td>₩900,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/we.jpg" alt="양식" class="classimg">
						</td>
						<td>양식</td>
						<td>중급</td>
						<td> 중급 양식B </td>					
						<td>23.11.11~23.12.22</td>
						<td>류라라</td>
						<td>20</td>
						<td>₩600,000</td>
						<td><input type ="button" value="신 청" class="list_btn_1" /></td>
					</tr>	
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/ko.jpg" alt="한식"  class="classimg">
						</td>
						<td>한식</td>
						<td>입문</td>
						<td> 입문자도 배우기 쉬운 한식A반 </td>					
						<td>23.11.11~23.12.24</td>
						<td>강건강</td>
						<td>20</td>
						<td>₩450,000</td>
						<td><input type ="button" value="신청" class="list_btn_1" /></td>						
					</tr>						
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/bread.jpg" alt="베이커리" class="classimg">
						</td>
						<td>베이커리</td>
						<td>입문</td>
						<td> 누구나 할 수 있는 베이커리A반 </td>					
						<td>23.11.11~23.12.10</td>
						<td>남나눔</td>
						<td>30</td>
						<td>₩300,000</td>
						<td><input type ="button" value="신청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/jp.jpg" alt="일식" class="classimg">
						</td>
						<td>일식</td>
						<td>고급</td>
						<td> 일식전문가의 비법 전수 일식C반 </td>					
						<td>23.11.11~23.12.30</td>
						<td>도대담</td>
						<td>10</td>
						<td>₩900,000</td>
						<td><input type ="button" value="신청" class="list_btn_1" /></td>
					</tr>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/pic/we.jpg" alt="양식" class="classimg">
						</td>
						<td>양식</td>
						<td>중급</td>
						<td> 중급 양식B </td>					
						<td>23.11.11~23.12.22</td>
						<td>류라라</td>
						<td>20</td>
						<td>₩600,000</td>
						<td><input type ="button" value="신청" class="list_btn_1" /></td>
					</tr>			
				</table>							
			</div>
		</form>
	</div>		
		
	<jsp:include page="../../views/common/footer.jsp" />
	
	

	<script>
		var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
       
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        slides[slideIndex - 1].style.display = "block";
    
        setTimeout(showSlides, 2000); // 2초마다 이미지가 체인지됩니다
    }
		
	</script>



</body>
</html>
