<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<script>
	document.getElementById("home").setAttribute("class", "nav-item");
</script>

<style>
.uploadResult {
   width: 100%;
   background-color: white;
}

.uploadResult ul {
   display: flex;
   flex-flow: row;
   justify-content: center;
   align-items: center;
}

.uploadResult ul li {
   list-style: none;
   padding: 10px;
}

.uploadResult ul li img {
   width: 100px;
}

#myimg {
  width: 60px;
}
</style>

<section class="ftco-section" style="font-family: 'NanumSquareNeo';">
	<div class="overlay"></div>
	<div class="container">
		<div class="row justify-content-center pb-5 mb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<h2>수정하기</h2>
			</div>
		</div>

		<form role="form" action="/customerService/modify" method="post" style="color:black">
			<input type="hidden" name="pageNum" value='<c:out value="${ cri.pageNum }" />'>
			<input type="hidden" name="amount" value='<c:out value="${ cri.amount }" />'>
			<input type="hidden" name="type" value='<c:out value="${ cri.type }" />'>
			<input type="hidden" name="keyword" value='<c:out value="${ cri.keyword }" />'>
			
 			<div class="form-group">
				<input type="hidden" class="form-control" name="bno" readonly="readonly" value='<c:out value="${board.bno}"></c:out>'>
			</div>
			
			<div class="form-group">
				<input type="hidden" class="form-control" name="regdate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"></fmt:formatDate>'>
			</div>
			
			<div class="form-group">
				<input type="hidden" class="form-control" name="updatedate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updatedate}"></fmt:formatDate>'>
			</div>
			
			<div class="form-group">
				<input type="hidden" class="form-control" name="id" readonly="readonly" value='<c:out value="${board.id}" />'>
			</div> 
			
			<div class="form-group">
				<label>제목</label> 
				<input class="form-control" name="title" spellcheck="false" value='<c:out value="${board.title}" />'>
			</div>
			
			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" name="content" rows="14" spellcheck="false"><c:out value="${board.content}" /></textarea>
			</div>
			
       	
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">파일첨부</div>
						<div class="panel-body">
							<div class="form-group uploadDiv">
								<input type="file" name='uploadFile' multiple>
							</div>
							
							<div class='uploadResult'>
								<ul>
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>	
        	
					<button type="submit" id="modify" data-oper="modify" class="btn btn-primary">수정</button>
					<button type="submit" id="remove" data-oper="remove" class="btn btn-primary">삭제</button>
					<button type="submit" id="list" data-oper="list" class="btn btn-primary">목록</button>
		</form>
	</div>
</section>


<!-- Modal -->
<div class="modal fade" id="alertModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true" style="font-family: 'NanumSquareNeo';">
	<div class="modal-dialog modal-dialog-centered text-center">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="alertModal">알림</h5>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form"); 
	
	$('#remove').on("click", function(e){
		
		e.preventDefault();
		
		formObj.attr("action", "/customerService/remove");
		
		$(".modal-body").html("삭제가 완료되었습니다.");
		$("#alertModal").modal("show");
		
		formObj.submit();
		
	});
	
	$('#list').on("click", function(e){
		e.preventDefault();
		
		formObj.attr("action", "/customerService/qna").attr("method","get");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var keywordTag = $("input[name='keyword']").clone();
		var typeTag = $("input[name='type']").clone();
		
		formObj.empty();
		formObj.append(pageNumTag);	
		formObj.append(amountTag);
		formObj.append(keywordTag);
		formObj.append(typeTag);
		
		formObj.submit();
		
	});
	
	$('#modify').on("click", function(e){
	
		console.log("submit clicked");

		if($("#title").val() == ""){
			$(".modal-body").html("제목을 입력해주세요.");
			$("#alertModal").modal("show");
		    $("#title").focus();
		    return false;
		}

		if($("#content").val() == ""){
			$(".modal-body").html("내용을 입력해주세요.");
			$("#alertModal").modal("show");
		    $("#content").focus();
		    return false;
		}
		
		
		var str="";
		
		$(".uploadResult ul li").each(function(i, obj){
			
			var jobj = $(obj);
			
			console.dir(jobj);
			
			str += "<input type='hidden' name='attachList["+i+"].fileName' value='" + jobj.data("filename")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uuid' value='" + jobj.data("uuid")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='" + jobj.data("path")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].fileType' value='" + jobj.data("type")+"'>";
		});
		formObj.append(str).submit();
		console.log(str);
		
	});

});
</script>


<!-- 파일첨부 관련 -->
<script>
	$(function(){
		(function(){	
			
			var bno = '<c:out value="${board.bno}"/>'; 
			
			$.getJSON("/customerService/qnaGetAttachList", {bno: bno}, function(arr){
				
				console.log(arr);
				
				var str = "";
				
				$(arr).each(function(i, attach){
					
					if(attach.fileType){
			            var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
			            
			            str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' "
			            str +=" data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
			            str += "<span> "+ attach.fileName+"</span>";
			            str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' "
			            str += "class='btn btn-primary btn-circle'><i class='fa fa-times'></i></button><br>";
			            str += "<img src='/qnaDisplay?fileName="+fileCallPath+"'>";
			            str += "</div>";
			            str +"</li>";
			          }else{
			              
			            str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' "
			            str += "data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
			            str += "<span> "+ attach.fileName+"</span><br/>";
			            str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' "
			            str += " class='btn btn-primary btn-circle'><i class='fa fa-times'></i></button><br>";
			            str += "<img id='myimg' src='../images/folder.png'>";
			            str += "</div>";
			            str +"</li>";
			          }
		       		});
			       
					$(".uploadResult ul").html(str);
				
			});	// end getjson
			
		})();	// end function
		
		
		$(".uploadResult").on("click", "button", function(e){
			
			console.log("delete file");
			
			if(confirm("파일을 삭제하시겠습니까?")){
				
				var targetLi = $(this).closest("li");
				targetLi.remove();
			}
		});
		
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880;
		
		function checkExtension(fileName, fileSize){
			
			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
			
			if(regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}
		
		$("input[type='file']").change(function(e){
			
			var formData = new FormData();
			
			var inputFile = $("input[name='uploadFile']");
			
			var files = inputFile[0].files;
			
			for(var i=0 ; i<files.length ; i++){
				
				if(!checkExtension(files[i].name, files[i].size)){
					return false;
				}
				formData.append("uploadFile", files[i]);
			}
		
			$.ajax({
				url: '/qnaUploadAjaxAction',
				processData: false,
				contentType: false,
				data: formData,
				type: 'POST',
				dataType: 'json',
					success: function(result){
						console.log(result);
						showUploadResult(result);	// 업로드 결과 처리 함수
					}
			});	//.ajax
		
		});
	
		
		function showUploadResult(uploadResultArr){
			
			if(!uploadResultArr || uploadResultArr.length == 0){reuturn;}
			
			var uploadUL = $(".uploadResult ul");
			
			var str ="";
			
			$(uploadResultArr).each(function(i, obj){
			
				if(obj.image){
		          var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
		          str += "<li data-path='"+obj.uploadPath+"'";
		          str += " data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
		          str += " ><div>";
		          str += "<span> "+ obj.fileName+"</span>";
		          str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-primary btn-circle'><i class='fa fa-times'></i></button><br>";
		          str += "<img src='/qnaDisplay?fileName="+fileCallPath+"'>";
		          str += "</div>";
		          str +"</li>";
		        }else{
		          var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);            
		          var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
		              
		          str += "<li "
	        	  str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
		          str += "<span> "+ obj.fileName+"</span>";
		          str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-primary btn-circle'><i class='fa fa-times'></i></button><br>";
		          str += "<img src='../image/folder.png'></a>";
		          str += "</div>";
		          str +"</li>";
		        }
			});
			uploadUL.append(str);
		}
		
		
	});
</script>

<%@include file="../includes/footer.jsp"%>