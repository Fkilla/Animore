<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<style>
	
	.title{
		font-family:NanumSquareNeo;
		text-align:center;
		margin-top:50px;
	}

	.hos_map img{
		position:relative;
		right:30px;
		width: 1200px;
		text-align:center;
		padding:50px;
	}
	
	.hos_list{
		font-family:NanumSquareNeo;
		text-align:center;
		padding:20px;
	}
	
</style>


<section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_2.jpg');" data-stellar-background-ratio="0.5">
  <div class="container">
  <div class="overlay"></div>
    <div class="row no-gutters slider-text align-items-end">
      <div class="col-md-9 ftco-animate pb-5">
      	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span></p>
        <h1 class="mb-0 bread">동물병원 검색</h1>
      </div>
    </div>
  </div>
</section>


<div class="title">
	<h1>동물병원 검색</h1><br />
	집 근처 동물병원을 찾아보세요.
</div>



<!-- hospital map -->
<div class="container">
	<div class="row">
		<div class="hos_map">
			<img src="../images/hospital_map.png">
		</div>
	</div>
	
	<div class="hos_list">
        <table class="table table-hover">
            <tr class="index table-active">
                <td>병원명</td>
                <td>위 치</td>
            </tr>

            <tr>
                <td>이든 동물의료센터</td>
                <td>서울 영등포구 양평로 5 성원빌딩</td>
            </tr>
            <tr>
                <td>미소로 동물병원</td>
                <td>서울 영등포구 영신로 238 미소로</td>
            </tr>
            <tr>
                <td>영등포 아크로 동물병원</td>
                <td>서울 영등포구 국회대로54길 10 아크로타워스퀘어 근린생활시설 6동 2호</td>
            </tr>
        </table>
	</div>
</div>


<%@include file="../includes/footer.jsp"%>