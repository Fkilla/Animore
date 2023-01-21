<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section class="ftco-section" style="font-family: 'NanumSquareNeo';">
	<div class="overlay"></div>
	<div class="container">
		<div class="row justify-content-center pb-5 mb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<span><img src="../images/dog_img.png"></span>
				<h2>상세보기</h2>
			</div>
		</div>

		<!-- 보호동물목록 -->
		<div class="row d-flex">

			<div class="col-md-12 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch">
					<a class="block-20 rounded"
						style="background-image: url('../images/any-dog2.jpg');"></a>
					<div class="text p-4" >
							<div class="meta mb-4" style="color: black">
								<h5>공고번호 : 231</h5>
								<h5>이름 : 두부</h5>
								<h5>나이 : 3살</h5>
								<h5>성별 : 여아 </h5>
								<h5>품종 : 비숑 </h5>
								<h5>중성화유무 : 유 </h5>
								<h5>안락사까지 남은 기간  : 20일 </h5>
								<h5>특징 : 소심하지만 착한 아기공쥬 "아람이"를 소개합니다!😍
                      우리 아람이는 사진보다 실물이 천만배는 더 귀염뽀짝하고 사랑스러운 아가에요!
                      사람을 너무 좋아하는 순둥이 아람이에게 사랑을 듬뿍 주시며 자신감을 가득 채워주실 평생가족을 찾습니다!</h5>
							</div>

							<button type="button" class="btn btn-outline-danger"><i class="fa fa-heart-o fa-lg" aria-hidden="true"></i>찜하기</button>
							<button type="button" class="btn btn-outline-secondary"><i class="fa fa-check" aria-hidden="true"></i>입양하기</button>

					</div>
				</div>
			</div>
			
		<div class="col-md-12 d-flex ftco-animate">
			<div class="col text-center">
					<button id="paBtn"type="button" class="btn btn-outline-secondary">목록</button>
			</div>
		</div>			
			
		</div>
	</div>
</section>

<script>
	$(function() {
		$("#paBtn").on("click", function() {
			self.location = "/adopt/protectAnimal";
		});
	});
</script>
<%@include file="../includes/footer.jsp"%>