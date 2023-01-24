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
							<th>작성일</th>
						</tr>

						<c:forEach items="${customer}" var="board">
							<tr align="center">
								<td><c:out value="${board.bno}" /></td>
								<td><a href='<c:out value="${board.bno}"/>'> <c:out
											value="${board.title}" />
								</a></td>
								<td><c:out value="${board.writer}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.regdate}" /></td>
							</tr>
						</c:forEach>
					</table>
					<button id='regBtn' type="button"
						class="btn btn-outline-dark pull-right">작성하기</button>
				</div>

				<div class='row'>
					<div class="col-log-12">
						<form id='searchForm' action="/customerService/notice"
							method='get'>
							<select name='type'>
								<option>선택</option>
								<option>제목</option>
								<option>작성자</option>
								<option>내용</option>
							</select> <input type='text' name='keyword' /> <input type='hidden'
								name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
							<input type='hidden' name='amount'
								value='<c:out value="${pageMaker.cri.amount}"/>' />
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
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
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">10</a></li>
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