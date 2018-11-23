<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html;" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

    <head>
        <title>登录</title>
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            $(function(){
                function f1(){
                    var name = $("#name").val().trim();
                    if(name.length>=3){
                        return true;
                    }else{
                        return false;
                    }
                }
                $("#name").blur(f1);
                function f2(){
                    var password = $("#password").val().trim();
                    if(password.length>=6){
                        return true;
                    }else{
                        return false;
                    }
                }
                $("#password").blur(f2);
                function f3(){
                    var kaptcha = $("#passwords").val().trim();
                    if(kaptcha.length==4){
                        return true;
                    }else{
                        return false;
                    }
                }
                $("#passwords").blur(f3);
                $("#change").click(function(){
                    $("#chapicture").prop("src","${pageContext.request.contextPath}/getKaptcha.do?a="+Math.random());
                });
                $("form").submit(function(){
                    if(f1() && f2() && f3()){
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
        <div class="main">
            <div class="sidebar">
                <p><img src="${pageContext.request.contextPath}/images/img1.jpg " width="443" height="314" alt="" /></p>
            </div>
            <div class="sidebarg">
                <form action="${pageContext.request.contextPath}/login.do" method="post" target='_blank'>
                    <div class="login">
                        <dl>
                            <dt class="blues">用户登陆</dt>
                            <dd><label for="name">用户名：</label><input type="text" class="inputh"
                                                                     value="用户名" id="name" name="name"/></dd>
                            <dd><label for="password">密 码：</label><input type="text" class="inputh"
                                                                         value="密码" id="password" name="password"/></dd>
                            <dd>
                                <label class="lf" for="passwords">验证码：</label>
                                <input type="text" class="inputh inputs lf"
                                       id="passwords" value="" name="kaptcha"/>
                                <span class="wordp lf"><img src="${pageContext.request.contextPath}/getKaptcha.do" width="96"
                                                            height="27" alt=""  id="chapicture"/></span>
                                <span class="blues lf"><a href="javascript:void(0)" title="" id="change">看不清</a></span>
                            </dd>
                            <dd>
                                <input name=""  type="checkbox" id="rem_u"  />
                                <span for="rem_u">下次自动登录</span>
                            </dd>
                            <dd class="buttom">
                                <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
                                <a href="${pageContext.request.contextPath}/register.jsp" class="spbg buttombg f14 lf">注册</a>
                                <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
                                <div class="cl"><span>${requestScope.errorMessage}</span></div>
                            </dd>
                        </dl>
                    </div>
                </form>
            </div>
            <div class="cl"></div>
        </div>
        <!-- main end-->
        <!-- footer begin-->
    </div>
    <!--footer end-->
    </body>
</html>