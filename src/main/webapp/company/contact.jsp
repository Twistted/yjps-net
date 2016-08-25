<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>YJPS 易居网站平台系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, minimum-scale=1.0">
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">
		<link rel="stylesheet "  href="../public/css/bootstrap.min.css" />
		<link href="../public/css/reset.css" rel="stylesheet">
		<link rel="stylesheet" href="../public/css/classify.css">
		<link rel="stylesheet" href="../public/css/main.css">
		<link rel="stylesheet" href="../public/css/new_file.css">
		<link rel="stylesheet" href="../public/css/class.css">
		<link rel="stylesheet" href="../public/css/luntang.css" />
        
        <style type="text/css">
        a:hover{
             text-decoration:underline;
           }
</style>
	</head>
	<body>
		<jsp:include page="/sub_header.jsp"></jsp:include>
		<div class="max-wrapper">
            <div class="row" >				
<!--左侧菜單欄--><div class="row-left ">
	                <div class="fl menu menu_fixed">
	                	<ul>
	                		<li class="aboutLj">
	                			<i></i>
	                			<a href="index.jsp">关于易居</a>
	                		</li>
	                		<li class="dreamLj">
	                			<i></i>
	                			<a href="aboutUs.jsp">了解易居网</a></li>
	                		<li class="contactLj hover">
	                			<i></i>
	                			<a href="contact.jsp">联系我们</a></li>
	                		<li class="joinLj">
    						<i></i>
        					<a href="joinUs.jsp" target="_blank">加入我们</a>
    						</li>
    						<li class="statementLj">
    							<i></i>
    							<a href="privacy.jsp">隐私声明</a>
    						</li>
    						<li class="statementLj">
    							<i></i>
    							<a href="link.jsp">友情链接</a>
    						</li>
    					</ul>
    				</div>
					
				</div>
				<div class="row-right">
<!--右边-->		     
                    <div class="name">联系我们</div>
                         <p>
                      
                         <p class="thick">网址：www.lgbrc.com </p>
                         	<br />
                         	<p class="thick">电话：（028）86710000</p>	
                         	<br />
                         	<p class="thick">传真：（028）86710001</p>
                         	<br />
                         	<p class="thick">地址：成都市锦江区东大街东大街城守东大街</p>
                         	<img src="../public/img/ditu.png"  width="655" height=auto>	
                         </p>	
                         
                         
                         
                </div>		
			</div>
	   </div>
	   <jsp:include page="/footer.jsp"></jsp:include>
		<script src="../public/js/jquery-2.1.4.min.js"></script>
	</body>