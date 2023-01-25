<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.pass_find_form{
		font-family: NanumSquareNeo;
		text-align:center;
	}
	
	.pass_find_form p{
		margin-bottom:50px;
	}
	
	.pass_find_form input{
		text-align:center;
	}
	
	.pass_show{
		color:red;
		margin-top:20px;
	}
	
</style>
    
    
<head>
    <title>애니모어 유기동물 보호센터</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="../css/animate.css">
    
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">


    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">

    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
</head>
    
    
<section class="ftco-section bg-light">
	<div class="container">
		<div class="row pass_find_form">
			<div class="col-md-12">
				<div class="contact-wrap w-100 p-md-5 p-4">
					<h3 class="mb-4">비밀번호 찾기</h3>
					<form method="POST" id="contactForm" name="contactForm" class="contactForm">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<p>
										가입 시 등록하신 고객님의 정보를 입력해주세요.
									</p>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="label" for="#" style="font-size:15px;">이름</label><br />
									<input type="text" class="name" name="name" id="name" placeholder="이름을 입력하세요.">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="label" for="#" style="font-size:15px;">아이디</label><br />
									<input type="text" class="id" name="id" id="id" placeholder="아이디를 입력하세요.">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="label" for="#" style="font-size:15px;">비밀번호 찾기 답</label><br />
									<input type="text" class="pass_answer" name="pass_answer" id="pass_answer" placeholder="답을 입력하세요.">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<p class="pass_show">비밀번호는 **** 입니다.</p>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group pass_find_btn">
									<a href="/member/login"><input type="button" value="돌아가기" class="btn btn-primary"></a>
									<a href="#"><input type="button" value="확인" class="btn btn-primary"></a>
									<div class="submitting"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
    
    
<%@include file="../includes/footer.jsp"%>