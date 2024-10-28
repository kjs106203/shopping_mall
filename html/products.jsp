<!DOCTYPE html>
<html lang="ko">
<head>
    <%
        String p_name = request.getAttribute("p_name");
        String[] p_img = request.getAttribute("p_img");
        String p_detailRaw = (String) request.getAttribute("p_detail");
        Object p_detail;

        if (p_detailRaw.contains("+")) {
            p_detail = p_detailRaw.split("\\+");
        } else {
            p_detail = p_detailRaw;
        }
        int p_price = request.getAttribute("p_price");
        int p_discount = request.getAttribute("p_discount");
        int total_price = (int) Math.round(p_price * (1 - (1.0 / p_discount)));
    %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=p_name%></title>
    <link href="../sample/css/style.css" rel="stylesheet" type="text/css">
    <script src="../sample/js/jquery-3.7.1.min.js"></script>
    <script>
        $(function(){
            var lotionPrice = <%=total_price%>;

            function updatePrice() {
                var quantity = parseInt($("#amount").val());
                var total = lotionPrice * quantity;
                $("#price").text(total.toLocaleString() + "원");
            }

            $("#increase").click(function() {
                $("#amount").val(parseInt($("#amount").val()) + 1);
                updatePrice()
            })

            $("#decrease").click(function() {
                if ($("#amount").val() > 1) { 
                    $("#amount").val(parseInt($("#amount").val()) - 1);
                    updatePrice()
                }
            })

            $(".img_thumbnail > img").click(function() {
                var clicked = $(this).attr("src");
                $("#frame").attr("src", clicked);
                $(".img_thumbnail img").removeClass("active");
                $(this).addClass("active");
            })

        })
    </script>
</head>
<body>
    <header>
        <div id="header">
            <div>
                <img src="../sample/img/logo.png" onclick="location.href='./main.html'">
                <!-- <img src="../sample/img/logo.png"> -->
            </div>
            <div id="search_product" >
                <input type="text" placeholder="상품 검색">
                <button><img src="../sample/img/search.svg"></button>
            </div>
            <div>
                <ul id="userinfo">
                    <li>회원가입</li>
                    <li>|</li>
                    <li>로그인</li>
                    <li>|</li>
                    <li>마이페이지</li>
                </ul>
            </div>
        </div>
        <div>
            <ul id="category">
                <li onclick="location.href = './pd_makeup.html'">메이크업</li>
                <li>|</li>
                <li onclick="location.href = './pd_perfume.html'">향수</li>
                <li>|</li>
                <li onclick="location.href = './pd_skincare.html'">스킨케어</li>
                <li>|</li>
                <li onclick="location.href = './pd_menscare.html'">맨즈케어</li>
            </ul>
        </div>
    </header>

    <main>
        <div id="product">
            <div class="product_wrap">
                <img id="frame" src="<%=p_img[0]%>">
                <div class="img_thumbnail">
                    <%
                        for (int i = 0; i < p_img.length; i++) {
                    %>
                        <img class="<%= i == 0 ? "active" : "" %>" src="<%= p_img[i] %>">
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="product_content">
                <h2 class="product_name"><%=p_name%>></h2>
                <span class="original_price"><%=p_price%>원</span>
                <h2 class="product_price"><%=total_price%>원</h2>
                <h3>배송 정보</h3>
                <ul class="del_info">
                    <li><span>일반배송 &nbsp;</span><div>2,500원 (20,000원 이상 무료배송)<br>평균 3일 이내 배송</div></li>
                    <li><span>환불 &nbsp;</span><div>반품비 2,500원 결제 필요</div></li>
                    <li><span>도서산간 &nbsp;</span><div>2,500원 추가 결제 필요</div></li>
                </ul>
                <div class="amount_box">
                    <div class="tit_area">
                        <span class="label">구매수량</span>
                        <span class="option_cnt_box">
                            <button id="decrease" class="btnCalc minus">-</button>
                            <input id="amount" class="amount" name="amount_val" type="text" value="1" title="구매수량">
                            <button id="increase" class="btnCalc plus">+</button>
                        </span>
                    </div>
                </div>
                <div class="order">
                    <div class="total_price">
                        <h2 class="product_price">상품금액 합계</h2>
                        <h2 id="price" class="product_price">29,990원</h2>
                    </div>
                </div>
                <div class="buttonAll"></div>
                    <button class="orderButton">바로구매</button>
                    <button class="cartButton">장바구니</button>  
                </div>
            </div>
        </div>
        <hr>
        <div id="pd_detail">
            <img src="../sample/img/product_logo.png">
            <img src="../sample/img/cushion_detail.png">
            <%
                if (p_detail instanceof String[]) {
            %>
                <%
                    for (String detail : (String[]) p_detail) {
                %>
                        <img src="<%= detail %>"/>
                <%
                    }
                %>
            <%
            } else {
            %>
            <!-- p_detail이 String인 경우 -->
                <img src="<%= p_detail %>"/>
            <%
                }
            %>
        </div>
    </main>

    <footer id="footer">
        <div>
            <img src="../sample/img/logo.png">
        </div>
        <div id="creater">
            <p>현대이지웰 Java 풀스택 스터디그룹 프로젝트</p>
            <p>조장 : 김지성</p>
            <p>조원 : 박민준, 신수빈, 황혜령</p>
        </div>
    </footer>
</body>
</html>