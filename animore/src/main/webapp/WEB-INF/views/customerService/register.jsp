<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">글쓰기</h1>
		</div>
	</div>
	<table class="table table-bordered table-hover table-condensed">
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
								<textarea class="form-control" row="10" name="content"></textarea>
							</div>

							<div class="form-group">
								<label>비밀번호</label> <input class="form-control" name="writer" />
							</div>
							
							<div class="form-group">
								<label>비밀글</label> <input type="checkbox"/>
							</div>				
										
							<button type="submit" class="btn btn-info">등록</button>
							<button type="reset" class="btn btn-info">새로작성</button>
							<button type="submit" class="btn btn-info">
								<a href="/customerService/notice">목록</a>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</table>
</div>

<%@include file="../includes/footer.jsp"%>