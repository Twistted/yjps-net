<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Cache-Control" content="no-transform">
	<title>用户注册-易居网</title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<link href="#" type="image/x-icon" rel="icon">
	<link href="#" rel="shortcut icon">
	<link rel="stylesheet" href="../public/css/register1.css">
	<link rel="stylesheet" href="../public/css/register2.css">
	<style type="text/css">
		#detail a.rr-taobao-big {
			float: left;
			line-height: 40px;
			padding: 0 15px;
			font-size: 14px;
			color: #fff;
			background: #f40;
			border-radius: 2px;
			margin-left: 10px;
		}
		
		#detail a.rr-taobao-big:hover {
			background: #f20;
		}
		
		#detail a.rr-taobao-normal {
			display: inline-block;
			background: #ff8e1b;
			color: #fff;
			padding: 0 5px;
			border-radius: 2px;
			line-height: 25px;
			margin-left: 5px;
		}
		
		#detail a.rr-taobao-normal:hover {
			background: #f60;
		}
		
		#page a.rr-tmall-big, #page a.rr-tmall-normal {
			display: inline-block;
			line-height: 30px;
			background: #c40000;
			padding: 0 10px;
			color: #fff;
			border-radius: 2px;
			margin-left: 12px;
		}
		
		#page a.rr-tmall-big:hover, #page a.rr-tmall-normal:hover {
			text-decoration: none;
			background: #b50000;
		}
	</style>
</head>
<body>

	<div class="user-login">
		<div class="back">
			<a href="/home/index">返回易居网首页</a>
			<div class="fr"> 已有易居账号？<a href="/user/login" id="actResetUrl">马上登录</a>
			</div>
		</div>
		<div class="wrapper">
			<div class="bg-image">
				<img src="../public/img/login-bg1.jpg">
			</div>
			<div class="logo"></div>
			<div class="reset-pwd registerred">
				<form action="/user/register" method="post" id="registerForm">
					<input type="hidden" name="redirect" id="r" value="#">
					<ul>
						<!-- <li class=""><input type="text" name="mobile"
							placeholder="请输入手机号" validate="notNull,isTel" validatename="手机号"
							class="phonecode"> <a onclick="javascript:;"
							class="send actRegisterSMS"> 发送验证码 </a> <i>*</i></li>
						<li><input type="text" placeholder="请输短信验证码"
							name="verifyCode" class="actCheckVerify" validatename="短信验证码"
							validate="notNull"> <i>*</i></li> --> 
						<li><input type="text" name="account" placeholder="账号">
						</li>
						<li><input type="password" name="password" id="password"
							placeholder="请输入密码" validate="notNull,passwordRule"
							validatename="密码"> <i>*</i></li>
						<li><input type="password" placeholder="请确认新密码" id="other_password"
							validate="notNull,isSame" validatedata="isSame=#password"
							validatename="确认密码"> <i>*</i></li>
						<li class="mt10"><label> <input type="checkbox"
							
								class="check-agreed alwayCheck" 
								validatename="易居用户使用协议" > 我已阅读并同意 <a
								href="/user/user_protocol"
								target="_blank"> 《易居用户使用协议》 </a>
						</label></li>
						<li><input type="submit" value="立即注册"
							class="up-pwd actSubmit"></li>
					</ul>
				</form>
			</div>
		</div>

		<div class="footer-simple">
			 
		</div>

		<div id="only" data-city="login" data-page="login_register"></div>


	</div> 
	<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("li input.actSubmit").click(function(e){
				
				if ($("#password").val() == $("#other_password").val() && $("#password").val() == '') {
					
				} else {
					
					e.preventDefault();
				}
			});
		});
	</script>
</body>
</html>