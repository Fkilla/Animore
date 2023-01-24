<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>


<div class="container"
	style="color: black; font-family: 'NanumSquareNeo';">
	<div class="row" align="center">
		<div class="col-lg-12">
			<br /> <br />
		</div>
		<div class="col-md-2">
			<div>
				<h5>개인정보</h5>
				<p>개인정보 수정</p>
				<p>나의 찜 목록 확인</p>
			</div>
			<div>
				<h5>쇼핑</h5>
				<p>구매내역 확인</p>
			</div>
			<div>
				<h5>내가 작성한 폼</h5>
				<p>방문 신청 폼</p>
				<p>입양 신청 폼</p>
			</div>
			<div>
				<h5>회원 탈퇴</h5>
			</div>

		</div>

		<div class="col-lg-10">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<h2>구매내역 확인</h2>
				<br />
			</div>
			<table class="table table-bordered table-hover table-condensed">
				<tr class="col text-center">
					<td>주문번호</td>
					<td>상품명</td>
					<td>주문금액</td>
					<td>주문상태</td>
					<td>주문일시</td>
					<td>운송장번호</td>
				</tr>

				<tr class="col text-center">
					<td>2023012400</td>
					<td>유기동물 후원 산책 리드줄</td>
					<td>9,000</td>
					<td>배송출발</td>
					<td>2023-01-18 12:15:15</td>
					<td>12345678</td>
				</tr>

				<tr class="col text-center">
					<td>2023012302</td>
					<td>유기동물 후원 인형</td>
					<td>30,000</td>
					<td>배송완료</td>
					<td>2023-01-15 13:25:15</td>
					<td>12330124</td>
				</tr>

				<tr class="col text-center">
					<td>2023012400</td>
					<td>유기동물 후원 입양 수첩</td>
					<td>10,000</td>
					<td>배송완료</td>
					<td>2023-01-10 17:35:20</td>
					<td>12345678</td>
				</tr>
			</table>

		</div>
	</div>
</div>



<%@include file="../includes/footer.jsp"%>