<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">글쓰기</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading"></div>
			<div class="panel-body">
				<form role="form" action="/customerService/register" method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="title" />
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" row="3" name="content"></textarea>
					</div>

					<div class="form-group">
						<label>작성자</label> <input class="form-control" name="writer" />
					</div>
					<button type="submit" class="btn btn-info">등록</button>
					<button type="reset" class="btn btn-info">새로작성</button>
					<button type="submit" class="btn btn-info">
					<a href="/customerService/notice">목록</a></button>
				</form>
			</div>
		</div>
	</div>
</div>

<%@include file="../includes/footer.jsp"%>