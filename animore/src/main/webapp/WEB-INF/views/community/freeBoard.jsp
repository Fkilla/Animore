<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<style>
	a{
		color:#808080;
	}
</style>

<section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_2.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container" style="font-family: 'NanumSquareNeo';">
    <div class="row no-gutters slider-text align-items-end">
      <div class="col-md-9 ftco-animate pb-5">
         <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>커뮤니티 <i class="ion-ios-arrow-forward"></i></span></p> 
        <h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">자유게시판</h1>
        <br>
        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/community/adoptionReview">입양후기<i class="ion-ios-arrow-forward"></i></a></span>
           <span class="mr-2"><a href="/community/freeBoard">자유게시판<i class="ion-ios-arrow-forward"></i></a></span>
           <span class="mr-2"><a href="/community/usedItems">중고거래<i class="ion-ios-arrow-forward"></i></a></span>
        </p>
      </div>
    </div>
  </div>
</section>


<section class="ftco-section">
	<div class="container" style="font-family: 'NanumSquareNeo';">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>글번호</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>수정일</th>
				</tr>
			</thead>
			
			<tr>
				<td>10</td>
				<td>병원후기</td>
				<td><a href="/community/getFB">동물병원 후기입니다.</td>
				<td>user00</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>9</td>
				<td>사료/간식 추천</td>
				<td><a href="/community/getFB">사료 추천합니다</td>
				<td>user01</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>8</td>
				<td>사료/간식 추천</td>
				<td><a href="/community/getFB">간식 추천합니다</td>
				<td>user02</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>7</td>
				<td>반려동물 자랑</td>
				<td><a href="/community/getFB">우리 포비 자랑해요</td>
				<td>user03</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>6</td>
				<td>산책회</td>
				<td><a href="/community/getFB">매일 오전 8시에 만나서 산책하실 분~</td>
				<td>user04</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>5</td>
				<td>투병일기</td>
				<td><a href="/community/getFB">동물 투병일기입니다</td>
				<td>user05</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>4</td>
				<td>병원후기</td>
				<td><a href="/community/getFB">xxx 병원 비추 후기요</td>
				<td>user06</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>3</td>
				<td>병원후기</td>
				<td><a href="/community/getFB">ㅇㅇ 병원 어떤가요</td>
				<td>user07</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>2</td>
				<td>반려동물 자랑</td>
				<td><a href="/community/getFB">우리 토롱이 너무 귀엽죠</td>
				<td>user08</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>
			<tr>
				<td>1</td>
				<td>산책회</td>
				<td><a href="/community/getFB">퇴근 후 함께 산책하실 분들 계신가요?</td>
				<td>user09</td>
				<td>2023.1.21</td>
				<td>2023.1.21</td>
			</tr>

			
		</table>
		
		<div class="panel-heading">
			<button id='regBtn' type="button" class="btn btn-xs pull-right">작성하기</button>
		</div>
	    
	    <div class='row'>
			<div class="col-log-12">
			<form id='searchForm' action="/board/list" method='get'>
				<select name='type'>
					<option>--</option>
					<option>카테고리</option>
					<option>제목</option>
					<option>작성자</option>
					<option>내용</option>
				</select>
				<input type='text' name='keyword' />
				<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
				<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'/>
				<button class='btn btn-default'>Search</button>	
			</form>
			</div>
		</div>
	    
	    
	    
	    <div class="row mt-5">
	      <div class="col text-center">
	        <div class="block-27">
	          <ul>
	            <li><a href="#">&lt;</a></li>
	            <li class="active"><span>1</span></li>
	            <li><a href="#">2</a></li>
	            <li><a href="#">3</a></li>
	            <li><a href="#">4</a></li>
	            <li><a href="#">5</a></li>
	            <li><a href="#">&gt;</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
	
	</div>
</section>


<script>
	$(function(){
		
		
		
		$("#regBtn").on("click",function(){
			self.location = "/community/registerFB";
		});
		
		
		
		
	});
</script>



<%@include file="../includes/footer.jsp"%>