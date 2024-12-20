<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../sample/css/orderList.css">
    <script>
        let allChkBox = document.getElementById("allCheckbox");
        
    </script>

</head>
<body>
    <header>
        <div id="headerBox">
            <div id="firstHeaderBox">
                <div>
                    <a href="./main.html"><img src="../sample/img/logo.png"></a>
                </div>
                <div id="searchBarBox">
                    <input type="text" placeholder="상품 검색" id="searchBar">
                    <button id="searchBtn"><img src="../sample/img/search.svg"></button>
                </div>
                <div>
                    <ul id="navigateBar">
                        <li onclick="location.href = './signUp.html'">회원가입</li>
                        <li>|</li>
                        <li onclick="location.href = './login.html'">로그인</li>
                        <li>|</li>
                        <li>마이페이지</li>
                    </ul>
                </div>
            </div>
        </div>
         <div id="categoryBox">
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
        <div id="bannerColorBox"></div>
        <div id="mainBox">
            <div id="innerMainBox">
                <div id="mainBanner">
                    <div id="orderListTitle">
                        <div id="shippingName">장바구니</div>
                        <div id="goodsNum">1</div>
                    </div>
                    <div id="stage">
                        <span> 01 장바구니 > </span>
                        <span> 02 주문완료 </span>
                    </div>
                </div>
                <div id="mbshipInfoWrappingBox">
                    <div id="membershipInfoBox">
                        <table id="membershipInfo">
                            <tr>
                                <td class="userInfoTd" id="firstUserInfoTd">
                                    <div id="userMembership">
                                        <div>박민준님의 멤버십 등급은 BABY CAMPUS입니다</div>
                                        <div id="gradeBox">
                                            <div id="grade">B</div>
                                            <div id="gradeBenefit">등급혜택</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="userInfoTd" id="secondUserInfoTd">MULTI 포인트 <br>0 p</td>
                                <td class="userInfoTd" id="thirdUserInfoTd">할인쿠폰<br><span>0개</span></td>
                                <td class="userInfoTd" id="fourthUserInfoTd">예치금<br><span>0원</span></td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <div id="shipmentTitle">멀티캠퍼스 배송상품(0)</div>
                    </div>
                    <div>
                        <table id="allGoodsInfo">
                            <tr>
                                <th><input type="checkbox" id="allCheckBox"></th>
                                <th>상품정보</th>
                                <th>판매가</th>
                                <th>수량</th>
                                <th>구매가</th>
                                <th>배송정보</th>
                                <th>선택</th>
                            </tr>
                            <tr id="addGoods">
                                <td class="goods"><input type="checkbox" id="checkBox1"></td>
                                <td class="goods"><div><img src="" alt="">상품 상세</div></td>
                                <td class="goods">0원</td>
                                <td class="goods"><input type="number" value="1" min="1" id="amountBox"></td>
                                <td class="goods">0원 <br><span>0원</span></td>
                                <td class="goods">무료배송<br><span>도서 산간 제외</span></td>
                                <td class="goods">
                                    <div id="chooseBtnBox">
                                        <button class="chooseBtn">바로구매</button><br>
                                        <button class="chooseBtn">쇼핑찜</button><br>
                                        <button class="chooseBtn">X 삭제</button>
                                    </div>    
                                </td>
                            </tr>
                        </table>
                        <div id="deleteBtnBox">
                            <div>
                                <button>선택상품 삭제</button>
                                <button>품절상품 삭제</button>
                            </div>
                            <span>총 판매가 0원 - 총 할인금액 0원 + 배송비 0원 = 총 결제금액 0원</span>
                        </div>
                        <table id="calculateBox">
                            <tr>
                                <td class="cost">총 판매가<br><span class="costNum">0원</span></td>
                                <td class="cost">총 할인금액<br><span class="costNum">0원</span></td>
                                <td class="cost">배송비<br><span class="costNum">0원</span></td>
                            </tr>
                        </table>
                        <div id="minus">-</div>
                        <div id="plus">+</div>
                        <div id="couponDiscount">
                            <div>배송비는 쿠폰할인금액에 따라 변경될 수 있습니다.</div>
                            <div>총 결제예상금액 0원</div>
                        </div>
                        <div id="orderBtnBox">
                            <div id="orderBtnSpan">
                                <button class="selectOrder" id="orderEach">선택주문(0)</button>
                                <button class="selectOrder" id="orderAll">전체주문</button>
                            </div>
                        </div>
                        <div id="recommendationBox">
                            <span>함께 구매하면 좋은 추천 상품이에요</span>
                            <span>더보기 ></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div></div>
            <img src="../sample/img/logo.png">
        </div>
        <div id="creator">
            <p style="font-weight: bold;">현대이지웰 Java 풀스택 스터디그룹 프로젝트</p>
            <p>조장 : 김지성</p>
            <p>조원 : 박민준, 신수빈, 황혜령</p>
        </div>
    </footer>
</body>
</html>