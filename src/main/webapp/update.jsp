<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html;" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

    <head>
        <title>update</title>
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript">

        </script>
    </head>

    <body>
    <div class="wrap">
        <!-- main begin-->
        <div class="sale">
            <h1 class="lf">在线拍卖系统</h1>
            <div class="logout right"><a href="${pageContext.request.contextPath}/logout.do" title="注销">注销</a></div>
        </div>
        <div class="login logns produce">
            <h1 class="blues">拍卖品信息</h1>
            <form action="${pageContext.request.contextPath}/update.do" method="post" enctype="multipart/form-data">
                <dl>
                    <dd >
                        <label>名称：</label>
                        <input type="hidden" name="id" value="${requestScope.product.id}">
                        <input type="text" class="inputh lf"  name="name"
                               value="${requestScope.product.name}" />
                        <div class="xzkbg spbg lf"></div>
                    </dd>
                    <dd>
                        <label>起拍价：</label>
                        <input type="text" class="inputh lf"  name="startPrice"
                               value="${requestScope.product.startPrice} " />
                        <div class="lf red laba">必须为数字</div>
                    </dd>
                    <dd>
                        <label>底价：</label>
                        <input type="text" class="inputh lf"  name="upset"
                               value="${requestScope.product.upset}" />
                        <div class="lf red laba">必须为数字</div>
                    </dd>
                    <dd>
                        <label>开始时间：</label>
                        <input type="text" class="inputh lf"  name="startTime "
                               value="<fmt:formatDate value="${requestScope.product.startTime}" pattern="yyyy-MM-dd hh:mm:ss"/>" />

                        <div class="lf red laba">格式：2011-05-05 12:30:00</div>
                    </dd>
                    <dd>
                        <label>结束时间：</label>
                        <input type="text" class="inputh lf"  name="endTime"
                               value="<fmt:formatDate value="${requestScope.product.endTime}" pattern="yyyy-MM-dd hh:mm:ss"/>" />
                        <div class="lf red laba">格式：2011-05-05 12:30:00</div>
                    </dd>
                    <dd class="dds">
                        <label>描述：</label>
                        <textarea name=desc cols="50" rows="5" class="textarea">${requestScope.product.desc} </textarea>
                    </dd>
                    <dd>
                        <label>修改图片：</label>
                        <div class="lf salebd"><a href="#"><img src="${pageContext.request.contextPath}/images/${requestScope.product.picture} "
                                                                name="picture" width="100" height="100" /></a></div>
                        <input name="image" type="file" class="marg10" />
                        <input type="hidden" name="picture" value="${requestScope.product.picture}"/>
                    </dd>
                    <dd class="hegas">
                        <input name="" type="submit" value="修改" class="spbg buttombg buttombgs f14 lf buttomb" />
                        <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb" />
                    </dd>
                </dl>
            </form>
        </div>
        <!-- main end-->
        <!-- footer begin-->
    </div>
    <!--footer end-->
    </body>
</html>