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
							class="ion-ios-arrow-forward"></i></a></span>
				</p>
				<h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">QNA</h1>
				<br>
				<p class="breadcrumbs mb-2">
					<span class="mr-2"><a href="/customerService/notice">공지사항<i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="/customerService/faq">FAQ<i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="/customerService/qna">QNA<i
							class="ion-ios-arrow-forward"></i></a></span>
				</p>
			</div>
		</div>
	</div>
</section>

<br />
<div class="container"
	style="color: black; font-family: 'NanumSquareNeo';">
	<div class="row" align="center">
		<div class="col-lg-12">
			<div class="text-center ftco-animate">
				<span><img src="../images/chat.png"></span>
				<h2>QNA</h2>
				<h5>궁금한 점이나 각종 건의, 불편사항을 서슴지 않고 문의 해주세요.</h5>
			</div>
			<br />

			<table class="table table-bordered table-hover table-condensed text-center">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<tr>
					<td>5</td>
					<td>문의글 남깁니다.</td>
					<td>sadaf11</td>
					<td>2023.01.20</td>
					<td>3</td>
				</tr>
				<tr>
					<td>4</td>
					<td>문의 드립니다.</td>
					<td>dvv_3112</td>
					<td>2023.01.20</td>
					<td>1</td>
				</tr>
				<tr>
					<td>3</td>
					<td>회원가입 탈퇴는 어떻게 하나요?</td>
					<td>oooirjd9</td>
					<td>2023.01.20</td>
					<td>6</td>
				</tr>
				<tr>
					<td>2</td>
					<td>강아지 입양하고 싶어요</td>
					<td>qsmnsl</td>
					<td>2023.01.20</td>
					<td>4</td>
				</tr>
				<tr>
					<td>1</td>
					<td>문의드립니다.</td>
					<td>7hhttf7</td>
					<td>2023.01.20</td>
					<td>6</td>
				</tr>
			</table>
			<button id='regBtn' type="button"
				class="btn btn-outline-dark pull-right">글쓰기</button>
		</div>
	</div>
</div>


<div class='row' style="color: black; font-family: 'NanumSquareNeo';">
	<div class="col text-center">
		<form id='searchForm' action="/customerService/qna" method='get'>
			<select name='type'>
				<option>선택</option>
				<option>제목</option>
				<option>작성자</option>
				<option>내용</option>
				<option value="TC">제목+내용</option>
				<option value="TW">제목+작성자</option>
				<option value="TWC">제목+내용+작성자</option>
			</select> <input type='text' name='keyword' /> <input type='hidden'
				name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
			<input type='hidden' name='amount'
				value='<c:out value="${pageMaker.cri.amount}"/>' />
			<button class='btn btn-default btn-xs'>
				<i class="fa fa-search" aria-hidden="true"></i>검색하기
			</button>
		</form>
	</div>
</div>


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