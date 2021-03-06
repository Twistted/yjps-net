<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Cache-Control" content="no-transform">
	<title>${ title }</title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<link href="#" rel="icon">
	<link href="#" rel="shortcut icon">
	<link rel="stylesheet" href="../public/css/login1.css">
	<link rel="stylesheet" href="../public/css/login2.css">
	<link rel="stylesheet" href="../public/css/xcConfirm.css" />
	<script type="text/javascript" src="../public/js/jquery-2.1.4.min.js"></script>
	<script src="../public/js/xcConfirm.js"></script>
	<script>
        $(function () {
            if ("${sessionScope.agentLoginFail}" == "true") {
            	var txt = "登录失败";
            	window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
            }
            else if ("${sessionScope.agentLoginFail}"=="false") {
            	var txt = "你被禁用";
            	window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
            }
        });
    </script>
	<script>
	    function RESIZEIMG(b,k,l,m){
	    	var c=b.parentNode;
	    	var d=parseInt(c.offsetWidth)||k;
	    	var e=parseInt(c.offsetHeight)||l;
	    	var f=d/e;
	    	var g=b.naturalWidth||b.width;
	    	var h=b.naturalHeight||b.height;
	    	var i=g/h;
	    	var j="width";
	    	if(f<i){
	    		j="height";
	    		try {
	    			b.style["left"] = "-" + parseInt(Math.abs((d - (g * e / h)) / 2)) + "px";
	    		} catch (e){
	    			
	    		}
	    	} else if (m) {
	    		try {
	    			b.style["top"] = "-" + parseInt(Math.abs((e - (h * d / g)) / 2)) + "px";
	    		} catch (e) {
	    			
	    		}
	    	};
	    	b.style[j]="100%";
	    };
	</script>
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
			<a href="/home/index" class="fl"> 返回易居网首页 </a>
			<!-- <div class="fr"> 还没有易居账号？ <a href="/agent/register"> 马上注册 </a></div> -->
		</div>
		<div class="wrapper">
			<div class="bg-image">
				<img src="../public/img/login-bg1.jpg">
			</div>
			<div class="logo"></div>
			<div class="login-cun">
				<form id="loginUserForm" class="fm-v clearfix" action="/agent/login"
					method="post">
					<input type="hidden" name="redirect" id="r" value="">
					<input type="hidden" name="verifyCode" id="verifyCode" val="">
					<ul class="user-logn">
						<li class="user-phone">
							<div class="li-bg error">
								<label></label> 
								<input id="username" name="account" validatename="账号" autocomplete="off" placeholder="请输入账号"
									class="phonecode field" type="text" validate="notNull,isTel" value="">
								<p class="tipForAccount" style="display:none;">账号不能为空</p>
							</div>
						</li>
						<li class="pwd">
							<div class="li-bg error">
								<label></label> <input id="password" name="password"
									validatename="密码" placeholder="请输入登录密码" validate="notNull" type="password" value="">
								<p class="tipForPwd" style="display:none;">密码不能为空</p>
							</div>
						</li>
						<li class="user-phone">
							<div class="li-bg"></div>
						</li>
						<!-- <li class="mt10">
							<div class="fl">
								<label><input type="checkbox" name="remember" value="1" class="mind-login">下次自动登录</label>
							</div> 
							<a href="#" class="fr">找回密码</a>
						</li> -->
						<li>
							<input type="hidden" name="lt" value="#"> 
							<input type="hidden" name="execution" value="e1s1"> <input type="hidden" name="_eventId" value="submit">
							<button class="actDoSubmit">
								<a style="color: #fff;">立即登录</a>
							</button>
						</li>
					</ul>
				</form>
			</div>
		</div>
	</div>

	<div class="footer-simple">
		 
	</div>

	<div id="only" data-city="login" data-page="login_register"></div>
	<script type="text/javascript" src="../public/js/jquery-2.1.4.min.js"></script>
	<script>
		 $(document).ready(function(){
		  
		 	 $(".actDoSubmit").click(function(){
		 		if(($("input#username").val())==""){
		 			$(".tipForAccount").css("display","block");
		 		}
		 		if(($("input#password").val())==""){
		 			$(".tipForPwd").css("display","block");
		 		}
			 });
			$("input").bind("change",function(){
				
				if(($("input#username").val())!=" "){
		 			$(".tipForAccount").css("display","none");
		 		}
		 		if(($("input#password").val())!=" "){
		 			$(".tipForPwd").css("display","none");
		 		}
		 		else{
		 			return false;
		 		}
			});
		 });
		
	</script>
</body>
</html>