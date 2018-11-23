<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html;"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

    <head>
        <title>注册</title>
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            $(function(){
                $("#change").click(function(){
                    $("#chapicture").prop("src","${pageContext.request.contextPath}/getKaptcha.do?a="+Math.random());
                });
                function f1(){
                    var name = $("#name").val().trim();
                    var div = $("#name").next();
                    if(name.length>=6){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("用户名要求不低于6个字符");
                        return false;
                    }
                }
                function f2(){
                    var pwd = $("#password").val().trim();
                    var div = $("#password").next();
                    if(pwd.length>=6){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("密码要求不低于6个字符");
                        return false;
                    }
                }
                function f3(){
                    var cardid = $("#cardid").val().trim();
                    var div = $("#cardid").next();
                    if(cardid.length==18){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("身份证号必填");
                        return false;
                    }
                }
                function f4(){
                    var phone = $("#phone").val().trim();
                    var div = $("#phone").next();
                    if(phone.length==11){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("电话号码必填");
                        return false;
                    }
                }
                function f5(){
                    var address = $("#address").val().trim();
                    var div = $("#address").next();
                    if(address.length>0){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("地址必填");
                        return false;
                    }
                }
                function f6(){
                    var post = $("#post").val().trim();
                    var div = $("#post").next();
                    if(post.length==6){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("邮编必填");
                        return false;
                    }
                }
                function f7(){
                    var code = $("#code").val().trim();
                    var div = $("#code").next();
                    if(code.length==4){
                        $(div).html("");
                        return true;
                    }else{
                        $(div).html("验证码位数错误");
                        return false;
                    }
                }
                function f8(){
                    var flag = $("#rem_u").prop("checked");
                    if(flag){
                        console.log(flag);
                        return true;
                    }else{
                        console.log(flag);
                        return false;
                    }
                }
                $("#name").blur(f1);
                $("#password").blur(f2);
                $("#cardid").blur(f3);
                $("#phone").blur(f4);
                $("#address").blur(f5);
                $("#post").blur(f6);
                $("#code").blur(f7);
                $("#rem_u").change(f8);
                $("form").submit(function(){
                    if(f1() && f2() && f3() && f4() && f5() && f6() && f7() && f8()){
                        return true;
                    }else{
                        return false;
                    }
                });
            });
        </script>
    </head>

    <body>
    <div class="wrap">
        <!-- main begin-->
        <div class="zclf login logns">
            <h1  class="blue">用户注册</h1>
            <form action="${pageContext.request.contextPath}/register.do" method="post">
                <dl>
                    <dd>
                        <label> <small>*</small>用户名</label>
                        <input type="text" class="inputh lf"  name="name" id="name"/>
                        <div class="lf red laba"></div>
                    </dd>
                    <dd>
                        <label> <small>*</small>密码</label>
                        <input type="text" class="inputh lf" id="password"  name="password"/>
                        <div class="lf red laba"></div>
                    </dd>
                    <dd>
                        <label> <small>*</small>身份证号</label>
                        <input type="text" class="inputh lf" id="cardid" name="identity"/>
                        <div class="lf red laba"></div>
                    </dd>
                    <dd>
                        <label> <small>*</small>电话</label>
                        <input type="text" class="inputh lf" id="phone" name="phone"/>
                        <div class="lf red laba"></div>
                    </dd>
                    <dd>
                        <label> <small>*</small>住址</label>
                        <input type="text" class="inputh lf" id="address" name="address"/>
                        <div class="lf red laba"></div>
                    </dd>
                    <dd>
                        <label> <small>*</small>邮政编码</label>
                        <input type="text" class="inputh lf" id="post" name="postNumber"/>
                        <div class="lf red laba"></div>
                    </dd>
                    <dd class="hegas">
                        <label> <small>*</small>验证码</label>
                        <input type="text" class="inputh inputs lf" name="kaptcha" id="code" />
                        <div class="lf red laba"></div>
                        <span class="wordp lf"><img src="${pageContext.request.contextPath}/getKaptcha.do" width="96"
                                                    height="27" alt="" id="chapicture" /></span>
                        <span class="blues lf"><a href="javascript:void(0)" title="" id="change">看不清</a></span>
                    </dd>
                    <dd class="hegas">
                        <label>&nbsp;</label>
                        <input name=""  type="checkbox" id="rem_u" />
                        <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
                    </dd>
                    <dd class="hegas">
                        <label>&nbsp;</label>
                        <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
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