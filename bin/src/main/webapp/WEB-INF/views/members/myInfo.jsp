<%@ page language="java" contentType="text/html; charset=UTF-8 "
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지</title>
<link href="${pageContext.request.contextPath}/resources/css/enrol.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&family=Rubik&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
	<jsp:include page="../../views/common/top.jsp" />

	<form action="updateMember.jy" onsubmit="return validateForm()" method="post">
		<div class="enrol">
		<div class="tabletitle">MY INFO</div>
			<br>
			<table class="table2">

				<tr>
					<td class="tableLable"><lable>아이디 </lable></td>
					<td><input type="text" class="tableInput" readonly value="${loginUser.mbId}"></td>
				</tr>
				
				<tr>
					<td class="tableLable"><lable>비밀번호 </lable></td>
               		<td><input type="text" class="tableInput" id="pwd" name ="mbPwd" value="${loginUser.mbPwd}"></td>
				</tr>
				<tr>
					<td class="tableLable"><lable>비밀번호 확인 </lable></td>
              		<td><input type="text" class="tableInput" id="check-pwd">
                    <span id="pwd-check-warn"></span></td>
				</tr>
				<tr>
					<td class="tableLable"><lable>이름 </lable></td>
					<td><input type="text" class="tableInput" value="${loginUser.mbName}"></td>
				</tr>
				<tr>
					<td class="tableLable"><lable>주소 </lable></td>
					<td>
						<c:set var="sample6_postcode" value="${ fn:split(loginUser.mbAddress,'@')[0] }"/>
					
					   <input class="tableInput" type="text" placeholder="우편번호" id="sample6_postcode" name="sample6_postcode" value="${sample6_postcode}">  
	                  <input type="button" id="sample6" onclick="sample6_execDaumPostcode()" class="tablebutton" value="검색"><br> 
        	          <input type="text" class="tableInput" placeholder="기본주소" id="sample6_address" name="sample6_address"  value="${ fn:split(loginUser.mbAddress,'@')[1] }" ><br> 
            	      <input type="text" class="tableInput" placeholder="나머지 주소(선택 입력 가능)" id="sample6_detailAddress" name="sample6_detailAddress" value="${ fn:split(loginUser.mbAddress,'@')[2] }"><br>
                	  <input type="text" class="tableInput" id="sample6_extraAddress" placeholder="참고사항" name="sample6_extraAddress" value="${ fn:split(loginUser.mbAddress,'@')[3] }">
                	</td>
				</tr>
				<tr>
					<td class="tableLable"><lable>휴대전화 </lable></td>
					<td><select class="tableInput">
							<option selected>010</option>
							<option>011</option>
							<option>016</option>
					</select>- <input type="text" class="tableInput" value="${ fn:split(loginUser.mbTel,'-')[1] }"> - 
					<input type="text" class="tableInput" value="${ fn:split(loginUser.mbTel,'-')[2] }"></td>
					
					
					<td class="tableLable"><lable>휴대전화 </lable></td>
              		 <td>
		              	<select class="tableInput" name="tel1">
		                     <option value="010" selected>010</option>
		                     <option value = "011">011</option>
		                     <option value="016">016</option>
	               		</select>- 
	               		<input type="text" class="tableInput" name="tel2" value="${ fn:split(loginUser.mbTel,'-')[1] }"> - 
	               		<input type="text" class="tableInput" name = "tel3" value="${ fn:split(loginUser.mbTel,'-')[2] }">
               		</td>
					
					
				</tr>
				<tr>
					<td class="tableLable"><label>이메일</label></td>
              		<td><input class="tableInput" type="text" placeholder="example@gmail.com" id="userEmail1" name="mbEmail" value="${loginUser.mbEmail}"> 
              		<input type="button" class="tablebutton" value="코드받기" id="mail-Check-Btn"><br>
                  	<input class="tableInput mail-check-input" type="text" placeholder="인증코드 입력"> 
                  	<span id="mail-check-warn"></span>
               </td>	

				</tr>
				<tr>
					<td class="tableLable"><label>생년월일</label></td>
					<td><input class="tableInput" type="date"
						placeholder="ex)951223" value ="${loginUser.mbBirth}"></td>

				</tr>
				<tr>
					<td class="tableLable"><label>내강의</label></td>
					
					<td>
						<c:if test="${!empty classList}">
							<c:forEach items="${classList}" var="cl">
								<input class="tableInput" type="text" value="${cl.clTitle}" readonly="readonly">
								<input class="hidden"  type="hidden" value="${cl.csCode }">
								<c:if test="${cl.csStatus == 'Y'}">
									<input type="button" class="tablebutton" value="신청취소" id="classCancle">
									<span> 신청중</span><br>
								</c:if>
								<c:if test="${cl.csStatus == 'N'}">
									<span> 철회</span><br>
								</c:if>
								<c:if test="${cl.csStatus == 'G'}">
									<input type="button" class="tablebutton" value="철회" id="classDelete">
									<span> 수강중</span><br>
								</c:if>
								<c:if test="${cl.csStatus == 'E'}">
									<span> 수강완료</span><br>
								</c:if>
								<c:if test="${cl.csStatus == 'C'}">
									<span> 신청취소</span><br>
								</c:if>
							</c:forEach>
						</c:if>
					</td>
				</tr>
				<tr>
					<td class="tableLable"><label>레벨테스트결과</label></td>
					<td><input class="tableInput" type="text" value="${loginUser.mbLevel}" readonly="readonly"></td>

				</tr>
				<tr style="border-bottom: 0px none rgba(0,0,0,0)">
					
					<td colspan="2" class="tdCenter"><br>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						<input type="submit" class="tableEnrolbutton" value="수 정"> 
						<input type="button"class="tableEnrolbutton" value="취 소" onclick="javascript:history.back();"> 
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						<input type="submit" class="tablebutton" value="회원탈퇴">
					</td>
				</tr>
			</table>
			<br>
		</div>
	</form>


	<script>
    let check_button=false;
    // 유효성 검사를 하나라도 통과 못할시 sub이 안되게 검사할 예정
    let check_mail=false;
    let check_pwd=false;
    
    
    function validateForm(){
       let check=true;
       let msg = "";
       
       
	    if(!check_pwd){
          alert("비밀번호 인증을 완료해주세요!");
          check = false;
          return check;
       }else if(!check_mail && check_button){
          alert("이메일 인증을 완료해주세요!");
          check = false;
          return check;
       }
       
       return check;
       
    }
 
    
    
    window.onload = () =>{
    	
    	
        
       $('#classCancle').click(function() {
    	   const prev=this.previousElementSibling.value+"";
    	   window.location.href = "classCancle.jy?CsStatus=C&Id="+'${loginUser.mbId}'+ '&CsCode=' +prev;
       });
       
       $('#classDelete').click(function() {
    	   const prev=this.previousElementSibling.value+"";
    	   window.location.href = "classCancle.jy?CsStatus=N&Id="+'${loginUser.mbId}'+'&CsCode='+prev;
       });
       
       
       
       let code="";
       
       /*인증체크하는곳*/
      $('#mail-Check-Btn').click(function() {
         const checkInput = $('.mail-check-input'); // 인증번호 입력하는곳 
         check_button=true;
         console.log(document.getElementById('userEmail1').value);
         $.ajax({
            type : 'get',
            url : '${contextPath}/mailCheck.jy', // GET방식이라 Url 뒤에 email을 뭍힐수있다.
            data: {Email:document.getElementById('userEmail1').value},
            success : function (data) {
               console.log("data : " +  data);
               checkInput.attr('disabled',false);
               code =data;
               alert('인증번호가 전송되었습니다.')
            }         
         }); 
      }); 
      
      /* 받아온 랜덤 코드를 비교하는 부분 인증코드 input에서 포커스를 잃었을시 확인*/
      $('.mail-check-input').blur(function () {
         const inputCode = $(this).val();
         const $resultMsg = $('#mail-check-warn');
         console.log(code);
         if(check_button){
            if(inputCode == code){
               $resultMsg.html('인증번호가 일치합니다.');
               $resultMsg.css('color','green');
               $('#mail-Check-Btn').attr('disabled',true);
               $('#userEamil1').attr('readonly',true);
               $('#userEamil2').attr('readonly',true);
               $('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
                  $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
                   check_mail=true;
            }else{
               $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
               $resultMsg.css('color','red');
                check_mail=false;
            }
         }
      });
       
       
       
       
       
       /* 비밀번호 일치 체크 */
       const checkPwd = document.getElementById('check-pwd');
       const pwd = document.getElementById('pwd');
       const pwdCheckWarn = document.getElementById('pwd-check-warn');
       
       checkPwd.addEventListener("blur", function() {
          if(pwd.value.trim() != ""){/*비밀번호를 입력한 경우만 체크*/
                if(checkPwd.value == pwd.value){
                   pwdCheckWarn.style.color="green";
                   pwdCheckWarn.innerText = "비밀번호가 일치합니다."
                    check_pwd=true;
                }else{
                   pwdCheckWarn.style.color="red";
                   pwdCheckWarn.innerText = "비밀번호가 불일치합니다."
                    check_pwd=false;
                   
                }
          }
       });
       
       
    }
	</script>
	
	   <!--카카오 지도 api 관련-->
   <script
      src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
       function sample6_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
   
                   // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                   var addr = ''; // 주소 변수
                   var extraAddr = ''; // 참고항목 변수
   
                   //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                   if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                       addr = data.roadAddress;
                   } else { // 사용자가 지번 주소를 선택했을 경우(J)
                       addr = data.jibunAddress;
                   }
   
                   // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                   if(data.userSelectedType === 'R'){
                       // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                       // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                       if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                           extraAddr += data.bname;
                       }
                       // 건물명이 있고, 공동주택일 경우 추가한다.
                       if(data.buildingName !== '' && data.apartment === 'Y'){
                           extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                       }
                       // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                       if(extraAddr !== ''){
                           extraAddr = ' (' + extraAddr + ')';
                       }
                       // 조합된 참고항목을 해당 필드에 넣는다.
                       document.getElementById("sample6_extraAddress").value = extraAddr;
                   
                   } else {
                       document.getElementById("sample6_extraAddress").value = '';
                   }
   
                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
                   document.getElementById('sample6_postcode').value = data.zonecode;
                   document.getElementById("sample6_address").value = addr;
                   // 커서를 상세주소 필드로 이동한다.
                   document.getElementById("sample6_detailAddress").focus();
               }
           }).open();
       } 
   </script>




</body>


<jsp:include page="../../views/common/footer.jsp" />
</html>