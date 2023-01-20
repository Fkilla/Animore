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
						<th>조회수</th>
						<th>작성일</th>
					</tr>
					<tr>
						<td>1</td>
						<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
						<td>홍길동</td>
						<td>3</td>
						<td>2023.01.20</td>
					</tr>
					<tr>
						<td>2</td>
						<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
						<td>홍길동</td>
						<td>1</td>
						<td>2023.01.20</td>
					</tr>
					<tr>
						<td>3</td>
						<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
						<td>홍길동</td>
						<td>1</td>
						<td>2023.01.20</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>

<script>

</script>

<%@include file="../includes/footer.jsp"%>