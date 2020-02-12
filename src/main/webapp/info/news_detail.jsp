<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Cache-Control" content="no-transform">
	<meta name="applicable-device" content="pc">

	<title>YJPS 易居网站平台系统</title>
	
	<meta name="keywords" content="易居网房地产友情链接事件公告，易居网房地产友情链接信息说明">
	

	<link href="/favicon.ico" type="image/x-icon" rel="shortcut icon">


	
	<link rel="stylesheet" type="text/css" href="http://static1.ljcdn.com/pc/asset/bbs/css/detail.css?_v=20160818201350">
	<link rel="stylesheet "  href="../public/css/bootstrap.min.css" />
		<link href="../public/css/reset.css" rel="stylesheet">

 
    <script src="../public/js/jquery-2.1.4.min.js"></script>
	</head>

<body>
	<jsp:include page="/sub_header.jsp"></jsp:include>
	<div class="clear"></div>
	<div class="container">
    	<div class="title">
        	<img src="../public/img/top.jpg" width="100%"  class="bg" style="margin-top: -154.5px;">
        		<div class="mask">
        		</div>
        		<input type="hidden" value="友情链接交换说明" id="subtitle">
        			<div class="title-h" style="height: 105px; margin-top: -52px;">
            			<h1>易居网络房产资讯</h1>
                        <h2>标题新闻</h2>
                    </div>
        </div>
    <div class="wrap lj_editor_view">
        <p>
            <strong>${news.title}</strong>
        </p>
        <p class="mesg">
            <span>发布时间：${news.timestamp}</span>
            <span>发布者：${news.author}</span>
        </p>
        <p class="detail-wrap"></p>

        <br>
        <p>${news.content} </p>

    </div>
    
</div>

	   <jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
