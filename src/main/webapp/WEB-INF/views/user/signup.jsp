<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet" href="/resources/css/jquery.fullPage.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet" href="/resources/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script src="/resources/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/resources/bootstrap-datepicker/locales/bootstrap-datepicker.kr.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
</head>
<body>
<div class="header">
<%@ include file="../common/navi.jsp" %>
</div>
<div class="container " style="margin-top: 150px;">
	<div class="row ">
		<div class="col-8 mx-auto" >
			<form id="signup-form" method="post" action="signup.do">
				<div class="card border-0">
					<div class="card-header bg-white text-black font-weight-bolder"><h4>회원가입</h4></div>
					<div class="card-body">
						<div class="form-row">
							<div class="form-group col-md-8">
      							<input type="text" class="form-control" id="" name="" placeholder="아이디를 입력하세요">
							</div>
							<div class="form-group col-md-2">
      							<button type="button" class="btn btn-secondary" id="idcheck-btn" data-toggle="modal" data-target="#idcheck-modal">중복체크</button>
							</div >
							<div class="from-group col-12">
								<input type="radio" name="gender" value="male" checked="checked"/>남성
								<input type="radio" name="gender" value="female" />여성
							</div>
						</div>
						<div class="form-row mt-3">
							<div class="form-group col-md-8">
      							<input type="text" class="form-control" id="" name="" placeholder="닉네임을 입력하세요">
							</div>
							<div class="form-group col-md-2">
      							<button type="button" class="btn btn-secondary" id="nickcheck-btn" data-toggle="modal" data-target="#nickcheck-modal">중복체크</button>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<input type="text" class="form-control" id="" name="" placeholder="비밀번호를 입력하세요">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<input type="text" class="form-control" id="" name="" placeholder="비밀번호를 다시 입력하세요">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
      							<input type="text" class="form-control" id="" name="" value="${user.email }" readonly="readonly">
							</div>
						</div>
						<div class="form-row mb-3">
							<div class="form-group col-md-12">
								<input type="text" class="form-control" id="birth" placeholder="생년월일을 선택하세요">
							</div>
						</div>
						<div class="form-row border border-top-0 border-right-0 border-left-0">
							<div class="form-group col-md-12">
      							<input type="text" class="form-control" id="phoneNum" maxlength="13" placeholder="휴대폰 번호를 입력하세요">
							</div>
						</div>					
						<div class="form-row mt-4">
   							<label class="ml-2"> <small>(주소 선택입력   *공공연한사이에서 제공하는 양질의 공연정보 및 팜플렛을 받아보세요)</small></label>
   						</div>
   						<div class="form-row">
    						<div class="form-group col-md-4">
      							<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
							</div>
							<div class="form-group col-md-2">
      							<button type="button" class="btn btn-secondary" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">주소검색</button><br>
							</div>
  						</div>
  						<div class="form-row">
								<div class="form-group col-md-6">
	      							<input type="text" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
	      						</div>
	      						<div class="form-group col-md-6">
	      							<input type="text" class="form-control" id="sample4_jibunAddress" placeholder="지번주소">
	      						</div>
						</div>
  						<div class="form-row">
							<div class="form-group col-md-12">
								<span id="guide" style="color:#999;display:none"></span>
      							<input type="text" class="form-control" id="sample4_detailAddress" name="" placeholder="상세주소를 입력하세요">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12 text-center mt-4">
      							<button type="submit" class="btn btn-primary btn-lg">회원가입</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<div class="modal" tabindex="-1" id="idcheck-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">아이디 중복검색</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>사용가능한 아이디입니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">사용하기</button>
      </div>
    </div>
  </div>
</div>
<div class="modal" tabindex="-1" id="nickcheck-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">닉네임 중복검색</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>사용가능한 닉네임입니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">사용하기</button>
      </div>
    </div>
  </div>
</div>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(function() {
	
	$('#signup-form :input#birth').datepicker({
	    format: "yyyy-mm-dd",
	    startDate: "2006-01-01",
	    endDate: "2020-08-20"
	}).focus(function() {
		$(".datepicker").css("top", "312px");
	});
	
})
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}

var autoHypenPhone = function(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }

    return str;
}


var phoneNum = document.getElementById('phoneNum');

phoneNum.onkeyup = function(){
console.log(this.value);
this.value = autoHypenPhone( this.value ) ;  
}


</script>
</body>
</html>










