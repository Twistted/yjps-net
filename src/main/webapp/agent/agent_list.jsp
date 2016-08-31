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
			<h2 style="font-size:14px;">共有<span>1</span>名经纪人</h2>
		</div>
		<div class="list-wrap">
			<ul class="agent-lst">
			
				<li class="">
					<div class="pic-panel">
						<a target="_blank" href="  ">
							
							<img onerror="this.src='http://static1.ljcdn.com/pc/asset/img/jingjiren/noimg.jpg?_v=20160819150834';" src="img/tu11.png">
						</a>
					</div>
					<div class="info-panel">
						<div class="agent-name">
							<a target="_blank" href="agent.html">
								<h2>果冻</h2>
							</a>
							<span class="position">高级经纪人</span>
							<a class="lianjiaim-createtalkAll" style="display: none;" title="在线咨询" data-role="lianjiaim-createtalk" data-ucid="1000000020147989"></a>
						</div>
						<div class="col-1">
							<div class="main-plate">
								<span class="mp-title">主营板块:&nbsp;&nbsp;</span>
								<span><a target="_blank" href=" ">锦江&nbsp;</a>
									<a target="_blank" href="  ">西南财大</a>&nbsp;&nbsp;&nbsp;
								</span>
							</div>
							<div class="achievement">
								<a target="_blank" href=" ">
									<span>历史成交9套</span>,&nbsp;
								</a>
								<a target="_blank" href=" ">
									<span>独家委托1套</span>,&nbsp;
								</a>
								<span>最近30天带看22次</span>
							</div>
							<div class="label">
								<span class="good_comment_mark">客户热评</span>
								<span class="top_guider_mark">带看活跃</span>
							</div>
						</div>
						<div class="col-2">
							<div class="high-praise">好评率<span class="num">100%</span>
								
							</div>
							<div class="comment-num">
								<a target="_blank" >评论1条</a>
							</div>
						</div>
						<div class="col-3">
							<h2>40055555222转2650</h2>
							<p class="method">联系方式</p>
							<p class="mobile_p"></p>
						</div>
						<div class="clear"></div>
					</div>
				</li>
				<div class="page-box house-lst-page-box" comp-module="page" page-url="/jingjiren/pg{page}/" page-data="{&quot;totalPage&quot;:5,&quot;curPage&quot;:1}">
					<a class="on" href="/jingjiren/" data-page="1">1</a>
					<a href="/jingjiren/pg2/" data-page="2">2</a>
					<a href="/jingjiren/pg3/" data-page="3">3</a>
					<span>...</span>
					<a href="/jingjiren/pg5/" data-page="5">5</a>
					<a href="/jingjiren/pg2/" data-page="2">下一页</a></div>


</ul>
		</div>
	</div>
</div>
</div>

<!--尾部-->
	   <jsp:include page="/footer.jsp"></jsp:include>
<script type="text/javascript">
	console.log("${agentList}");
	console.log("${pageSize}");
	console.log("${currentPage}");
	console.log("${listSize}");
</script>
</body>
</html>