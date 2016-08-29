﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎登录后台管理系统</title>
   <link rel="shortcut icon" type="image/x-icon" href="http://lianjia.com/favicon.ico" />

    <link href="/manage_system/public/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="/manage_system/public/js/jquery.js" language="JavaScript"></script>
    <script src="/manage_system/public/js/cloud.js" type="text/javascript"></script>

    <script language="javascript">
        $(function () {
            $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            $(window).resize(function () {
                $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            })
            if ("${sessionScope.loginFail}"=="true") {alert("密码或账号有误，请重新检查~");}
            else if ("${sessionScope.loginFail}"=="false") {alert("你已经被禁用了，快回去反省！");}
        });
    </script>

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>


<div class="logintop">
    <span>欢迎回来易居网络平台系统</span>
    <ul>
        <!--<li><a href="/manage_system/reg">注册</a></li>-->
        <li><a href="#" onclick="alert('宋奇星最萌!!')">关于易居</a></li>
    </ul>
</div>

<div class="loginbody">

    <span class="systemlogo" style="background: transparent"></span>

    <form action="/manage/login" method="post">
        <div class="loginbox">

            <ul>
                <li><input name="account" type="text" class="loginuser" value placeholder="请输入用户名" /></li>
                <li><input name="password" type="password" class="loginpwd" value placeholder="请输入密码" /></li>
                <li>
                    <input name="" type="submit" class="loginbtn" value="登录"/>
                    <!--<label><input name="" type="checkbox" value="" checked="checked"/>记住密码</label>-->
                    <!--<label><a href="#">忘记密码？</a></label>-->
                </li>
            </ul>

        </div>
    </form>
</div>


<div class="loginbm">- 易居网络平台 -</div>


</body>

</html>
