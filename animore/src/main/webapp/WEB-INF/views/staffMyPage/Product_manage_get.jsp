<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Read</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Read Page</div>
				<!--  ./panel-heading  -->
				<div class="panel-body">
					<div class = "form-group">
						<label>상품번호</label>
						<input class="form-control" name='bno' value='<c:out value = "${product.product_num }"/>' readonly="readonly">
					</div>
					<div class = "form-group">
						<label>상품이름</label>
						<input class="form-control" name='bno' value='<c:out value = "${product.product_name}"/>' readonly="readonly">
					</div>
					<div class = "form-group">
						<label>가격</label>
						<textarea class="form-control" rows="3" name='name' readonly="readonly"><c:out value = "${product.price }" /> </textarea>
					</div>
					<div class = "form-group">
						<label>재고수량</label>
						<input class="form-control" name='phone' value='<c:out value = "${product.amount }"/>' readonly="readonly">
					</div>
					<button data-oper ='modify' class="btn btn-default">Modify</button>
					<button data-oper ='list' class="btn btn-info">List</button>
					
					<!-- 검색후 조회 한 다음 list누를때 검색된상태의 list로 돌아가게 함 -->
					<form id='operForm' action = "/product_manage" method="get">
						<input type='hidden' id='product' name='product' value='<c:out value="${product.product_num }"/>'>
						<input type='hidden' name='pageNum' value = '<c:out value="${cri.pageNum }"/>'>
						<input type='hidden' name='amount' value = '<c:out value="${cri.amount }"/>'>
						<input type='hidden' name='keyword' value = '<c:out value="${cri.keyword }"/>'>
						<input type='hidden' name='type' value = '<c:out value="${cri.type }"/>'>
					</form>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- /.row -->

	
	<div class = 'bigPictureWrapper'>
		<div class='bigPicture'>
		</div>
	</div>
	
	<style>
		.uploadResult {
		  width:100%;
		  background-color: gray;
		}
		.uploadResult ul{
		  display:flex;
		  flex-flow: row;
		  justify-content: center;
		  align-items: center;
		}
		.uploadResult ul li {
		  list-style: none;
		  padding: 10px;
		  align-content: center;
		  text-align: center;
		}
		.uploadResult ul li img{
		  width: 100px;
		}
		.uploadResult ul li span {
		  color:white;
		}
		.bigPictureWrapper {
		  position: absolute;
		  display: none;
		  justify-content: center;
		  align-items: center;
		  top:0%;
		  width:100%;
		  height:100%;
		  background-color: gray; 
		  z-index: 100;
		  background:rgba(255,255,255,0.5);
		}
		.bigPicture {
		  position: relative;
		  display:flex;
		  justify-content: center;
		  align-items: center;
		}
		
		.bigPicture img {
		  width:600px;
		}
	
	</style>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Files</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					
					<div class='uploadResult'>
						<ul>
						</ul>
					</div>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- /.row -->






	<div class='row'>
		<div class="col-lg-12">
		<!-- 
			<div class="ponel panel-default">
				<i class="fa fa-conmments fa-fw"></i>Reply
			</div> -->
			
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i>Reply
				<button id = 'addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
			</div>
			<div class="panel-body">
				<ul class="chat">
					
				</ul>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>

<!-- modal start -->
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" area-hidden="true">&times;</button>
			<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
		</div>
		<div class="modal-body">
			<div class="form-group">
				<label>Reply</label>
				<input class="form-control" name='reply' value='New Reply!!!!!'>
            </div>
           	<div class="form-group">
                 	<label>Replyer</label>
                 	<input class="form-control" name='replyer' value='replyer'>
            </div>
            <div class="form-group">
                 	<label>Reply Date</label>
                 	<input class="form-control" name='replyDate' value=''>
            </div>
        </div>
        <div class="modal-footer">
			<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
			<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
			<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
			<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
		</div>
		</div>
	</div>
</div>
<!-- modal end -->

<script>
	$(function(){
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e){
			operForm.attr("action", "/board/modify").submit();
		});
		
		$("button[data-oper='list']").on("click", function(e){
			operForm.find("#bno").remove();
			operForm.attr("action","/board/list")
			operForm.submit();
		});
	});
</script>

<script>
	$(document).ready(function(){
		(function(){
			var bno = '<c:out value = "${board.bno}"/>';
			
			$.getJSON("/board/getAttachList", {bno:bno}, function(arr){
				console.log(arr);
				
				var str = "";
				
				$(arr).each(function(i, attach){
					if(attach.fileType){
	              		 //str += "<li><img src='/resources/Img/attach.png'>" + obj.fileName + "</li>";
	              		 var fileCallPath = encodeURIComponent( attach.uploadPath + "/" + attach.uuid + "_" + attach.fileName);
	              		 
	              		str += "<li data-path='"+attach.uploadPath+"'";
				          str += " data-uuid='"+attach.uuid+"' data-filename='" + attach.fileName+"'data-type='" + attach.image+"'"
				          str += "><div>";
				          str += "<img src='/display?fileName="+fileCallPath+"'>";
				          str += "</div>";
				          str +"</li>";
	              		 
	              		 
	              		 
	              		 //str += "<li+attach.uplof='/download?fileName=" + fileCallPath + "'>" + "<img src='/resources/Img/attach.png'>"+attach.fileName+"</a>"+
	              			//	"<span data-file=\'" + fileCallPath+"\' data-type='file'> x </span>" + "<div><li>"
	              	}else{

	              		str += "<li"
	  			        str += " data-path='"+attach.uploadPath+"' data-uuid='" + attach.uuid+"'data-filename='"+attach.fileName+"' data-type='" + attach.image+"'><div>";
	  			        str += "<span> "+ attach.fileName+"</span>";
	  			        str += "<img src='/resources/Img/attach.png'></a>";
	  			        str += "</div>";
	  			        str +"</li>";
	              		 
	              		 
	              		 //str += "<li><a href=\"javascript:showImage(\'"+originPath+"\')\"><img src='/display?fileName=" + fileCallPath + "'></a>" +
	              			//	 "<span data-file=\'"+fileCallPath+"\' data-type='image'> x </span>"+ "<li>";
	              	}
					
				});
				
				$(".uploadResult ul").html(str);
				
			}); //end json
		})();//end function
		
		$(".uploadResult").on("click","li", function(e){
			console.log("view image");
			var liObj = $(this);
			
			var path = encodeURIComponent(liObj.data("path")+"/"+liObj.data("uuid")+"_"+liObj.data("filename"));
			
			if(liObj.data("type")){
				showImage(path.replace(new RegExp(/\\/g),"/"));
			}else{
				//download
				self.location = "/download?fileName ="+path
			}

		});
		

			
		function showImage(fileCallPath){
			//alert(fileCallPath);
			
			$(".bigPictureWrapper").css("display","flex").show();
			
			$(".bigPictureWrapper").on("click", function(e){
				$(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
					setTimeout(() => {
						$(this).hide();
					},1000);
			});
			
			$(".bigPicture")
			.html("<img src='/display?fileName="+fileCallPath+"'>")
			.animate({width: '100%', height:'100%'},1000);
		}
	});
</script>

<%@ include file="../includes/footer.jsp" %>