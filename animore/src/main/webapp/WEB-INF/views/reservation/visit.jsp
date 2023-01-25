<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>



<section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img" style="background-image: url(../images/image_4.jpg); font-family: 'NanumSquareNeo';">
	<div class="overlay"></div>
	<div class="container">
 		<div class="row d-md-flex justify-content-end">
 			<div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate">
 				<h3 class="mb-4">방문 상담 예약</h3>
 				<form action="#" class="appointment">
 					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
				            	<input type="text" class="form-control" placeholder="제목">
				            </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
		              			<div class="form-field">
          							<div class="select-wrap">
                      					<div class="icon"><span class="fa fa-chevron-down"></span></div>
                      					<select name="" id="" class="form-control">
                     						<option value="">성별 선택</option>
											<option value="">남성</option>
											<option value="">여성</option>
										</select>
                    				</div>
		              			</div>
		            		</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
		              			<input type="text" class="form-control" placeholder="방문 인원 수">
		            		</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
		              			<input type="text" class="form-control" placeholder="성함">
		            		</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
		              			<input type="text" class="form-control" placeholder="연락처">
		            		</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
		    					<div class="input-wrap">
				            		<div class="icon"><span class="fa fa-calendar"></span></div>
				            		<input type="text" class="form-control appointment_date" placeholder="방문 날짜">
				           		</div>
	    					</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
		    					<div class="input-wrap">
				            		<div class="icon"><span class="fa fa-clock-o"></span></div>
				            		<input type="text" class="form-control appointment_time" placeholder="방문 시간">
				           		</div>
	    					</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
	              				<textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="내용"></textarea>
	            			</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
				              <input type="submit" value="예약하기" class="btn btn-primary py-3 px-4">
				            </div>
						</div>
 					</div>
        		</form>
 			</div>
 		</div>
 	</div>
 </section>
 
 <script>
	$(function(){

		$(".btn").on("click",function(){
			alert("예약 완료되었습니다.");
		});

		
	});
</script>

    
<%@include file="../includes/footer.jsp"%>