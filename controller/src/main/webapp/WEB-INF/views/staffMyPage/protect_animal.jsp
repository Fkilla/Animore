<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<script>
	document.getElementById("home").setAttribute("class", "nav-item");
</script>

<style>
	select, input {
		font-size:15px;
		height:40px;
	}
	a{
		color:black;
	}
	table {
		text-align:center;
	}
</style>

<section class="ftco-section" style="font-family: 'NanumSquareNeo';">
   <div class="container">
      <div class="row justify-content-center">
      	<div class="col-md-2">
			<h5>관리자 메뉴</h5>
			<div class="select_menu">
			     <!-- <span style="color:#CDBBA7">회원목록</span><br/> -->
			     <span><a href="/staffMyPage/member_list">회원목록</a></span><br/>
			     <span><a href="/staffMyPage/visit_reservation_form">방문신청 폼 확인</a></span><br/>
			     <!-- <span style="color:#CDBBA7">입양신청 폼 확인</span><br/> -->
			     <span><a href="/staffMyPage/adopt_reservation_form">입양신청 폼 확인</a></span><br/>
			     <span><a href="/staffMyPage/protect_animal_write">보호동물 등록</a></span><br/>
			     <!-- <span style="color:#CDBBA7">보호동물 등록</span><br/> -->
			     <!-- <span><a href="/staffMyPage/protect_animal">보호동물 리스트</a></span><br/> -->
			     <span style="color:#CDBBA7">보호동물 리스트</span><br/>
			     <span><a href="/staffMyPage/current_perchase">구매관리</a></span><br/>
			     <span><a href="/staffMyPage/current_animal">보호중인 동물 확인</a></span><br/>
		      	 <span><a href="/staffMyPage/product_manage">상품관리</a></span><br />
		      	 <span><a href="/staffMyPage/notice_write">공지사항 작성 폼</a></span><br />
		         <span><a href="/staffMyPage/faq_write">자주 묻는 질문 작성 폼</a></span>
			</div>
		</div>
		
		<div class="col-md-10">
			<h3 style="margin-bottom: 30px"><b>보호동물 리스트</b></h3>
			
			<div class="container">
	          <div class="row no-gutters slider-text align-items-end">
	            <div class="col-md-12 ftco-animate pb-5">
	            <form id='searchForm' action="/staffMyPage/protect_animal" method='get'>
	              <div style="text-align: right;">
	                <select name='type'>
						<option value="" <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
						<option value="N" <c:out value="${pageMaker.cri.type eq 'N' ? 'selected':''}"/>>이름</option>
	                    <option value="V" <c:out value="${pageMaker.cri.type eq 'V' ? 'selected':''}"/>>품종</option>
					</select>
					<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'/>
					<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
					<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'/>
					<button class='btn btn-default'>Search</button>	
	              </div>
	              </form>
	            </div>
	          </div>
	        </div>

		  <!-- 테이블 시작 -->
		  <div class="wrap">
		          <div class="container">
		 <table class="table table-bordered table-hover">
		    <thead>
		       <th>공고번호</th>
		       <th>이름</th>
		       <th>품종</th>
		       <th>나이</th>
		       <th>성별</th>
		       <th>중성화 유무</th>
		       <th>특징</th>
		       <th>안락사 기간</th>
		    </thead>
		    
		    <c:set var="ymd" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" />
		    
		    
		    <c:forEach items="${animal_list}" var="animal">
				<tr>
					<td><c:out value="${animal.board_num }"></c:out></td>
					<td><a class='move' href='<c:out value="${animal.board_num }" />'><c:out value="${animal.animal_name }"></c:out></a></td>
					<td><c:out value="${animal.variety }"></c:out></td>
					<td><c:out value="${animal.age }"></c:out></td>
					<td><c:out value="${animal.sex }"></c:out></td>
					<td><c:out value="${animal.tnr }"></c:out></td>
					<td><c:out value="${animal.identity }"></c:out></td>
					<td>
						<c:choose>
							<c:when test="${animal.euthanasia_day eq ymd}">보호 종료일</c:when>
							<c:when test="${animal.euthanasia_day != ymd}"><c:out value="${animal.euthanasia_day}"></c:out></c:when>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		 </table>
	</div>
		<form id='actionForm' action="/staffMyPage/protect_animal" method='get'>
			<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
			<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
			<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>				
		</form>
		<container>
		<div class="row mt-5" style="display: flex; justify-content: center;">
		  <div class="row text-center">
		    <div class="block-27">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous"><a href="${pageMaker.startPage -1 }">&lt;</a></li>
					</c:if>
					
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num }">${num}</a></li>   
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="paginate_button next"><a href="${pageMaker.endPage+1 }">&gt;</a></li>
					</c:if>
				</ul>
			</div>
		  </div>
		</div>
		<br>
	</container>
</div>
<br>
<br>
</div>
</div>
</div>
</section>



<script>
	$(function(){
		
		var actionForm = $("#actionForm");
		
		//페이지 이동
		$(".paginate_button a").on("click",function(e){
			e.preventDefault();
			
			console.log("click");
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		$(".move").on("click", function(e){
			e.preventDefault();
			
			actionForm.append("<input type ='hidden' name='board_num' value='"+$(this).attr("href")+"'>");
			actionForm.attr("action","/staffMyPage/protect_animal_watch");
			actionForm.submit();
		});
		
		var searchForm = $("#searchForm");
		
		//선택이나 검색어 입력이 없을 시에 띄워주는 경고창(alert)
		$("#searchForm button").on("click",function(e){
			if(!searchForm.find("option:selected").val()){
				alert("검색 종류를 선택하세요");
				return false;
			}
			
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			
			searchForm.submit();
		});
		
		
	});
</script>

<%@include file="../includes/footer.jsp"%>