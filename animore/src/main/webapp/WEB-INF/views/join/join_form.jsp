<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>


<style>

	.join_form{
		font-family: NanumSquareNeo;
	}
	
	.ftco-section .contactForm .label{
		font-size:15px;
	}
	
	.join_form .btn{
		background-color:#AD8B73;
		color:white;
		margin-top:30px;
	}
	
	.join_form #selectEmail{
		margin-top:50px;
		font-family:NanumSquareNeo;
		height:30px;
	}
	
	.join_form .col-md-1{
		margin-top:50px;
		margin-left:10px;
	}
	
	.join_form .form-group{
		margin-bottom:50px;
	}

</style>


<section class="ftco-section bg-light">
	<div class="container join_form">
		<div class="row justify-content-center">
			<div class="col-md-6 text-center mb-5">
				<h2 class="heading-section">회원 가입</h2>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-12">
				<div class="wrapper">
					<div class="row mb-5">
						<div class="col-md-4">
							<div class="dbox w-100 text-center">
		        				<div class="icon d-flex align-items-center justify-content-center jicon1">
		        					<img src="../images/file.png">
		        				</div>
		        				<div class="text">
			            			<p><span>약관 동의</span></p>
			          			</div>
		          			</div>
						</div>
						<div class="col-md-4">
							<div class="dbox w-100 text-center">
		        				<div class="icon d-flex align-items-center justify-content-center jicon2">
		        					<img src="../images/write.png">
		        				</div>
		        				<div class="text">
			            			<p><span>정보 입력</span><hr style="border: solid 1px #AD8B73;">
			          			</div>
		          			</div>
						</div>
						<div class="col-md-4">
							<div class="dbox w-100 text-center">
		        				<div class="icon d-flex align-items-center justify-content-center jicon3">
		        					<img src="../images/checked.png">
		        				</div>
				        		<div class="text">
					            	<p><span>가입 완료</span>
					          	</div>
		         			 </div>
						</div>
					</div>
					
					
					<div class="row no-gutters terms_content">
						<div class="col-md-12">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<h3 class="mb-4">정보 입력</h3>
								<form method="POST" id="contactForm" name="contactForm" class="contactForm">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="name">이름</label>
												<input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요.">
											</div>
										</div>
										<div class="col-md-9">
											<div class="form-group">
												<label class="label" for="subject">아이디</label>
												<input type="text" class="form-control" name="id" id="id" placeholder="6 ~ 20 자리의 한글,영문,숫자만 사용 가능">
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<input type="button" class="btn" value="중복 확인">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">생년월일</label>
												<input type="date" class="form-control" name="birth" id="birth">
											</div>
										</div>
										<div class="col-md-5">
											<div class="form-group">
												<label class="label" for="subject">이메일</label>
												<input type="text" class="form-control" name="email" id="email">
											</div>
										</div>
										<div class="col-md-1">
											<div class="form-group">
												<span>@</span>
											</div>
										</div>
										<div class="col-md-5">
											<div class="form-group">
												<select name="selectEmail" id="selectEmail" style="width:100%;">
													 <option value="1">직접입력</option>
													 <option value="naver.com" selected>naver.com</option>
													 <option value="hanmail.net">hanmail.net</option>
													 <option value="hotmail.com">hotmail.com</option>
													 <option value="nate.com">nate.com</option>
													 <option value="yahoo.co.kr">yahoo.co.kr</option>
													 <option value="empas.com">empas.com</option>
													 <option value="dreamwiz.com">dreamwiz.com</option>
													 <option value="freechal.com">freechal.com</option>
													 <option value="lycos.co.kr">lycos.co.kr</option>
													 <option value="korea.com">korea.com</option>
													 <option value="gmail.com">gmail.com</option>
													 <option value="hanmir.com">hanmir.com</option>
													 <option value="paran.com">paran.com</option>
												</select>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">비밀번호</label>
												<input type="text" class="form-control" name="password" id="password" placeholder="8 ~ 20 자리의 영문,숫자,특수문자 조합">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">비밀번호 확인</label>
												<input type="text" class="form-control" name="password_verify" id="password_verify" placeholder="비밀번호를 한번 더 입력해주세요.">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">비밀번호 찾기 질문</label>
												<select name="selectQuestion" id="selectQuestion" style="width:100%; height:30px; font-family:NanumSquareNeo;" >
													 <option value="" selected>질문을 선택해주세요.</option>
													 <option value="1">가장 좋아했던 동화책의 제목은 무엇입니까?</option>
													 <option value="2">부모님이 처음 만난 도시는 어디입니까?</option>
													 <option value="3">처음으로 가보았던 해변의 이름은 무엇입니까?</option>
													 <option value="4">어렸을 적 가장 친했던 친구의 이름은 무엇입니까?</option>
													 <option value="5">첫 반려동물의 이름은 무엇입니까?</option>
												</select>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">비밀번호 찾기 답</label>
												<input type="text" class="form-control" name="password_answer" id="password_answer" placeholder="비밀번호 찾기 질문에 대한 답을 입력해주세요.">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">휴대폰 번호</label>
												<input type="text" class="form-control" name="phone" id="phone" placeholder="- 을 제외하고 입력해주세요.">
											</div>
										</div>
										<div class="col-md-9">
											<div class="form-group">
												<label class="label" for="subject">주소</label>
												<input type="text" class="form-control" name="address" id="address" placeholder="우편번호 검색을 진행해주세요.">
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<input type="button" class="btn" value="우편번호 검색">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input type="text" class="form-control" name="address" id="address" readonly>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input type="text" class="form-control" name="address" id="address" placeholder="상세 주소를 입력해주세요.">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<a href="/join/join_terms"><input type="button" value="이전" class="btn btn-primary"></a>
												<a href="/join/join_complete"><input type="button" value="완료" class="btn btn-primary"></a>
												<div class="submitting"></div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../includes/footer.jsp"%>