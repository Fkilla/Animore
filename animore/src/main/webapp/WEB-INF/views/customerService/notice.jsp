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
				<h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">공지사항</h1>
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
<div class="container" style="color: black; font-family: 'NanumSquareNeo';">
	<div class="row" align="center">
		<div class="col-lg-12">
			<div class="text-center ftco-animate">
				<span><img src="../images/notice.png"></span>
				<h2>공지사항</h2>
				<h5>애니모어에서 회원님들을 위한 공지사항을 안내 드립니다.</h5>
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

					<c:forEach items="${list}" var="board">
						<tr>
							<td><c:out value="${board.bno}" /></td>
	 						<td><a href='/customerService/noticeget?bno=<c:out value="${ board.bno }"/>'>
	 						<c:out value="${ board.title }" /></a></td>
							<td><c:out value="${board.id}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.regdate}" /></td>
							<!-- <td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.updatedate}" /></td> -->
							<td><c:out value="${board.count}" /></td>
						</tr>
					</c:forEach>

			</table>
		</div>
	</div>
</div>

<div class='row' style="color: black; font-family: 'NanumSquareNeo';">
	<div class="col text-center">
		<form id='searchForm' action="/customerService/notice" method='get'>
			<select name='type'>
				<option value="" <c:out value="${ pageMaker.cri.type == null?'selected':'' }" />>선택</option>
				<option value="T" <c:out value="${ pageMaker.cri.type eq 'T'?'selected':'' }" />>제목</option>
				<option value="C" <c:out value="${ pageMaker.cri.type eq 'C'?'selected':'' }" />>내용</option>
				<option value="I" <c:out value="${ pageMaker.cri.type eq 'W'?'selected':'' }" />>작성자</option>
				<option value="TC" <c:out value="${ pageMaker.cri.type eq 'TC'?'selected':'' }" />>제목+내용</option>
				<option value="TI" <c:out value="${ pageMaker.cri.type eq 'TW'?'selected':'' }" />>제목+작성자</option>
				<option value="TIC" <c:out value="${ pageMaker.cri.type eq 'TWC'?'selected':'' }" />>제목+내용+작성자</option>
			</select> 
			<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
			<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
			<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
			<button class='btn btn-default btn-xs'><i class="fa fa-search" aria-hidden="true"></i>검색하기
			</button>
		</form>
	</div>
</div>


<div class="row mt-5">
	<div class="col text-center">
		<div class="block-27">
			<ul>
				<c:if test="${ pageMaker.prev }">
					<li class="paginate_button"><a href="${ pageMaker.startPage-1 }">&lt;</a></li>
				</c:if>
				
				<c:forEach var="num" begin="${ pageMaker.startPage }" end="${ pageMaker.endPage }">
					<li class="paginate_button ${ pageMaker.cri.pageNum == num ? "active":"" } "><a href="${ num }">${num}</a></li>
				</c:forEach>

				<c:if test="${ pageMaker.next }">
					<li class="paginate_button"><a href="${ pageMaker.endPage + 1 }">&gt;</a></li>
				</c:if>	
			</ul>
		</div>
	</div>
</div>
<br />

<script>
$(document).ready(function(){
	$(".move").on("click", function(e){
		e.preventDefault();
		actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
		actionForm.attr("action", "/customerService/noticeget");
		actionForm.submit();
	});
}); 
</script>

<%@include file="../includes/footer.jsp"%>