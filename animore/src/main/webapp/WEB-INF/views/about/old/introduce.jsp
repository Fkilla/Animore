<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<script>
	document.getElementById("home").setAttribute("class", "nav-item");
	document.getElementById("about").setAttribute("class", "nav-item dropdown active");
</script>

    <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container" style="font-family: 'NanumSquareNeo';">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>보호소 소개 <i class="ion-ios-arrow-forward"></i></span></p> 
            <h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">소개</h1>
            <br>
            <p class="breadcrumbs mb-2" style="font-family: 'NanumSquareNeo';">
            	<span class="mr-2"><a href="/about/directions">찾아오시는 길<i class="ion-ios-arrow-forward"></i></a></span>
            	<span class="mr-2"><a href="/about/donation">후원<i class="ion-ios-arrow-forward"></i></a></span>
            	<span class="mr-2"><a href="/about/facinfo">보호소 시설 안내<i class="ion-ios-arrow-forward"></i></a></span>
            </p>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">
    	
    		<div class="heading-section pt-md-5 text-center" style="font-family: 'NanumSquareNeo'; margin-top: 100px">
			    <h1 class="mb-4">애니모어는 사지 않고 입양하는 문화를 만듭니다.</h1>
		    </div>
    	
    		<div class="row d-flex no-gutters">
	    	
		    	 <div class="col-md-6 d-flex">
					<img src="../images/about-1.jpg" class="img-fluid" />
	    		</div>
	    	
		    	<div class="col-md-6">
		    	
		    		<div class="col-sm-12 text-center" style="font-family: 'NanumSquareNeo'; padding-top: 120px">
		    			<p style="font-size: 120%">
					    	매년 전국적으로 10만마리 이상의 유기동물들이<br/> 보호소로 구조되고 있습니다.<br/>
					    	<br/>
					    	안타깝게도 이 중 절반에 가까운 동물들이 <br/>다시 가족을 만나지 못하고 안락사되거나 자연사하고 있습니다.<br/>
					    	<br/>
					    	애니모어는 매년 1만마리 이상의 유기동물에게 <br/>소중한 가족을 찾아주고 있습니다.<br/>
					    	<br/>
					    	잊혀져가는 유기동물들에게 <br/>세상을 알리고 소중한 가족을 찾아주는 플랫폼입니다.
					    </p>
		    		</div>
			    </div>
	        </div>
    	</div>
    </section>
    

<%@include file="../includes/footer.jsp"%>
