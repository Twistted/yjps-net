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
	                		<li class="aboutLj hover">
	                			<i></i>
	                			<a href="index.jsp">关于易居</a>
	                		</li>
	                		<li class="dreamLj">
	                			<i></i>
	                			<a href="aboutUs.jsp">了解易居网</a></li>
	                		<li class="eventLj">
	                			<i></i>
	                			<a href="contact.jsp">联系我们</a></li>
	                		<li class="dreamLj">
    						<i></i>
        					<a href="joinUs.jsp">加入我们</a>
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
                    <div class="name">关于易居</div>
                         <p>
                         	<img src="http://static1.ljcdn.com/pc/asset/img/aboutUs/aboutLjw.jpg?_v=20160812164302"></img>
                         
                         <p>易居网站平台系统是为广大客户提供高效的房地产居间服务,
                         	<br />
                         	提供安全、诚信、快捷、专业的一站式服务。
                         	<br />
                         	<br />
                         	易居网站平台系统是凭借地产行业的强大资源，
                         	<br />
                         	通过超前的战略构想、创新的运营模式、完善的风险控制体系、严密的管理机制，
                         	<br />
                         	组建一支标准化、专业化的职业经纪团队，
                         	<br />
                         	致力于为广大客户提供高效的房地产居间服务。
                         	<br />
                         	<br />
                         	易居业务内容涵盖房屋买卖、租赁、按揭贷款办理、顾问咨询以及营销代理，
                         	<br />
                         	倡导安全、诚信、快捷、专业的一站式服务。
                         </p>
                         
                         
                         
                </div>		
			</div>
	   </div>
	   <jsp:include page="/footer.jsp"></jsp:include>
		<script src="../public/js/jquery-2.1.4.min.js"></script>
	</body>
</html>