<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

  <style>
        textarea {
            /* width: 100%;
            height: 6.25em; */
            border: none;
            resize: none;
        }
        body {
        margin: 0;
        }

        * {
        box-sizing: border-box;
        }

        p,
        span {
        margin: 0;
        }

        a {
        color: black;
        }

        img {
        display: block;
        width: 80%;
        height: 80px;
        margin: auto;
        }

        .cart {
        width: 80%;
        margin: auto;
        padding: 30px;
        }

        .cart ul {
        background-color: whitesmoke;
        padding: 30px;
        margin-bottom: 50px;
        border: whitesmoke solid 1px;
        border-radius: 5px;
        font-size: 13px;
        font-weight: 300;
        }

        .cart ul :first-child {
        color: limegreen;
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
        font-size: 12px;
        }

        td {
        padding: 15px 0px;
        border-bottom: 1px solid lightgrey;
        }

        .cart__list__detail :nth-child(3) {
        vertical-align: top;
        }

        .cart__list__detail :nth-child(3) a {
        font-size: 12px;
        }

        .cart__list__detail :nth-child(3) p {
        margin-top: 6px;
        font-weight: bold;
        }

        .cart__list__smartstore {
        font-size: 12px;
        color: gray;
        }

        .cart__list__option {
        vertical-align: top;
        padding: 20px;
        }

        .cart__list__option p {
        margin-bottom: 25px;
        position: relative;
        }

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
        font-size: 10px;
        border: lightgrey solid 1px;
        padding: 7px;
        }

        .cart__list__detail :nth-child(4),
        .cart__list__detail :nth-child(5),
        .cart__list__detail :nth-child(6) {
        border-left: 2px solid whitesmoke;
        }

        .cart__list__detail :nth-child(5),
        .cart__list__detail :nth-child(6) {
        text-align: center;
        }

        .cart__list__detail :nth-child(5) button {
        background-color: #AD8B73;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 4px 8px;
        font-size: 12px;
        margin-top: 5px;
        }

        .price {
        font-weight: bold;
        }

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
        background-color: #AD8B73;
        color: white;
        border: none;
        }
  </style>

<section>
    <div class="overlay"></div>
    <br>
    <div class="container">
      <div class="row no-gutters slider-text align-items-end">
        <div class="col-md-12 ftco-animate pb-5">
          <h1 class="mb-0 bread">????????? ??????????????? - ???????????? / ???????????? ??????</h1>

            <p class="breadcrumbs mb-2" >
               <div style="text-align: center;">
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/member_list">????????????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/visit_reservation_form">???????????? ??? ??????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/adopt_reservation_form">???????????? ??? ??????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/protect_animal_write">???????????? ??????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button> 
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/protect_animal">???????????? ?????????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/current_perchase">???????????? ??????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/current_perchase">???????????? ??????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/current_animal">???????????? ?????? ??????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/profit">?????????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-lg">
                     <a href="/staffMyPage/product_manage">????????????</a>
                     <i class="ion-ios-arrow-forward"></i>
                  </button>
               </div>
            </p>
        </div>
      </div>
    </div>
  </section>

    <section class="cart">
        <!-- ???????????? ????????????-->
            <table class="cart__list">
                <form>
                    <thead>
                        <tr>
                            <td>????????????</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#AD8B73;">
                            <td style="text-align: center; color: rgb(255, 255, 255); font-size: 15px;">
                                ????????????&nbsp;&nbsp;751641364&nbsp;&nbsp;?????????&nbsp;&nbsp;2023-01-17&nbsp;&nbsp;16:04
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;????????????
                            </td>
                        </tr>
                    </tbody>
                </form>
            </table>
            <br><br>

        <!-- ??????????????? -->
        </div>
            <table class="cart__list">
                <form>
                    <thead>
                        <tr>
                            <td>???????????????</td>
                        </tr>
                    </thead>
                </form>
            </table>
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td></td>
                        <td colspan="2">????????????</td>
                        <td>??????</td>
                        <td>????????????</td>
                        <td>?????????</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cart__list__detail">
                        <td>1</td>
                        <td><img src="image/keyboard.jpg" alt="magic keyboard"></td>
                        <td><a href="#">?????????</a>
                            <p>??????: ??????</p>
                            <sapn class="price">?????????: A???</sapn>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="price">1???</span></td>
                        <td><span class="price">12000???</span><br>
                        </td>
                        <td>3000</td>
                    </tr>
                    
                </tbody>
            </form>
        </table>
        <br><br>
        <!-- ????????? ?????? -->
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td>???????????????</td>
                    </tr>
                </thead>
            </form>
        </table>
        <table class="cart__list">
            <form>
                <tbody>
                    <tr class="cart__list__detail">
                        <td>??????: ???00</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td>?????????: 010-1537-4887</td>
                    </tr>
                    
                </tbody>
            </form>
        </table>

        <br><br>
        <!-- ???????????? -->
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td>????????????</td>
                    </tr>
                </thead>
            </form>
        </table>
        <table class="cart__list">
            <form>
                <tbody>
                    <tr class="cart__list__detail">
                        <td>??????: ???00</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td>??????: ????????? ????????? ????????? 11-00 ?????? 5???</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td>?????????: 010-1537-4887</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td>??????????????????: ????????? ???????????? ?????? ?????????</td>
                    </tr>
                </tbody>
            </form>
        </table>
        <br><br>
        <!-- ???????????? ??? ???????????? -->
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td>???????????? ??? ????????????</td>
                    </tr>
                </thead>
            </form>
        </table>
        <table class="cart__list">
            <form>
                <tbody>
                    <tr class="cart__list__detail">
                        <td>????????????: 12,000???</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td>?????????: 3000???</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td>????????????: ????????????(????????????)</td>
                    </tr>
                </tbody>
            </form>
        </table>

        <div class="cart__mainbtns">
            <a href="current_perchase"><button class="cart__bigorderbtn left">??????</button></a>
            <a href="current_perchase_modify"><button class="cart__bigorderbtn right">??????</button></a>
        </div>
    </section>
</body>

<%@include file="../includes/footer.jsp"%>