<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>成都房地产经纪人_成都优秀经纪人推荐(成都易居网)</title>
        <link rel="stylesheet" href="/public/css/list.css">
        <link rel="stylesheet" href="/public/css/common.css">
        <link href="/public/css/reset.css" rel="stylesheet">
        <script src="/public/js/jquery-2.1.4.min.js"></script>
        <style type="text/css">
        /*分页样式*/
.page-box{
	background-color: #FFF;
	width: 952px;
	padding: 30px 0;
	text-align: center;
}
.page-box a{
	height: 30px;
	padding: 0 12px;
	margin-left: 5px;
	text-align: center;
	line-height: 30px;
	border:1px solid #b0b4b9;
	overflow: hidden;
	font-size: 12px;
	font-weight: 700;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	color: #555;
	display: inline-block;
	zoom:1;
	vertical-align: middle;
}
        </style>
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
			<h2 style="font-size:14px;">共有<span>${allAgentSize}</span>名经纪人</h2>
		</div>
		<div class="list-wrap">
			<ul class="agent-lst">
			<c:forEach var="agent" items="${agentList}" >
				<li class="">
					<div class="pic-panel">
						<a target="_blank" href="/agent/show_agent_detail?agentId=${agent.agentId}">
							
							<img onerror="this.src='http://static1.ljcdn.com/pc/asset/img/jingjiren/noimg.jpg?_v=20160819150834';" src="${agent.photoUrl}">
						</a>
					</div>
					<div class="info-panel">
						<div class="agent-name">
							<a target="_blank" href="/agent/show_agent_detail?agentId=${agent.agentId}">
								<h2>${agent.name}</h2>
							</a>
							<span class="position">经纪人</span>
							<a class="lianjiaim-createtalkAll" style="display: none;" title="在线咨询" data-role="lianjiaim-createtalk" data-ucid="1000000020147989"></a>
						</div>
						<div class="col-1">
							<div class="main-plate">
								<span class="mp-title">年龄:${agent.age}</span>
							
							</div>
						<div class="main-plate">
								<span class="mp-title">性别:${agent.sex}</span>
							
							</div>
							<div class="main-plate">
								<span class="mp-title">电子邮箱:${agent.email}</span>
							
							</div>
						<div class="main-plate">
								<span class="mp-title">公司:${agent.company}</span>
							
							</div>
							<div class="main-plate">
								<span class="mp-title">入职易居年份:${agent.year}</span>
							
							</div>
							<div class="label">
								<span class="good_comment_mark">销售达人</span>
								<span class="top_guider_mark">带看活跃</span>
							</div>
						</div>
						
						<div class="col-3">
							<p class="method">联系方式</p>
							<h2>${agent.phone}</h2>
							
							<p class="mobile_p"></p>
						</div>
						<div class="clear"></div>
					</div>
				</li>
			</c:forEach>
</ul>
		<div class="page-box">
				<a href="" class="on">1</a>
				<a href="/agent/show_agent?page=2">2</a>
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
		var page_html="";
		var cur_page="${currentPage}";
		var totalpage="${pageSize.intValue()}";
		var next_page="${currentPage+1}";
		var pre_page="${currentPage-1}";
		$(document).ready(function(){
			if (cur_page>1) {
				page_html+="<a href='/agent/show_agent?page="+pre_page+"'>上一页</a>";
			};
			if (totalpage<=3) {
				for (var i = 1 ; i <= totalpage; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent?page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent?page="+i+"'>"+i+"</a>";
					}
				}
			}
			else if(cur_page<=3){
				for (var i = 1 ; i <= 3; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent?page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent?page="+i+"'>"+i+"</a>";
					}
				}
				page_html+="<span>...</span>";
				page_html+="<a href='/agent/show_agent?page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if(cur_page==4){
				for (var i = 1 ; i <= 3; i++) {
					page_html+="<a href='/agent/show_agent?page="+i+"'>"+i+"</a>";
				}
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent?page="+i+"'>"+i+"</a>"
				if (totalpage>5) {
				page_html+="<span>...</span>";
				}
				page_html+="<a href='/agent/show_agent?page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if ((totalpage-cur_page)<=3) {
				page_html+="<a href='/agent/show_agent?page=1'>1</a>";
				page_html+="<span>...</span>";
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					if (cur_page==totalpage) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent?page="+totalpage+"'>"+totalpage+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent?page="+totalpage+"'>"+totalpage+"</a>";
					}
				}
			}
			else if ((totalpage-cur_page)==4) {
				page_html+="<a href='/agent/show_agent?page=1'>1</a>";
				page_html+="<span>...</span>";
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent?page="+cur_page+"'>"+cur_page+"</a>"
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					page_html+="<a href='/agent/show_agent?page="+totalpage+"'>"+totalpage+"</a>";
				}
			}
			else{
				page_html+="<span>...</span>";
				cur_page--;
				for (var i = 0 ; i <= 2; i++) {
					if (i==1) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent?page="+cur_page+"'>"+cur_page+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent?page="+cur_page+"'>"+cur_page+"</a>";
					}
					cur_page++;
				}
				cur_page--;
				page_html+="<span>...</span>";
				page_html+="<a href='/agent/show_agent?page="+totalpage+"'>"+totalpage+"</a>";
			}
			if (cur_page!=totalpage) {
				page_html+="<a href='/agent/show_agent?page="+next_page+"'>下一页</a>";
			};
			$(".page-box").html(page_html);
			
		});

</script>
</body>
</html>