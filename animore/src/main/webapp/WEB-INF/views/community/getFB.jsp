<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section class="ftco-section ftco-degree-bg" style="color: black; font-family: 'NanumSquareNeo';">
   <div class="container">
      <div class="row">
         <div class="col-md-12">제목&nbsp; 동물병원 후기입니다</div>
      </div><hr>
      <div class="row">
      	 <div class="col-md-3">카테고리&nbsp; 병원후기</div>
         <div class="col-md-3">작성자&nbsp; user00</div>
         <div class="col-md-4">작성일자&nbsp; 2023.01.21</div>
         <div class="col-md-2">조회수&nbsp; 5</div>
      </div><hr>

      <div class="form-group">
         <div class="row">
            <div class="col-md-12">내용</div>
         </div><hr>
         <div class="col-lg-12 ftco-animate" align="center">
            <p>
               <img src="../images/pricing-3.jpg" alt="" class="img-fluid">
            </p>
            <br>
            <p>서울 영등포구 양평동에 위치한  ㅇㅇㅇ 동물병원이에요. 원장님이 동물을 정말 사랑하시는 분이구요 진료를 정말잘해주세요. <br>
            	과잉진료도 없고 노령견,묘 전문이시라니까  한번 가보시면 좋을 거 같아요~</p>
         </div>
      </div>
   </div>
</section>

<section class="card bg-light col-lg-12"
   style="color: black; font-family: 'NanumSquareNeo';">

   <div class="panel-heading">
      <i class="fa fa-comments fa-fw"></i> 댓글
   </div>
   <div class="card-body">
      <!-- Comment form-->
      <form class="mb-4">
         <textarea class="form-control" rows="3" placeholder="댓글을 작성 해보세요."></textarea>
         <button id='addReplyBtn' class='btn btn-default btn-xs pull-right'>작성</button>
      </form>
      <div class="d-flex mb-4">
         <div class="ms-3">
            <div class="fw-bold">wge1542</div>
            <p>저희 집 근처인데 병원갈 일 있으면 한번 가봐야겠어요</p>
            <small class="pull-left">2023-01-28 15:34</small>
         </div>
      </div>
      <div class="d-flex">
         <div class="ms-3">
            <div class="fw-bold">wwer785</div>
            <p>ㅇㅇㅇ 건물 옆에 있는 곳 맞나요?</p>
            <small class="pull-left">2023-01-28 17:51</small>
         </div>
      </div>
      
   </div>
</section>

<%@include file="../includes/footer.jsp"%>