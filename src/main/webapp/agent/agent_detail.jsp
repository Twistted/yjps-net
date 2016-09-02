<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="utf-8">
		<script src="../public/js/jquery-2.1.4.min.js"></script>
		
		<title>【${agent.name}_成都房产经纪人】${agent.name}电话${agent.phone}-易居网</title>
		
		<link rel="stylesheet" href="../public/css/detail.css">
		<link rel="stylesheet" href="../public/css/list.css">
		<link rel="stylesheet" href="../public/css/common.css">
		<link rel="stylesheet" href="../public/css/reset.css" >
</head>

	<body>
	<jsp:include page="/sub_header.jsp"></jsp:include>
		<div style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display: none;" id="BAIDU_DUP_fp_wrapper">
			<iframe style="width: 0px; height: 0px; visibility: hidden; display: none;" src="//pos.baidu.com/wh/o.htm?ltr=" id="BAIDU_DUP_fp_iframe"></iframe>
		</div>

<!-- 主体 -->
<div class="wrapper" style="float:left;width:100%;">
	<div class="main-box clear" style="float:none;margin:10px auto 0 auto;">
		<!--上-->
		<div class="center l_wrapper">
			<div class="agent_info con-box">
				<!--个人信息板块 -->
				<div class="info_head">
					<!--照片 -->
					<div class="pic_panel">
						<img onerror="this.src='http://static1.ljcdn.com/pc/asset/img/jingjiren/noimg.jpg?_v=20160825205117';" src="${agent.photoUrl}">
					
					</div>
					<!--信息 -->
					<div class="info-panel">
						<div class="agent-name" data-id="1">
							
								<h1>${agent.name}</h1>
							</a>
							<span class="position">经纪人</span>
							<a class="lianjiaim-createtalkAll" style="display: none;position: relative;top: 13px;left: 8px;" title="在线咨询" data-role="lianjiaim-createtalk" data-ucid="1000000020158402"></a>
						</div>
						<div class="col-1">
							<div class="main-plate">
								<span class="mp-title">所属公司:&nbsp;<i id="icon_pin"></i></span>
								<a data-coord="104.079983,30.682276" id="mapShow">
								<span>
								${agent.company}
								</span>
								</a>
							</div>
							<div class="achievement">
								<span>联系电话:&nbsp;&nbsp;${agent.phone}</span>
							</div>
							<div class="label">
							<span class="good_comment_mark">销售达人</span>
							<span class="top_guider_mark">带看活跃</span>
							</div>
						</div>
					</div>
				</div>
				<div class="info_bottom">
					<p><span class="congye">入职易居:&nbsp;&nbsp;${agent.year}年入职</span>
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span>年龄:&nbsp;&nbsp;${agent.age}</span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span>性别:&nbsp;&nbsp;<c:if test="${agent.sex==1}">男</c:if><c:if test="${agent.sex==2}">女</c:if><c:if test="${agent.sex!=1&&agent.sex!=2}">嬲</c:if></span>		
                    </p>
					<p>
        	            <span>电子邮箱:&nbsp;&nbsp;${agent.email}</span>
        	            	    
								&nbsp;&nbsp;
	                </p>
				</div>
			</div>
			<!--下 -->
			<div class="comment_tab con-box">
				<div class="tab">
					<ul class="tab-lst">

						<li  data-id="1" <!--id="p1" onclick="document.getElementById('q1').setAttribute('style', 'display:block');document.getElementById('q3').setAttribute('style', 'display:block');document.getElementById('q4').setAttribute('style', 'display:none');"-->
							<a>
								<span>&nbsp;&nbsp;概况&nbsp;&nbsp;</span>
							</a>
						</li>
						<!--<li  data-id="2" id="p2" onclick="document.getElementById('q1').setAttribute('style', 'display:none');document.getElementById('q3').setAttribute('style', 'display:none');document.getElementById('q4').setAttribute('style', 'display:block'); ">
							<a>
								<span>服务评价（1）</span>
							</a>
						</li>-->
				
						
				</ul>
					<!--自评模块 -->
				<div id="main_wrapper" class="mainWrapper">
					<div class="self_rating"  id="q1">
						<h2>经纪人自评</h2>
					<p class="text-comment-all" style="display: block;">${agent.introduction}
						
					</p>
					</div>
					
					<!--成交房源模块 -->
					<div class="house" id="q3">
						<h2>${agent.name}的成交房源</h2>
						<ul id="baseHouse_list" class="deal kuan">
						<c:forEach var="house" items="${houseList}" >
							<li class="house_l bs_house">
								<div class="info_head">
									<div class="pic_panel">
										<a target="_blank" href="/house/house?id=${house.houseId}">
											<img src="${house.houseViewUrl}">
										</a>
									</div>
									<div class="info-panel">
										<div class="agent-name">
											<h2><a target="_blank" title="${house.title}" href="/house/house?id=${house.houseId}">${house.title}</a>
												
											</h2>
										</div>
										<div class="col-1">
											<div class="main-plate">
												<p>朝向：${house.orientation} / ${house.year}年建楼</p>
											</div>
											<div class="achievement">
												<p title="双眼井小学 &nbsp;距离1号线人民北路站1027米">
													<span class="view-label">
														<span>独家&nbsp;</span>
														<span>随时看房&nbsp;</span>
													</span>
												</p>
											</div>
											<div class="label">
												<p>${house.area}㎡</p>
											</div>
										</div>
									</div>
									<div class="col-2">
										<p>单价&nbsp;<span>${(house.prize/house.area*10000).intValue()}</span>&nbsp;元/平</p>
										<p>总价&nbsp;<span>${house.prize.intValue()}万</span></p>
									</div>
								</div>
								<div class="transaction">
									<p><span>房源简介：</span>${fn:substring(house.houseDescribe,0,160)}...</p>
								</div>
							</li>
						</c:forEach>
						<div class="page-box">
						<a href="" class="on">1</a>
						<a href="/agent/show_agent_detail?agentId=${agent.agentId}&page=2">2</a>
						<a href="">3</a>
						<span>...</span>
						<a href="">100</a>
						<a href="">下一页</a>
					</div>
						</ul>
						
					</div>
					</div>
					<!--客户评价模块 -->
					<div class="comment" id="q4" style="display: none">
						<div class="title">
							<h2>客户评价<a target="_blank" href="http://user.lianjia.com/site/history/">我要评价</a></h2>
						</div>
						
						<div class="comment_content">
							<ul style="height: 100px;" id="comment_list">
								<li class="com_list" pan="-1">
									<div class="pingjia">
										<div class="pic">
											<div class="combImg" pan="2016-08-25 22:06:43"></div>
											<h2>买房人</h2>
											<h3 class="selusername" pan="2000000005826027">(静***流)</h3>
										</div>
										<div class="type">
											<h1>带看</h1>
										</div>
									</div>
									<div class="pingjiac">
										<div class="content">
											<div class="c_title">
												<span>服务态度</span>
												<div class="star-percent actSlider">
													<div class="star-per"></div>
													<div class="star-bg" style="width:100%"></div>
													<input class="serviceS" name="score" value="5" type="hidden">
												</div>
												<span>专业技能</span>
												<div class="star-percent actSlider">
													<div class="star-per"></div>
													<div class="star-bg" style="width:100%"></div>
													<input class="skillS" name="score" value="5" type="hidden"></div>
													<span class="date">2016.08.25</span>
											</div>
											<p>专业热情</p>
										</div>
										<div class="fold_c">
											<span style="display: none;" class="fold_p">展开更多评价</span>
										</div>
									</div>
								</li>
					</ul>
					
						</div>
					</div>
					<div style="display: none;" class="pager" id="pager" pany="1">
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
		
		
 <jsp:include page="/footer.jsp"></jsp:include>
<script type="text/javascript">
		var page_html="";
		var cur_page="${currentPage}";

		var totalpage="${pageSize.intValue()}";
		var next_page="${currentPage+1}";
		var pre_page="${currentPage-1}";
		$(document).ready(function(){
			if (cur_page>1) {
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+pre_page+"'>上一页</a>";
			};
			if (totalpage<=3) {
				for (var i = 1 ; i <= totalpage; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+i+"'>"+i+"</a>";
					}
				}
			}
			else if(cur_page<=3){
				for (var i = 1 ; i <= 3; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+i+"'>"+i+"</a>";
					}
				}
				page_html+="<span>...</span>";
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if(cur_page==4){
				for (var i = 1 ; i <= 3; i++) {
					page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+i+"'>"+i+"</a>";
				}
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+i+"'>"+i+"</a>"
				if (totalpage>5) {
				page_html+="<span>...</span>";
				}
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if ((totalpage-cur_page)<=3) {
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page=1'>1</a>";
				page_html+="<span>...</span>";
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					if (cur_page==totalpage) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+totalpage+"'>"+totalpage+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+totalpage+"'>"+totalpage+"</a>";
					}
				}
			}
			else if ((totalpage-cur_page)==4) {
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page=1'>1</a>";
				page_html+="<span>...</span>";
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+cur_page+"'>"+cur_page+"</a>"
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+totalpage+"'>"+totalpage+"</a>";
				}
			}
			else{
				page_html+="<span>...</span>";
				cur_page--;
				for (var i = 0 ; i <= 2; i++) {
					if (i==1) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+cur_page+"'>"+cur_page+"</a>"
					}
					else{
						page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+cur_page+"'>"+cur_page+"</a>";
					}
					cur_page++;
				}
				cur_page--;
				page_html+="<span>...</span>";
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+totalpage+"'>"+totalpage+"</a>";
			}
			if (totalpage!=0&&cur_page!=totalpage) {
				page_html+="<a href='/agent/show_agent_detail?agentId=${agent.agentId}&page="+next_page+"'>下一页</a>";
			};
			$(".page-box").html(page_html);
			
		});

</script>

</body>
</html>