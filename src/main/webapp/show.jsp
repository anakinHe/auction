<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html;" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

    <head>
        <title>拍卖商品表</title>
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            function change(id){
                if(confirm("是否确定删除?")){
                    location="${pageContext.request.contextPath}/delete.do?id="+id;
                }
            }
        </script>
    </head>

    <body>
    <div class="wrap">
        <!-- main begin-->
        <div class="sale">
            <h1 class="lf">在线拍卖系统</h1>
            <div class="logout right"><a href="${pageContext.request.contextPath}/logout.do" title="注销">注销</a></div>
        </div>

        <div class="forms">
            <form action="${pageContext.request.contextPath}/selectAll.do" method="post">

                <label for="name">名称</label>
                <input name="name" type="text" class="nwinput" id="name"/>
                <label for="names">描述</label>
                <input name="desc" type="text" id="names" class="nwinput"/>
                <label for="time">开始时间</label>
                <input name="startTime" type="text" id="time" class="nwinput"/>
                <label for="end-time">结束时间</label>
                <input name="endTime" type="text" id="end-time" class="nwinput" />
                <label for="price">起拍价</label>
                <input name="startPrice" type="text" id="price" class="nwinput" />

                <input type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
            </form>
            <c:if test="${sessionScope.user.admin==1}">
                <a href="${pageContext.request.contextPath}/product.jsp">
                    <input name="" type="button"  value="发布" class="spbg buttombg f14  sale-buttom"/>
                </a>
            </c:if>
        </div>
        <div class="items">
            <ul class="rows even strong">
                <li>名称</li>
                <li class="list-wd">描述</li>
                <li>开始时间</li>
                <li>结束时间</li>
                <li>起拍价</li>
                <li class="borderno">操作</li>
            </ul>
            <c:forEach items="${requestScope.productList}" var="a">
                <ul class="rows even">
                    <li><a href="#" title="">${a.name}</a></li>
                    <li class="list-wd">${a.desc} </li>
                    <li><fmt:formatDate value="${a.startTime}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
                    <li><fmt:formatDate value="${a.endTime}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
                    <li>${a.startPrice}</li>
                    <li class="borderno red">
                        <c:if test="${sessionScope.user.admin==0}">
                            <a href="${pageContext.request.contextPath}/getAll.do?id=${a.id}">竞拍</a>
                        </c:if>
                        <c:if test="${sessionScope.user.admin==1}">
                            <a href="${pageContext.request.contextPath}/selectOne.do?id=${a.id}" title="修改">修改</a>|
                            <a href="javascript:void(0)" title="删除" onclick="change(${a.id})">删除</a>
                        </c:if>
                    </li>
                </ul>
            </c:forEach>
            <div class="page">
                <a href="#" title="">首页</a>
                <a href="#" title="">上一页</a>
                <span class="red">前5页</span>
                <a href="#" title="">1</a>
                <a href="#" title="">2</a>
                <a href="#" title="">3</a>
                <a href="#" title="">4</a>
                <a href="#" title="">5</a>
                <a href="#" title="">下一页</a>
                <a href="#" title="">尾页</a>
            </div>
        </div>
        <!-- main end-->
    </div>
    </body>
</html>