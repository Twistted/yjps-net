<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎登录后台管理系统</title>
    <link href="/manage_system/public/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="/manage_system/public/js/jquery.js" language="JavaScript"></script>
    <!--<script src="/manage_system/public/js/cloud.js" type="text/javascript"></script>-->

    <script language="javascript">
        $(function () {
            $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            $(window).resize(function () {
                $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            })
        });
    </script>

</head>

<body style="background-color:#1c77ac; background-image:url('/manage_system/public/images/light.png'); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>


<div class="logintop">
    <span>欢迎回来微豆萌萌哒</span>
    <ul>
        <li><a href="/Operation/Index/reg">注册</a></li>
        <li><a href="#" onclick="alert('我是不是很萌!!')">关于卖萌</a></li>
    </ul>
</div>

<div class="loginbody">
    <form method="post" action="/Operation/Index/reg">
        <!--<span class="systemlogo" style="background: transparent"></span>-->
        <section class="loginbox" style="background: transparent">

            <ul>
                <li><input class="loginuser" type="text" name="user_name" value="" placeholder="帐号"></li>
                <li><input class="loginuser" type="password" name="user_psw" value="" placeholder="密码"></li>
                <li><input class="loginuser" type="text" name="user_nickname" value="" placeholder="昵称"></li>
                <li><input class="loginuser" type="text" name="user_school" value="" placeholder="学校"></li>
                <li class="submit"><input class="loginbtn" type="submit" name="commit" value="确认注册"></li>
            </ul>

        </section>
        >
    </form>
</div>


<div class="loginbm">- 微豆萌萌哒 -</div>


</body>

</html>
