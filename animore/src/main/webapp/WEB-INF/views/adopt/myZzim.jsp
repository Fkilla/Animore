<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section class="ftco-section" style="font-family: 'NanumSquareNeo';" align="center">
	<div class="overlay"></div>
	<div class="container">
		<div class="row justify-content-center pb-5 mb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<span><i class="fa fa-heart fa-3x" aria-hidden="true"></i></span>
				<h2>내 찜 목록 보기</h2>
			</div>
		</div>


		<div class="row d-flex">
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch" onclick="location.href='/adopt/animalDetails'")>
					<!-- onclick="location.href='원하는 요청 링크'" -->
					<!-- <a class="block-20 rounded"
						style="background-image: url('../images/any-dog2.jpg');"> </a> -->
						<img src="../images/any-dog2.jpg" class="img-fluid rounded"/>
					<div class="text p-4">
							<div class="meta mb-2" style="color: black">
								<div class="myfont14">공고번호 : 231</div>
								<br />
								<div class="myfont14">이름 : 두부</div>
								<br />
								<div class="myfont14">나이 : 3살</div>
								<br />
								<div class="myfont14">성별 : 여아</div>
								<br />
								<div class="myfont14">품종 : 비숑</div>
								<br />
								<div class="myfont14">중성화 유무 : 유</div>
								<br />
								<div class="myfont14">안락사까지 남은 기간 : 20일</div>
								<br />
							</div>
					</div>
				</div>
			</div>


			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch" onclick="location.href='/adopt/animalDetails'">
<!-- 					<a href="#" class="block-20 rounded"
						style="background-image: url('../images/any-dog1.jpg');"> </a> -->
						<img src="../images/any-dog1.jpg" class="img-fluid rounded"/>
					<div class="text p-4">
							<div class="meta mb-2" style="color: black">
								<div class="myfont14">공고번호 : 230</div>
								<br />
								<div class="myfont14">이름 : 흰별이</div>
								<br />
								<div class="myfont14">나이 : 2살</div>
								<br />
								<div class="myfont14">성별 : 여아</div>
								<br />
								<div class="myfont14">품종 : 말티즈</div>
								<br />
								<div class="myfont14">중성화 유무 : 유</div>
								<br />
								<div class="myfont14">안락사까지 남은 기간 : 40일</div>
								<br />
							</div>
					</div>
				</div>
			</div>


			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch" onclick="location.href='/adopt/animalDetails'">
<!-- 					<a href="#" class="block-20 rounded"
						style="background-image: url('../images/any-dog3.jpg');"> </a> -->
						<img src="../images/any-dog3.jpg" class="img-fluid rounded"/>
					<div class="text p-4">
							<div class="meta mb-2" style="color: black">
								<div class="myfont14">공고번호 : 230</div>
								<br />
								<div class="myfont14">이름 : 초코</div>
								<br />
								<div class="myfont14">나이 : 1살</div>
								<br />
								<div class="myfont14">성별 : 남아</div>
								<br />
								<div class="myfont14">품종 : 믹스견</div>
								<br />
								<div class="myfont14">중성화 유무 : 무</div>
								<br />
								<div class="myfont14">안락사까지 남은 기간 : 50일</div>
								<br />
							</div>
					</div>
				</div>
			</div>
		</div>

		
		
		
	</div> <!-- container end -->
</section>

<%@include file="../includes/footer.jsp"%>