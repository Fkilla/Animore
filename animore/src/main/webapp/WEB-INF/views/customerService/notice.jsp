<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../images/bg_2.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container" style="font-family: 'NanumSquareNeo';">
		<div class="row no-gutters slider-text align-items-end">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs mb-2">
					<span class="mr-2"><a href="/index">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span>고객센터<i
						class="ion-ios-arrow-forward"></i></span>
				</p>
				<h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">공지사항</h1>
				<br>
				<p class="breadcrumbs mb-2">
					<span class="mr-2"><a href="/customerService/notice">공지사항<i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="/customerService/faq">자주하는질문<i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="/customerService/qna">문의하기<i
							class="ion-ios-arrow-forward"></i></a></span>
				</p>
			</div>
		</div>
	</div>
</section>

<br />
<div class="container" style="color: black">
	<div class="row" align="center">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<br />
				<div class="container">
					<div class="row justify-content-center pb-5 mb-3">
						<div class="col-md-7 heading-section text-center ftco-animate">
							<span><img src="../images/notice.png"></span>
							<h2>공지사항</h2>
						</div>
					</div>
					<table class="table table-bordered table-hover table-condensed">
						<tr align="center">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>작성일</th>
						</tr>

						<tr align="center">
							<td>3</td>
							<td>유기동물 입양 후 필요한 용품들은? 애니모어몰에서 만나보세요! ★첫 구매시 50% 할인 쿠폰 증정★</td>
							<td>애니모어센터</td>
							<td>31</td>
							<td>2023.01.24</td>
						</tr>
						<tr align="center">
							<td>2</td>
							<td>설 연휴기간 배송 지연 안내</td>
							<td>애니모어센터</td>
							<td>29</td>
							<td>2023.01.22</td>
						</tr>
						<tr align="center">
							<td>1</td>
							<td>포인핸드 공식 홈페이지 오픈 준비중입니다 :)</td>
							<td>애니모어센터</td>
							<td>48</td>
							<td>2023.01.01</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<br>

	<div class="row mt-5">
		<div class="col text-center">
			<div class="block-27">
				<ul>
					<li><a href="#">&lt;&lt;</a></li>
					<li><a href="#">&lt;</a></li>
					<li class="active"><span>1</span></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&gt;</a></li>
					<li><a href="#">&gt;&gt;</a></li>
				</ul>
			</div>
		</div>
	</div>

</div>
<br />

<script>
	// 글쓰기 버튼을 눌렀을 때
	$(function() {
		$("#regBtn").on("click", function() {
			self.location = "/customerService/register";
		});
	});
</script>

<%@include file="../includes/footer.jsp"%>