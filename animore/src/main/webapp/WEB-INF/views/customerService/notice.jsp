<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<div class="row" align="center">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<form>
				<button type="button">
					<a href="/customerService/notice">공지사항</a> 
				</button>
				<button type="button">
					<a href="/customerService/faq">자주하는질문</a>
				</button>
				<button type="button"><a href="/customerService/qna">QNA</a></button>
				</form>
			</div>

			<div class="container">
				<table class="table table-bordered table-hover table-condensed">
					<tr>
						<th>번 호</th>
						<th>제 목</th>
						<th>글쓴이</th>
						<th>작성일</th>
					</tr>

					<c:forEach items="${customer}" var="board">
						<tr>
							<td><c:out value="${board.bno}" /></td>
							<td><a class='move' href='<c:out value="${board.bno}"/>'>
									<c:out value="${board.title}" />
							</a></td>
							<td><c:out value="${board.writer}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.regdate}" /></td>
						</tr>
					</c:forEach>
				</table>
				<button id='regBtn' type="button" class="btn btn-xs pull-right">글쓰기</button>
			</div>
		</div>
	</div>
</div>

<script>
	// 글쓰기 버튼을 눌렀을 때
	$(function() {
		$("#regBtn").on("click", function() {
			self.location = "/customerService/register";
		});
	});
</script>

<%@include file="../includes/footer.jsp"%>