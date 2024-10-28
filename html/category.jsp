<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메이크업 통합</title>
    <link href="../sample/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
  String[] p_names = request.getParameter("p_name");

  int[] p_prices = request.getParameter("p_price");
  int[] discounts = request.getParameter("p_discount");
  int[] new_prices = {0, 0, 0};
  for(int i=0; i<3; i++){
    new_prices[i] = (int) Math.round(p_prices[i] * (1 - (1.0 / p_discount[i])));
  }

  String[] srcs = request.getParameter("p_img");
  String[] first_srcs = {"", "", ""};
  for(int i=0; i<3; i++){
    string[] tmp = srcs[i].split("+");
    String[i] = tmp[0];
  }

 %>
    <header>
        <div id="header">
            <div>
                <a href="./main.html"><img src="../sample/img/logo.png"></a>
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
                <li onclick="location.href = 'controller.do?command=category&p_category=makeup >'">메이크업</li>
                <li>|</li>
                <li onclick="location.href = 'controller.do?command=category&p_category=perfume >'">향수</li>
                <li>|</li>
                <li onclick="location.href = 'controller.do?command=category&p_category=skincare >'">스킨케어</li>
                <li>|</li>
                <li onclick="location.href = 'controller.do?command=category&p_category=menscare >'">맨즈케어</li>
            </ul>
        </div>
    </header>

    <main>
        <div id="category_pd_list">
            <div id="prod1" class="prod">
                <a href="controller.do?command=product_detail&p_name=<%=p_names[0] %>">
                    <img src="<%=first_srcs[0] %>">
                </a>
                <div class="prodInfo">
                    <h4 class="prod_name"><%=p_names[0] %></h4>
                    <h3 class="original_price"><%=p_prices[0] %>원</h3><br>
                    <h3 class="product_price"><%=new_prices[0] %>원</h3>
                </div>
            </div>
            <div id="prod2" class="prod">
                 <a href="controller.do?command=product_detail&p_name=<%=p_names[1] %>">
                    <img src="<%=first_srcs[1] %>">
                </a>
                <div class="prodInfo">
                    <h4 class="prod_name"><%=p_names[1] %></h4>
                    <h3 class="original_price"><%=p_prices[1] %>원</h3><br>
                    <h3 class="product_price"><%=new_prices[1] %>원</h3>
                </div>
            </div>
            <div id="prod3" class="prod">
                <a href="controller.do?command=product_detail&p_name=<%=p_names[2] %>">
                    <img src="<%=first_srcs[2] %>">
                </a>
                <div class="prodInfo">
                    <h4 class="prod_name"><%=p_names[2] %></h4>
                    <h3 class="original_price"><%=p_prices[2] %>원</h3><br>
                    <h3 class="product_price"><%=new_prices[2] %>원</h3>
                </div>
            </div>
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