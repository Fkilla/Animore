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

<!-- 댓글창 -->
<section class="card bg-light col-lg-12"
	style="color: black; font-family: 'NanumSquareNeo';">

	<div class="panel-heading">
		<i class="fa fa-comments fa-fw"></i> 댓글
	</div>
	<div class="card-body">
		<!-- 댓글 폼-->
		<form role="form" id="replyForm" class="mb-4" method="post">
			<input type="hidden" id="bno" name="bno" value="${ board.bno }" />
			
			<input type="text" name="id" id="id"/>
			<textarea class="form-control" rows="4" placeholder="댓글을 작성 해보세요." name="reply" id="reply"></textarea>
			<button type="button" id='addReplyBtn' data-oper="register" class='btn btn-default btn-xs pull-right'>작성</button>
		
			<!-- 댓글 등록 ajax -->
			<script type="text/javascript">
				registerReply();
			</script>
		</form>
		<br />
		
<%-- 		<c:forEach items="${replylist}" var="r_list">
		<div class="d-flex mb-4">
			<div class="ms-3">
				<div class="fw-bold"><c:out value="${r_list.id}" /></div>
				<p><c:out value="${r_list.reply}" /></p>
				<small class="pull-left"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${r_list.replydate}" /></small>
			</div>
		</div>
		</c:forEach> --%>
		


		<!-- 댓글 목록 -->
		<form>
		<div class="d-flex mb-4">

		</div>
		</form>
		
		<script type="text/javascript">
			replyList();
		</script>
		
		<script type="text/javascript">
			$(document).on("click", ".delete", function(){
				var deleteConfirm = confirm("정말로 삭제하시겠습니까?");
				
				id(deleteConfirm){
				var data = { rno : $(this).attr("data-rno") };
				
				$.ajax({
					url : "/customerService/get/deleteReply",
					type : "post",
					data : { rno : $(this).attr("data-rno") },
					success : function() {
						replyList();
					}
				});
				}
			});
		</script>
	</div>
	
</section>


<script>
$(document).ready(function(){
	let operForm = $("#operForm");
	$("button[data-oper='register']").on("click", function(e){
		operForm.attr("action","/customerService/get")
	});
	
	$("button[data-oper='list']").on("click", function(e){
		operForm.find("#bno").remove();
		operForm.attr("action", "/customerService/qna")
		operForm.submit();
	});
});
</script>

<%@include file="../includes/footer.jsp"%>