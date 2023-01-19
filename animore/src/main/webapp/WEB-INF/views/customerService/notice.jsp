<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row" align="center">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<button type="button">공지사항</button>
				<button type="button">자주하는질문</button>
				<button type="button">QNA</button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body" >
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>

					<c:forEach items="${customer}" var="board">
						<tr>
							<td><c:out value="${board.bno}" /></td>
							<td><a class='move' href='<c:out value="${board.bno}"/>'>
							<c:out value="${board.title}"/></a></td>
							<td><c:out value="${board.writer}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.regdate}" /></td>
						</tr>
					</c:forEach>
				</table>
				<button id='regBtn' type="button" class="btn btn-xs pull-right">글쓰기</button>
			</div>
		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>

<script>
// 글쓰기 버튼을 눌렀을 때
$(function(){
	$("#regBtn").on("click", function(){
		self.location = "/customerService/register";	
	});
});
</script>

<%@include file="../includes/footer.jsp"%>