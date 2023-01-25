<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<script>
	document.getElementById("home").setAttribute("class", "nav-item");
	document.getElementById("about").setAttribute("class", "nav-item dropdown active");
</script>

<style>

	.title{
		font-family:NanumSquareNeo;
		text-align:center;
		margin-top:50px;
	}

	.breadcrumbs span{
		padding-right:10px;
	}

	.map img{
		position:relative;
		right:30px;
		width: 1200px;
		text-align:center;
		padding:50px;
	}
	
	.map_list{
		font-family:NanumSquareNeo;
		text-align:center;
		padding:20px;
	}
	
</style>


<!-- <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_2.jpg');" data-stellar-background-ratio="0.5">
  <div class="container">
  <div class="overlay"></div>
    <div class="row no-gutters slider-text align-items-end">
      <div class="col-md-9 ftco-animate pb-5">
      	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> 
      		<span class="mr-2"><a href="/about/introduce">소개 <i class="ion-ios-arrow-forward"></i></span></a>
      		<span class="mr-2"><a href="/about/map">찾아오시는 길 <i class="ion-ios-arrow-forward"></i></span></a>
      		<span class="mr-2"><a href="/about/support">후원 <i class="ion-ios-arrow-forward"></i></span></a>
      		<span class="mr-2"><a href="/about/facility">보호소 시설 안내 <i class="ion-ios-arrow-forward"></i></span></a>
      	</p>
        <h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">소개</h1>
      </div>
    </div>
  </div>
</section> -->

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../images/bg_2.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container" style="font-family: 'NanumSquareNeo';">
		<div class="row no-gutters slider-text align-items-end">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs mb-2">
					<span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> 
					<span>보호소 소개 <i class="ion-ios-arrow-forward"></i></span>
				</p>
				<h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">찾아오시는 길</h1>
				<br>
				<p class="breadcrumbs mb-2">
					<span class="mr-2"><a href="/about/introduce">소개<i class="ion-ios-arrow-forward"></i></a></span> 
					<span class="mr-2"><a href="/about/map">찾아오시는 길<i class="ion-ios-arrow-forward"></i></a></span>
					<span class="mr-2"><a href="/about/support">후원<i class="ion-ios-arrow-forward"></i></a></span>
					<span class="mr-2"><a href="/about/facility">보호소 시설 안내<i class="ion-ios-arrow-forward"></i></a></span>
				</p>
			</div>
		</div>
	</div>
</section>

<div class="title">
	<h1>찾아오시는 길</h1><br />
	애니모어 유기동물 보호소로 오는 길을 확인하세요.
</div>

<!-- map -->
<div class="container">
	<div class="row">
		<div class="map">
			<img src="../images/map-1.png">
		</div>
	</div>
	
	<div class="map_list">
        <table class="table table-bordered">
            <tr>
                <td>주소</td>
                <td>서울특별시 성동구 행당로 17길 1-77</td>
            </tr>
            <tr>
                <td>교통</td>
                <td>5호선 행당역 5번출구 도보 15분</td>
            </tr>
            <tr>
                <td>전화</td>
                <td>02-000-0000 (방문예약 및 봉사활동은 폼을 통해 미리 예약 신청바랍니다)</td>
            </tr>
        </table>
	</div>
</div>


<%@include file="../includes/footer.jsp"%>