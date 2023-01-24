<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

    <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container" style="font-family: 'NanumSquareNeo';">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
             <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>고객센터<i class="ion-ios-arrow-forward"></i></span></p> 
            <h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">자주하는질문</h1>
            <br>
            <p class="breadcrumbs mb-2">
               <span class="mr-2"><a href="/customerService/notice">공지사항<i class="ion-ios-arrow-forward"></i></a></span>
               <span class="mr-2"><a href="/customerService/faq">자주하는질문<i class="ion-ios-arrow-forward"></i></a></span>
               <span class="mr-2"><a href="/customerService/qna">문의하기<i class="ion-ios-arrow-forward"></i></a></span>
            </p>
          </div>
        </div>
      </div>
    </section>

<br/>
<div class="container" style="color:black">
	<div class="row" align="center">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading"></div><br/>
				<div class="container">
				<div class="row justify-content-center pb-5 mb-3">
					<div class="col-md-7 heading-section text-center ftco-animate">
						<span><img src="../images/faq.png"></span>
						<h2>자주하는질문</h2>
					</div>
				</div>
				
					<table class="table table-bordered table-hover table-condensed">
						<tr align="center">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>작성일</th>
						</tr>
						<tr align="center">
							<td>3</td>
							<td>이미지 업로드가 안돼요.</td>
							<td>애니모어센터</td>
							<td>5</td>
							<td>2023.01.20</td>
						</tr>
						<tr align="center">
							<td>2</td>
							<td>후원은 어떻게 하나요.</td>
							<td>애니모어센터</td>
							<td>9</td>
							<td>2023.01.20</td>
						</tr>
						<tr align="center">
							<td>1</td>
							<td>게시판에 글은 어떻게 쓰나요.</td>
							<td>애니모어센터</td>
							<td>24</td>
							<td>2023.01.20</td>
						</tr>
					</table>
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
					<li><a href="#">&gt;</a></li>
					<li><a href="#">&gt;&gt;</a></li>
				</ul>
			</div>
		</div>
	</div>	
	
	
</div>
<br/>

<script>

</script>

<%@include file="../includes/footer.jsp"%>