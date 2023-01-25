<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section class="ftco-section ftco-degree-bg" style="color: black; font-family: 'NanumSquareNeo';">
   <div class="container">
      <div class="row">
         <div class="col-md-12">제목&nbsp; 장난감 팝니다</div>
      </div><hr>
      <div class="row">
      	 <div class="col-md-3">카테고리&nbsp; 팝니다</div>
         <div class="col-md-3">작성자&nbsp; user00</div>
         <div class="col-md-4">작성일자&nbsp; 2023.01.21</div>
         <div class="col-md-2">조회수&nbsp; 3</div>
      </div><hr>

      <div class="form-group">
         <div class="row">
            <div class="col-md-12">내용</div>
         </div><hr>
         <div class="col-lg-12 ftco-animate" align="center">
            <p>
               <img src="../images/toy.jpg" alt="" class="img-fluid">
            </p>
            <br>
            <p>우리 애가 좋아할 줄 알고 구매했는데 전혀 관심이 안 생기는지 한번도 가지고 놀지를 않네요 ㅠㅠㅠㅠㅠ 사용감 없는 거의 새 제품입니다. <br>
            	삑삑 소리도 나고 소형견이 입에 물고 놀기 딱 좋은 사이즈예요! xx시에 살고계시면 직거래도 가능합니다. 관심 있는 분들은 댓글 남겨주시면 바로 답댓 달겠습니다~~</p>
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
            <p>저희 강아지가 좋아할 거 같아요 구매하고싶어요!</p>
            <small class="pull-left">2023-01-28 15:34</small>
         </div>
      </div>
      <div class="d-flex mb-4">
         <div class="ms-3">
            <div class="fw-bold">wge1542</div>
            <p>거래 완료됐나요?</p>
            <small class="pull-left">2023-01-29 11:20</small>
         </div>
      </div>
      
      
   </div>
</section>

<%@include file="../includes/footer.jsp"%>