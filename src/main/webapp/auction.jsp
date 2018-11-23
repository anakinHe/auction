<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html;" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

    <head>
        <title>拍卖端</title>
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            $(function(){
                $("#clan").click(function () {
                    $("form").submit(function(){
                        var price = parseFloat($("#sale").val().trim());
                        var recordPrice = parseFloat($(".recordPrice").html());
                        var upset = parseFloat($("#upset").val().trim());
                        if(price >= recordPrice+upset){
                            return true;
                        }else{
                            return false;
                        };
                    });
                });
            });
        </script>
    </head>

    <body>
    <div class="wrap">
        <!-- main begin-->
        <div class="sale">
            <h1 class="lf">在线拍卖系统</h1>
            <div class="logout right"><a href="${pageContext.request.contextPath}/logout.do" title="注销">注销</a></div>
        </div>
        <div class="items sg-font lf">

            <ul class="rows">
                <li>名称：</li>
                <li class="borderno">${product.name} </li>
            </ul>
            <ul class="rows">
                <li>描述：</li>
                <li class="borderno">${product.desc} </li>
            </ul>
            <ul class="rows">
                <li>开始时间：</li>
                <li class="borderno"><fmt:formatDate value="${product.startTime}" pattern="yyyy-MM-dd hh:mm:ss"/> </li>
            </ul>
            <ul class="rows">
                <li>结束时间：</li>
                <li class="borderno"><fmt:formatDate value="${product.endTime}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
            </ul>
            <ul class="rows border-no">
                <li>起拍价：</li>
                <li class="borderno">${product.startPrice} </li>
            </ul>
        </div>
        <div class="rg borders"><img src="${pageContext.request.contextPath}/images/${product.picture}" width="270" height="185" alt="" /></div>
        <div class="cl"></div>
        <div class="top10 salebd">
            <p>
            <form action="${pageContext.request.contextPath}/addRecord.do?id=${product.id}" method="post">
                <label for="sale">出价：</label>
                <input type="hidden" name="productid" value="${product.id}"/>
                <input type="hidden" name="userid" value="${sessionScope.user.id} "/>
                <input type="text"  class="inputwd" id="sale" value="${product.upset}" name="price"/>
                <input id="clan" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
            </form>
            <input type="hidden" name="" id="upset" value="${product.upset}"/>

            <p class="f14 red">不能低于最高竞拍价</p>
        </div>
        <div class="top10">
            <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
            <input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
        </div>
        <div class="offer">
            <h3>出价记录</h3>
            <div class="items sg-font">
                <c:forEach items="${recordList}"  var="record">
                    <ul class="rows even strong">
                        <li><fmt:formatDate value="${record.time}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
                        <li class="recordPrice">${record.price}</li>
                        <li class="borderno">${record.user.name}</li>
                    </ul>
                </c:forEach>
            </div>
        </div>
        <!-- main end-->
     </div>
    </body>
</html>