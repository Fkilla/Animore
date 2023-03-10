<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<script>
   document.getElementById("home").setAttribute("class", "nav-item");
   document.getElementById("mall").setAttribute("class", "nav-item dropdown active");
</script>

<style>
body {
  margin: 0;
}

* {
  box-sizing: border-box;
}

p {
  padding_bottom: 5px;
  text-align: center;
  pont-size:15px;
  
}

a {
  color: black;
}

img {
  display: block;
  width: 80%;
  margin: auto;
}

.cart {
  width: 80%;
  margin: auto;
  font-family:NanumSquareNeo;
}

.cart ul {
  background-color: whitesmoke;
  padding: 30px;
  margin-bottom: 50px;
  border: whitesmoke solid 1px;
  border-radius: 5px;
  font-size: 15px;
  font-weight: 400;
}

.cart ul :first-child {
  color: #CDBBA7;
}

table {
  border-top: solid 1.5px black;
  border-collapse: collapse;
  width: 100%;
  font-size: 14px;
}

thead {
  text-align: center;
  font-weight: bold;
}

tbody {
  font-size: 15px;
}

td {
  padding: 15px 0px;
  border-bottom: 1px solid lightgrey;
}

.cart__list__detail {
   text-align: left;
}

/* .cart__list__detail :nth-child(3) {
  vertical-align: top;
} */

/* .cart__list__detail :nth-child(3) a {
  font-size: 15px;
}

.cart__list__detail :nth-child(3) p {
  margin-top: 6px;
  font-weight: bold;
  font-size:15px;
} */

.cart__list__smartstore {
  font-size: 15px;
  color: gray;
}

.cart__list__option {
  vertical-align: top;
  padding: 20px;
}
.cart__list__option p {
  text-align:center;
}

   /* .cart__list__option p {
     margin-bottom: 25px;
     position: relative;
     font-size:15px;
   } */

.cart__list__option p::after {
  content: "";
  width: 90%;
  height: 1px;
  background-color: lightgrey;
  left: 0px;
  top: 25px;
  position: absolute;
}

.cart__list__optionbtn {
  background-color: white;
  font-size: 15px;
  border: lightgrey solid 1px;
  padding: 7px;
}

/* .cart__list__detail :nth-child(4),
.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  border-left: 2px solid whitesmoke;
}

.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  text-align: center;
  font-size:15px;
} */

/* .cart__list__detail :nth-child(5) button {
  background-color: #AD8B73;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 4px 8px;
  font-size: 15px;
  margin-top: 5px;
} */

/* .price {
  font-weight: bold;
  margin-bottom:5px;
} */

.cart__mainbtns {
  width: 420px;
  height: 200px;
  padding-top: 40px;
  display: block;
  margin: auto;
}

.cart__bigorderbtn {
  width: 200px;
  height: 50px;
  font-size: 16px;
  margin: auto;
  border-radius: 5px;
}

.cart__bigorderbtn.left {
  background-color: white;
  border: 1px lightgray solid;
}

.cart__bigorderbtn.right {
  background-color: #CDBBA7;
  color: white;
  border: none;
}
</style>

<section class="hero-wrap hero-wrap-2"
   style="background-image: url('../images/cat-bg.jpg');"
   data-stellar-background-ratio="0.5">
   <div class="overlay"></div>
   <div class="container" style="font-family: 'NanumSquareNeo';">
      <div class="row no-gutters slider-text align-items-end">
         <div class="col-md-9 ftco-animate pb-5">
            <h1 class="mb-0 bread" style="font-family: 'NanumSquareNeo';">????????????</h1>
            <span class="breadcrumbs mb-2" style="padding:10px;">
               <!-- <span class="mr-2" style="color: gray;">????????????</span> -->
               <span class="mr-2"><a href="/anymoremall/product_list">????????????<i class="ion-ios-arrow-forward"></i></a></span>
               <span class="mr-2">/</span> 
               <!-- <span class="mr-2"><a href="/anymoremall/cart">????????????<i class="ion-ios-arrow-forward"></i></a></span> -->
               <span class="mr-2" style="color: gray;">????????????</span>
            </span>
         </div>
      </div>
   </div>
</section>
 
<div class="title">
   <h1>????????????</h1>
   ???????????? ????????? ?????? ?????????????????????.
</div>

    <section class="cart ftco-section">
        <div class="cart__information">
            <ul>
                <li>???????????? ????????? ?????? 30?????? ???????????????.</li>
                <li>??????, ?????? ??? ????????? ????????? ?????? ????????? ????????? ??? ????????????.</li>
                <li>???????????? ????????? ????????? ?????? ????????? ?????? ???????????? ????????? ????????? ??? ????????? ?????? ??? ??? ?????? ????????? ????????? ????????????.</li>
            </ul>
        </div>
        <table class="cart__list">
         
         <!-- DB ?????? -->
         <thead>
            <tr>
               <td colspan="3">????????????</td>
               <td>??????</td>
               <td>????????????</td>
               <td>?????????</td>
            </tr>
         </thead>
         	<c:set var="total" value="0" />
                 <c:forEach items="${cart_list}" var="cartList">
                    <tr class="cart_list_detail">
                       <td colspan="3">
                               <p style="text-align: center;"><c:out value="${ cartList.product_name }" /></p>
                           </td>
                           <td>
                               <p><c:out value="${ cartList.quantity }" /></p>
                               <p><button type="button" class="btn btn-primary px-2 py-2" onclick='location.href="/anymoremall/cart_delete?c_num=${cartList.c_num}"'>????????????</button><p>
                               <c:set var="total" value="${ total + cartList.quantity * cartList.price }" />
                           </td>
	                    <td>
	                    	<form method="POST" action="/anymoremall/import">
			                    <p name="price" ><c:out value="${ cartList.quantity * cartList.price }"/></p>
			                    <p><button type="submit" class="btn btn-primary px-2 py-2">????????????</button></p>
			                    <c:set var="num" value="${cartList.product_num}" />
				        		<c:set var="name" value="${cartList.product_name}" />
				        		<c:set var="quantity_v" value="${cartList.quantity}" />
				        		<c:set var="price_v" value="${cartList.price}" />
				        				
					        	<input type="hidden" id="product_num" name="product_num" value="${ num }" />
					            <input type="hidden" id="product_name" name="product_name" value="${name} " />
					            <input type="hidden" id="quantity" name="quantity" value="${quantity_v}" />
					            <input type="hidden" id="price" name="price" value="${price_v}" />
	                        </form>
	                     </td>
                           <td><p>??????</p></td>
                    </tr>
                 </c:forEach>
                 <c:if test="${empty cart_list}">
                    <tr>
                       <td colspan="6"><p style="margin-top: 16px; font-size: 20px;">??????????????? ??????????????????.</p></td>
                    </tr>
                 </c:if>
              <c:choose>
			 	<c:when test="${member.id != null && cart_list.size() != 0   }">
			 			<thead>
						 	<tr>
						 		<td colspan="5"></td>
						 		<td>??? ??????</td>
						 	</tr>
					 	</thead>
					 	<tr">
					 		<td colspan="5" style="border:none;"></td>
					 		<td style="border:none;"><p style="font-size: 15px;">${ total }???</p></td>	
					 	</tr>
			 	</c:when>      
		      </c:choose>
        </table>
        
        <div class="col-md-12 align-items-center d-flex justify-content-center"
           style="margin-top: 50px">
            <button id="listBtn" type="button" class="btn btn-primary mr-2">?????? ????????????</button>
           <a href="/anymoremall/import2"><button id="allOrderBtn" type="button" class="btn btn-primary">?????? ????????????</button> </a>
            <!-- ????????? ????????? ??? ????????? -->
            <c:choose>
               <c:when test="${member.id != null && cart_list.size() != 0   }">
                  <button type="button" class="btn btn-primary ml-2" 
                     onclick='location.href="/anymoremall/cart_delete_all"'>?????? ????????????</button>
               </c:when>
            </c:choose>
        </div>
    </section>
    
<script type="text/javascript">
   // ?????? ???????????? ??????
   $('#listBtn').on('click', function(){
      location.href = "/anymoremall/product_list";
   });
   
   // ?????? ???????????? ??????
   
</script>

<%@include file="../includes/footer.jsp"%>