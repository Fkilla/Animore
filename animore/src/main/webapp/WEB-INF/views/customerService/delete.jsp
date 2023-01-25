<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<style>
	input {
		display: block;
		padding: 0 auto;
		margin: 0 auto;
		margin-bottom: 50px;
		font-family: 'NanumSquareNeo';
		font-size: 20px;
		border: 1px solid #cdbba7;
	}
</style>

<script>
	document.getElementById("home").setAttribute("class", "nav-item");
</script>

    <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container" style="font-family: 'NanumSquareNeo';">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>보호소 소개 <i class="ion-ios-arrow-forward"></i></span></p> 
            <h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">회원탈퇴</h1>
            <br>
          </div>
        </div>
      </div>
    </section>
    
	<section style="padding-top: 100px">
    	<div class="container" 
    		style="
    		text-align:center; 
    		margin: 0 auto; 
    		font-family: 'NanumSquareNeo';
    		font-size: 25px;">
    		<p style="color: #cdbba7">
	    		<span style="margin-right: 10px"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
				  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
				  <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
				</svg></span>탈퇴하시려면 비밀번호를 입력해주세요.
			</p>
			
    	</div>
    </section>
    
	<section style="padding: 100px">
		<div class="password_input">
	    	<form>
		    	<input type="password" />
		    	<button style="
		    		display: block;
					padding: 0 auto;
					margin: 0 auto;
		    		color: #cdbba7;" 
		    		type="submit" class="btn btn-light">확인</button>
		    </form>
	    </div>
	    
	</section>
	
	



<%@include file="../includes/footer.jsp"%>