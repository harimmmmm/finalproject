<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- **************** MAIN CONTENT START **************** -->
<main>
	<!-- =======================
Main part START -->
	<section>
<c:set value="등록하기" var="name"/>
	<c:if test="${status eq 'u' }">
		<c:set value="수정하기" var="name"/>
	</c:if>	
		<div class="container">
			<div class="row g-5 justify-content-between">
				<!-- Admission form START -->
				<div class="col-md-8 mx-auto">
					<!-- Title -->
					<span
						style="color: blueviolet; font-size: 20px; font-weight: bolder;">IT
							CRUIT</span> <span style="color: black; font-weight: bolder;">면접
						리뷰 작성</span> <br>
					<br> <label class="form-label">작성을 완료하시면 실제 직원들이 입력한
						면접후기를 승인된 날로부터 1년간 무료로 볼 수 있습니다. 입력하신 모든 정보는 익명으로 처리되니 걱정마세요.</label>
					<!-- Form START -->					
					<form class="row g-3" action="/ent/entInterviewInsert.do" method="post" name="interviewForm">
						<input type="hidden" name="entNo" value="${entVO.entNo }">
						<!-- Basic information START -->
						<div class="row g-4">
							<!-- Course title -->

							<div class="col-12">
								<h5 style="display: inline; margin-right: 50px;">기업명</h5>
								 <span style="font-size: 23px; color: black; font-weight: bold;"> ${entVO.entNm } </span>
							</div>

							<div class="mt-2"></div>
				
							<div class="col-12" style="display: flex; align-items: center;">
								<h5 style="margin-right: 50px;">면접 경로를 선택해주세요</h5>
								<select class="form-select border-1 z-index-9 bg-transparent"
									aria-label=".form-select-sm" data-search-enabled="true"
									style="flex: 1;" name="rvwCourse">
									 <option value="">선택해 주세요</option>
                                        <option value="온라인 지원">온라인 지원</option>
                                        <option value="직원추천">직원추천</option>
                                        <option value="헤드헌터">헤드헌터</option>
                                        <option value="공개채용">공개채용</option>
                                        <option value="학교 취업지원 센터">학교 취업지원 센터</option>
                                        <option value="기타">기타</option>
								</select>
							</div>
			
							<div class="mt-2"></div>

							<div class="col-12">
								<h5 style="display: inline; margin-right: 50px;">면접경험</h5>
								<input type="radio" name="rvwExperience" id="" value="긍정적"> <label
									for="rvwExperience"
									style="font-size: 18px; font-weight: bold; margin-right: 70px;">&nbsp;긍정적</label>
								<input type="radio" name="rvwExperience" id="" value="보통"> <label
									for="rvwExperience"
									style="font-size: 18px; font-weight: bold; margin-right: 70px;">&nbsp;보통</label>
								<input type="radio" name="rvwExperience" id="" value="부정적"> <label
									for="rvwExperience" style="font-size: 18px; font-weight: bold;">&nbsp;부정적</label>
							</div>

							<div class="mt-2"></div>

							<!-- Short description -->
							<div class="col-12">
								<h5 style="display: inline; margin-right: 50px;">면접에서 채용까지의
									과정 요약</h5>
								<textarea class="form-control" name="rvwCrs" rows="3"
									style="resize: none; display: inline;"
									placeholder="최대한 자세하게 작성해주세요. 최초 연락부터 인터뷰 횟수,분위기,면접 팁 등"></textarea>
							</div>

							<div class="mt-2"></div>

							<div class="col-12">
								<h5 style="display: inline; margin-right: 50px;">면접 중 기억에
									남는 3가지 질문은?</h5>
								<textarea class="form-control" name="rvwQue" rows="3"
									style="resize: none; display: inline;"
									placeholder="조별 주제,개별 과제,대면 질문 등 면접 중 가장 기억에 남는 3가지 질문을 구체적으로 작성해 주세요"></textarea>
							</div>

							<div class="mt-2"></div>

							<div class="col-12">
								<h5 style="display: inline; margin-right: 50px;">면접답변 혹은
									느낀점을 남겨주세요.</h5>
								<textarea class="form-control" name="rvwAns" rows="3"
									style="resize: none; display: inline;"
									placeholder="면접답변 혹은 느낀점을 남겨주세요."></textarea>
							</div>

							<div class="mt-2"></div>

							<!-- Course category -->
							<div class="row">
								<div class="col-md-4">
									<label class="form-label h5" style="color: black;">직무</label> <select
										class="form-select border-1 z-index-9 bg-transparent"
										aria-label=".form-select-sm" data-search-enabled="false" name="rvwCmmncd">
										<option value="">선택해 주세요</option>
										<option value="서버">서버</option>
										<option value="프론트엔드">프론트엔드</option>
										<option value="백엔드">백엔드</option>
										<option value="응용소프트웨어 ">응용소프트웨어</option>
										<option value="시스템소프트웨어">시스템소프트웨어</option>
										<option value="앱개발자">앱개발자</option>
										<option value="크로스플랫폼 앱개발자">크로스플랫폼 앱개발자</option>
										<option value="게임 개발자">게임 개발자</option>
										<option value="DBA">DBA</option>
										<option value="빅데이터 엔지니어">빅데이터 엔지니어</option>
										<option value="인공지능/머신러닝">인공지능/머신러닝</option>
										<option value="devops/시스템	엔지니어">devops/시스템 엔지니어</option>
										<option value="HW/임베디드">HW/임베디드</option>
										<option value="블록체인">블록체인</option>
										<option value="PM">PM</option>
									</select>
								</div>

								<div class="col-md-4">
									<label class="form-label h5" style="color: black;">면접
										날짜</label> <input type="date" class="form-control" name="rvwIntYmd" id="interviewDate" style="width: 100%;">
								</div>

								<div class="col-md-4">
									<label class="form-label h5" style="color: black;">발표
										날짜</label> <input type="date" class="form-control" name="rvwAnnYmd" id="announcementDate" style="width: 100%;">
								</div>
							</div>

							<div class="mt-2"></div>

							<div class="col-12" style="display: flex; align-items: center;">
								<h5 style="margin-right: 50px;">면접난이도</h5>
								<select class="form-select border-1 z-index-9 bg-transparent"
									aria-label=".form-select-sm" data-search-enabled="false"
									style="flex: 1;" name="rvwLevel">
									<option value="0">선택해 주세요</option>
									<option value="1">매우 쉬움</option>
									<option value="2">쉬움</option>
									<option value="3">보통</option>
									<option value="4">어려움</option>
									<option value="5">매우 어려움</option>
								</select>
							</div>

							<div class="mt-2"></div>

							<div class="col-12" style="display: flex; align-items: center;">
								<h5 style="margin-right: 50px;">이 기업에 합격하셨나요?</h5>
								<select class="form-select border-1 z-index-9 bg-transparent"
									aria-label=".form-select-sm" data-search-enabled="true"
									style="flex: 1;" name="rvwStts">
									<option value="">이 기업에 합격하셨나요?</option>
									<option value="합격">네, 합격하고 입사했습니다.</option>
									<option value="합격">합격했지만, 입사하지는 않았습니다.</option>
									<option value="불합격">아니요, 합격하지 못 했습니다.</option>
									<option value="대기중">결과를 기다리는 중입니다.</option>
								</select>
							</div>




							<div class="mt-5"></div>
							<div class="d-flex justify-content-center mt-3">
								<button class="btn btn-light btn-lg me-2 mb-2 mb-md-0" type="button" name="cancelBtn" id="cancelBtn">이전으로</button>
								<button class="btn btn-success btn-lg ms-2 mb-2 mb-sm-0" type="button" name="addBtn" id="addBtn">${name }</button>
							</div>
						</div>
						<sec:csrfInput/>
					</form>
				</div>
				<!-- Form END -->
			</div>
			<!-- Admission form END -->
		</div>
	</section>
	<!-- =======================Main part END -->
</main>
<!-- **************** MAIN CONTENT END **************** -->

<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function() {
    var today = new Date().toISOString().split('T')[0]; // 'Date' 객체를 사용하여 현재 날짜를 YYYY-MM-DD 형식으로 가져옵니다.
    document.getElementById("interviewDate").setAttribute("max", today); // 면접 날짜의 최대 값을 오늘로 설정합니다.
//     document.getElementById("announcementDate").setAttribute("min", today); // 발표 날짜의 최소 값을 오늘로 설정합니다.
});

$(function(){
	
	var cancelBtn = $("#cancelBtn");
	var addBtn = document.getElementById("addBtn");
	var interviewForm = document.querySelector("[name='interviewForm']");
	
	console.log(cancelBtn);
	console.log(addBtn);
	
	
// 	$(document).("click", $('#addBtn'),function(){
	addBtn.addEventListener("click", function(){
		var rvwExperience = $("input[name='rvwExperience']:checked").val();
		var rvwCrs = $("textarea[name='rvwCrs']").val();
		var rvwQue = $("textarea[name='rvwQue']").val();
		var rvwAns = $("textarea[name='rvwAns']").val();
		var rvwCmmncd = $("select[name='rvwCmmncd']").val();
		var rvwIntYmd = $("input[name='rvwIntYmd']").val();
		var rvwAnnYmd = $("input[name='rvwAnnYmd']").val();
		var rvwLevel = $("select[name='rvwLevel']").val();
		var rvwStts = $("select[name='rvwStts']").val();
	  	var rvwCourse = $("select[name='rvwCourse']").val();
		
		console.log(rvwExperience);
		console.log(rvwCrs);
		
		
		
		if(rvwCourse == null || rvwCourse == ""){
			alert("면접 경로를 선택해 주세요")
			document.querySelector("[name='rvwCourse']").focus();
			return false;
		}
		if(rvwExperience == null || rvwExperience == ""){
			alert("면접 경험을 선택해 주세요")
			document.querySelector("[name='rvwExperience']").focus();
			return false;
		}
		if(rvwCrs == null || rvwCrs == ""){
			alert("면접 과정 입력 해주세요")
			document.querySelector("[name='rvwCrs']").focus();
			return false;
		}
		if(rvwQue == null || rvwQue == ""){
			alert("면접 질문을 입력해주세요")
			document.querySelector("[name='rvwQue']").focus();
			return false;
		}
		if(rvwAns == null || rvwAns == ""){
			alert("면접 답변을 입력 해주세요")
			document.querySelector("[name='rvwAns']").focus();
			return false;
		}
		if(rvwCmmncd == null || rvwCmmncd == ""){
			alert("직무를 선택 해주세요")
			document.querySelector("[name='rvwCmmncd']").focus();
			return false;
		}
		if(rvwIntYmd == null || rvwIntYmd == ""){
			alert("면접 날짜를 입력해주세요")
			document.querySelector("[name='rvwIntYmd']").focus();
			return false;
		}
		if(rvwAnnYmd == null || rvwAnnYmd == ""){
			alert("발표 일자를 입력해주세요")
			document.querySelector("[name='rvwAnnYmd']").focus();
			return false;
		}
		if(rvwLevel == null || rvwLevel == ""){
			alert("면접 난이도를 입력해주세요")
			document.querySelector("[name='rvwLevel']").focus();
			return false;
		}
		if(rvwStts == null || rvwStts == ""){
			alert("합격 여부를 입력해주세요")
			document.querySelector("[name='rvwStts']").focus();
			return false;
		}
	
		if($(this).val() == "수정하기"){
			interviewForm.attr("action", "/ent/entInterviewUpdate.do")
		}
		
		interviewForm.submit();
	});

	cancelBtn.on("click",function(e){
		e.preventDefault();
		
		console.log("2222");
		
		Swal.fire({
			title : "이전페이지로 돌아가시겠습니가?",
			text : "입력된 정보는 저장 되지않습니다",
			icon : "warning",
			
			showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		    confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
	 	    cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
		    confirmButtonText: '확인', // confirm 버튼 텍스트 지정
	 	    cancelButtonText: '취소', // cancel 버튼 텍스트 지정
			   
			   reverseButtons: true, // 버튼 순서 거꾸로
			
		}).then((result) => {
			if(result.value){
				location.href="/ent/detail.do?entNo=${entVO.entNo}";
			}
		});
		
	});

});





</script>