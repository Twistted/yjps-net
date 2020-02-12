<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>易居网络平台资讯</title>
        <link rel="shortcut icon" type="image/x-icon" href="http://lianjia.com/favicon.ico" />
        <link rel="stylesheet" href="/public/css/list.css">
        <link rel="stylesheet" href="/public/css/common.css">s
        <link href="/public/css/reset.css" rel="stylesheet">
        <script src="/public/js/jquery-2.1.4.min.js"></script>
	</head>
	
	<body>
		<jsp:include page="/sub_header.jsp"></jsp:include>
<!-- 主体 -->
<div class="intro clear" mod-id="lj-common-bread">
	<div class="container"></div>
</div>

<div class="wrapper">

<div class="main-box clear">
	<div class="con-box">
		<div class="list-head clear" pan="">
			<h2 style="font-size:20px;">新闻列表</h2>
		</div>
		<div class="list-wrap">
			<ul class="agent-lst">
			<c:forEach var="news" items="${newsList}" >
				<li class="">
					<div class="pic-panel">
					</div>
					<div class="info-panel">
						<div class="agent-name">
							<a target="_blank" href="/info/show_news_detail?newsId=${news.newsId}">
								<h2>${news.title}</h2>
							</a>
						</div>
						<div class="col-1">
							<div class="main-plate">
								<span class="mp-title">作者: ${news.author}</span>
							
							</div>
						<div class="main-plate">
								<span class="mp-title">文章摘要:</span>
							
							</div>
							<div class="main-plate">
								<span class="mp-title">${news.content}</span>
							
							</div>
						<div class="main-plate">
								<span class="mp-title"></span>
							
							</div>
							<div class="label">
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</li>
			</c:forEach>
</ul>
		<div class="page-box">
				<a href="" class="on">1</a>
				<a href="/info/show_news?page=2">2</a>
				<a href="">3</a>
				<span>...</span>
				<a href="">100</a>
				<a href="">下一页</a>
		</div>
		</div>
	</div>
</div>
</div>

<!--尾部-->
	   <jsp:include page="/footer.jsp"></jsp:include>
<script>
console.log("${allNewsSize}");
		var page_html="";
		var cur_page="${currentPage}";
		var totalpage="${pageSize.intValue()}";
		var next_page="${currentPage+1}";
		var pre_page="${currentPage-1}";
		$(document).ready(function(){
			if (cur_page>1) {
				page_html+="<a href='/info/show_news?page="+pre_page+"'>上一页</a>";
			};
			if (totalpage<=3) {
				for (var i = 1 ; i <= totalpage; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/info/show_news?page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/info/show_news?page="+i+"'>"+i+"</a>";
					}
				}
			}
			else if(cur_page<=3){
				for (var i = 1 ; i <= 3; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/info/show_news?page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/info/show_news?page="+i+"'>"+i+"</a>";
					}
				}
				page_html+="<span>...</span>";
				page_html+="<a href='/info/show_news?page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if(cur_page==4){
				for (var i = 1 ; i <= 3; i++) {
					page_html+="<a href='/info/show_news?page="+i+"'>"+i+"</a>";
				}
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/info/show_news?page="+i+"'>"+i+"</a>"
				if (totalpage>5) {
				page_html+="<span>...</span>";
				}
				page_html+="<a href='/info/show_news?page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if ((totalpage-cur_page)<=3) {
				page_html+="<a href='/info/show_news?page=1'>1</a>";
				page_html+="<span>...</span>";
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					if (cur_page==totalpage) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/info/show_news?page="+totalpage+"'>"+totalpage+"</a>"
					}
					else{
						page_html+="<a href='/info/show_news?page="+totalpage+"'>"+totalpage+"</a>";
					}
				}
			}
			else if ((totalpage-cur_page)==4) {
				page_html+="<a href='/info/show_news?page=1'>1</a>";
				page_html+="<span>...</span>";
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/info/show_news?page="+cur_page+"'>"+cur_page+"</a>"
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					page_html+="<a href='/info/show_news?page="+totalpage+"'>"+totalpage+"</a>";
				}
			}
			else{
				page_html+="<span>...</span>";
				cur_page--;
				for (var i = 0 ; i <= 2; i++) {
					if (i==1) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/info/show_news?page="+cur_page+"'>"+cur_page+"</a>"
					}
					else{
						page_html+="<a href='/info/show_news?page="+cur_page+"'>"+cur_page+"</a>";
					}
					cur_page++;
				}
				cur_page--;
				page_html+="<span>...</span>";
				page_html+="<a href='/info/show_news?page="+totalpage+"'>"+totalpage+"</a>";
			}
			if (totalpage!=0&&cur_page!=totalpage) {
				page_html+="<a href='/info/show_news?page="+next_page+"'>下一页</a>";
			};

			$(".page-box").html(page_html);
			
		});

</script>
</body>
</html>