<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<section class="ftco-section ftco-degree-bg"
	style="color: black; font-family: 'NanumSquareNeo';">
	<div class="container">
		<div class="row">
			<div class="col-md-12">제목&nbsp; <c:out value="${board.title}"></c:out></div>
		</div><hr>
		<div class="row">
			<div class="col-md-8">작성자&nbsp; <c:out value="${board.id}"></c:out></div>
			<div class="col-md-2">작성일자&nbsp; <fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"></fmt:formatDate></div>
			<div class="col-md-2">조회수&nbsp; <c:out value="${board.count}"></c:out></div>
		</div><hr>

		<div class="form-group">
			<div class="row">
				<div class="col-md-12">내용</div>
			</div><hr>
			<div class="col-lg-12 ftco-animate" align="center">
				<p>
					<img src="../images/image_1.jpg" alt="" class="img-fluid">
				</p>
				<p><c:out value="${board.content}"></c:out></p>
			</div>
		</div>
		<hr />
		<div class="text-center">
			<button data-oper="modify" class="btn btn-default">수정</button>
			<button data-oper="list" class="btn btn-default">목록</button>
		</div>
		
		<form id="operForm" action="/customerService/modify" method="get">
			<input type="hidden" id="bno" name="bno" value='<c:out value="${ board.bno }" />'>
			<input type="hidden" name="pageNum" value='<c:out value="${ cri.pageNum }" />'>
			<input type="hidden" name="amount" value='<c:out value="${ cri.amount }" />'>
			<input type="hidden" name="type" value='<c:out value="${ cri.type }" />'>
			<input type="hidden" name="keyword" value='<c:out value="${ cri.keyword }" />'>
		</form>
		
	</div>
</section>

<section class="card bg-light col-lg-12"
	style="color: black; font-family: 'NanumSquareNeo';">

	<div class="panel-heading">
		<i class="fa fa-comments fa-fw"></i> 댓글
	</div>
	<div class="card-body">
		<!-- Comment form-->
		<form class="mb-4">
			<textarea class="form-control" rows="3" placeholder="댓글을 작성 해보세요."></textarea>
			<button id='addReplyBtn' class='btn btn-default btn-xs pull-right'>작성</button>
		</form>
		<div class="d-flex mb-4">
			<div class="ms-3">
				<div class="fw-bold">멍멍이</div>
				<p>와 포비 너무너무 귀엽고 사랑스러워요</p>
				<small class="pull-left">2023-01-24 13:13</small>
			</div>
		</div>
		<div class="d-flex">
			<div class="ms-3">
				<div class="fw-bold">고양이</div>
				<p>예쁘다</p>
				<small class="pull-left">2023-01-24 17:51</small>
			</div>
		</div>
	</div>
</section>


<script>
$(document).ready(function(){
	let operForm = $("#operForm");
	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/customerService/modify").submit();
	});
	
	$("button[data-oper='list']").on("click", function(e){
		operForm.find("#bno").remove();
		operForm.attr("action", "/customerService/qna")
		operForm.submit();
	});
});
</script>

<%@include file="../includes/footer.jsp"%>