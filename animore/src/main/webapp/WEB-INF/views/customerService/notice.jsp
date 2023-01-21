<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<br />
<div class="container" style="color: black">
	<div class="row" align="center">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<form>
						<button type="button" class="btn btn-outline-dark">
							<a href="/customerService/notice">공지사항</a>
						</button>
						<button type="button" class="btn btn-outline-dark">
							<a href="/customerService/faq">자주하는질문</a>
						</button>
						<button type="button" class="btn btn-outline-dark">
							<a href="/customerService/qna">QNA</a>
						</button>
					</form>
				</div>
				<br />
				<div class="container">
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
						class="btn btn-outline-dark pull-right">글쓰기</button>
				</div>
			</div>
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