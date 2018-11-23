<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html;" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

    <head>
        <title>添加拍卖品</title>
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            $(function(){
                // 文件上传(文件域)的改变事件
                $(':file').change(function(event) {
                    //  HTML5 js 对象的获取
                    var files = event.target.files, file;
                    if(files && files.length > 0){
                        // 获取目前上传的文件
                        file = files[0];
                        // 文件的限定类型什么的道理是一样的
                        if(file.size > 1024 * 1024 * 2) {
                            alert('图片大小不能超过 2MB!');
                            return false;
                        }
                        // file对象生成可用的图片
                        var URL = window.URL || window.webkitURL;
                        // 通过 file 生成目标 url
                        var imgURL = URL.createObjectURL(file);
                        // 用这个 URL 产生一个 <img> 将其显示出来
                        $("img").attr('src', imgURL);
                    }
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
        <div class="login logns produce">
            <h1 class="blues">拍卖品信息</h1>
            <form action="${pageContext.request.contextPath}/addProduct.do" method="post" enctype="multipart/form-data">
                <dl>
                    <dd >
                        <label>名称：</label>
                        <input type="text" class="inputh lf" name="name"  id="name"/>
                        <div class="xzkbg spbg lf"></div>
                    </dd>
                    <dd>
                        <label>起拍价：</label>
                        <input type="text" class="inputh lf" name="startPrice"  id="price"/>
                        <div class="lf red laba">必须为数字</div>
                    </dd>
                    <dd>
                        <label>底价：</label>
                        <input type="text" class="inputh lf" name="upset"  id="uprice"/>
                        <div class="lf red laba">必须为数字</div>
                    </dd>
                    <dd>
                        <label>开始时间：</label>
                        <input type="text" class="inputh lf" name="startTime" id="start"/>
                        <div class="lf red laba">格式：2010-05-05 12:30:00</div>
                    </dd>
                    <dd>
                        <label>结束时间：</label>
                        <input type="text" class="inputh lf" name="endTime" id="end"/>
                        <div class="lf red laba">格式：2010-05-06 16:30:00</div>
                    </dd>
                    <dd class="dds">
                        <label>拍卖品图片：</label>
                        <div class="lf salebd"><a href="#"><img src="" width="100" height="100" /></a></div>
                        <input name="image" type="file" class="offset10 lf" />

                    </dd>
                    <dd class="dds">
                        <label>描述：</label>
                        <textarea name=desc cols="20" rows="5" id=""
                                  class="textarea"></textarea>
                    </dd>
                    <dd class="hegas">
                        <input name="" type="submit" value="发布" class="spbg buttombg buttombgs buttomb f14 lf" />
                        <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" />
                    </dd>
                </dl>
            </form>
        </div>
        <!-- main end-->
        <!-- footer begin-->
    </div>
    </body>
</html>