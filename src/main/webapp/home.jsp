<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <title>二手房电子商务交易平台</title>
   <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
   <link rel="shortcut icon" type="image/x-icon" href="http://lianjia.com/favicon.ico" />
   <link href="/public/css/sh-house-css.css" rel="stylesheet">
   <link href="/public/css/reset.css" rel="stylesheet">
   
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <script src="/public/js/jquery-2.1.4.min.js"></script>
   <link rel="stylesheet" href="/public/css/xcConfirm.css" />
	<script src="/public/js/xcConfirm.js"></script>
</head>
<body>
	<!--导航-->
	<jsp:include page="/header.jsp"></jsp:include>

	<!--中间列表部分-->
	<div class="contain">
		<div class="con-box">
			<div class="list-head clear">
				<h2>
					共有
					<span>${allHouseSize}</span>
					套二手房房源
				</h2>
				<div class="view-type">
					
					<div class="modeshows">
						<span id="lshow" class="l-show view-mod  onshow" data-type="real">
							<i></i>
							实景图模型
						</span>
					</div>
					<div class="modeshows">
						<span id="hshow" class="h-show view-mod" data-type="layout">
							<i></i>
							户型图模型
						</span>
						<label class="ico ico-new"></label>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="list-wrap">
			<ul id="house-1st" class="house-1st" data-bl="list">
				<c:if test="${!empty houseList }">
					<c:forEach var="house" items="${houseList}" >
						<li data-index="0" data-log-index="1" data-id="a0000001">
							<div class="pic-panel">
								<a href="/house/house?id=${house.houseId}" data-el="ershoufang" rel="nofollow">
									<img class="lj-lazy" src="${house.houseViewUrl}" alt="pic1" style="display:inline;"></img>
								</a>
							</div>
							<div class="info-panel">
								<h2>
									<a href="/house/house?id=${house.houseId}" data-el="ershoufang" title="${house.title}">${house.title}</a>
								</h2>
								<div class="col-1">
									<div class="where">
										<span class="">
											<span>${house.roomAmount}室${house.livingroomAmount}厅</span>
										</span>
										<span class="">${house.area}平</span>
									</div>
									<div class="other">
										<div class="con">
										朝向：${house.orientation}
										<span>/</span>
											${house.year}年建楼
										</div>
									</div>
									<div class="chanquan">
										<div class="left agency">
											 
												<div class="view-label left">
													<span class="fang05"></span>
													<span class="fang05-ex">
														<span>金阳小学</span>
													</span>
													<span class="taxfree"></span>
													<span class="taxfree-ex">
														<span>满五年唯一</span>
													</span>
													<span class="unique"></span>
													<span class="unique-ex">
														<span>独家</span>
													</span>
													<span class="haskey"></span>
													<span class="haskey-ex">
														<span>随时看房</span>
													</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-3">
									<div class="price">
										<span class="num">${house.prize.intValue()}</span>
										万
									</div>
									<div class="price-pre">${(house.prize/house.area*10000).intValue()}元/m2</div>
								</div>
								<div class="col-2">
									<div class="square">
										<div>
											<span class="num"></span>
											人
										</div>
										<div class="col-look">关注此房</div>
									</div>
								</div>
								
						</div>
					</c:forEach>
				</c:if>
			</ul>
			<div class="page-box">
				<a href="" class="on">1</a>
				<a href="/home/index?page=2">2</a>
				<a href="">3</a>
				<span>...</span>
				<a href="">100</a>
				<a href="">下一页</a>
			</div>
		</div>
		<div class="house-commend">
			<div class="detail-title">
				<h3>推荐楼盘</h3>
			</div>
			<div class="show-content">
				<ul>
				<c:forEach var="ad" items="${advertisementList}" >
					<li>
						<a class="pic" href="/house/house?id=${ad.houseId}">
							<img src="${ad.advertisementUrl}"  style="height:173x;width:225px;overflow:hidden;">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="${ad.title}">${ad.title}</span>
							</div>
						</a>
						<p class="price">
							<span class="average">价格：<span>${ad.price}</span>万元</span>
						</p>
						<p class="area"></p>
					</li>
				</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!--最后-->
	<jsp:include page="/footer.jsp"></jsp:include>
	
	<script>
		var page_html="";
		var cur_page="${currentPage}";
		var totalpage="${pageSize.intValue()}";
		var next_page="${currentPage+1}";
		var pre_page="${currentPage-1}";
		$(document).ready(function(){
				$(".square .num:eq(0)").html("${interestList[0]}");
				$(".square .num:eq(1)").html("${interestList[1]}");
				$(".square .num:eq(2)").html("${interestList[2]}");

			if (cur_page>1) {
				page_html+="<a href='/home/index?page="+pre_page+"'>上一页</a>";
			};
			if (totalpage<=3) {
				for (var i = 1 ; i <= totalpage; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/home/index?page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/home/index?page="+i+"'>"+i+"</a>";
					}
				}
			}
			else if(cur_page<=3){
				for (var i = 1 ; i <= 3; i++) {
					if (i==cur_page) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/home/index?page="+i+"'>"+i+"</a>"
					}
					else{
						page_html+="<a href='/home/index?page="+i+"'>"+i+"</a>";
					}
				}
				page_html+="<span>...</span>";
				page_html+="<a href='/home/index?page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if(cur_page==4){
				for (var i = 1 ; i <= 3; i++) {
					page_html+="<a href='/home/index?page="+i+"'>"+i+"</a>";
				}
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/home/index?page="+i+"'>"+i+"</a>"
				if (totalpage>5) {
				page_html+="<span>...</span>";
				}
				page_html+="<a href='/home/index?page="+totalpage+"'>"+totalpage+"</a>";
			}
			else if ((totalpage-cur_page)<=3) {
				page_html+="<a href='/home/index?page=1'>1</a>";
				page_html+="<span>...</span>";
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					if (cur_page==totalpage) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/home/index?page="+totalpage+"'>"+totalpage+"</a>"
					}
					else{
						page_html+="<a href='/home/index?page="+totalpage+"'>"+totalpage+"</a>";
					}
				}
			}
			else if ((totalpage-cur_page)==4) {
				page_html+="<a href='/home/index?page=1'>1</a>";
				page_html+="<span>...</span>";
				page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/home/index?page="+cur_page+"'>"+cur_page+"</a>"
				totalpage-=3;
				for (var i = 1 ; i <= 3; i++) {
					totalpage++;
					page_html+="<a href='/home/index?page="+totalpage+"'>"+totalpage+"</a>";
				}
			}
			else{
				page_html+="<span>...</span>";
				cur_page--;
				for (var i = 0 ; i <= 2; i++) {
					if (i==1) {
						page_html+="<a style='font-weight: bold;text-decoration: none;cursor: default;color: #39ac6a;border-color: #39ac6a;' href='/home/index?page="+cur_page+"'>"+cur_page+"</a>"
					}
					else{
						page_html+="<a href='/home/index?page="+cur_page+"'>"+cur_page+"</a>";
					}
					cur_page++;
				}
				cur_page--;
				page_html+="<span>...</span>";
				page_html+="<a href='/home/index?page="+totalpage+"'>"+totalpage+"</a>";
			}
			if (totalpage!=0&&cur_page!=totalpage) {
				page_html+="<a href='/home/index?page="+next_page+"'>下一页</a>";
			};
			page_html+='<input type="search" id="jump_input" style="width:40px;"><input type="submit" value="跳转"  id="jump_btn" class="btn" style="padding-top:0;padding-bottom:0;background-color:#fff;color:#555;border-color:#b0b4b9;" onclick="jump();">';
			$(".page-box").html(page_html);
			
		});

		$("#hshow").click(function(){
				$("#hshow").addClass("onshow");
				$("#lshow").removeClass("onshow");
				$(".lj-lazy:eq(0)").attr("src","${houseList[0].houseTypeUrl}");
				$(".lj-lazy:eq(1)").attr("src","${houseList[1].houseTypeUrl}");
				$(".lj-lazy:eq(2)").attr("src","${houseList[2].houseTypeUrl}");
		});
		$("#lshow").click(function(){
				$("#lshow").addClass("onshow");
				$("#hshow").removeClass("onshow");
				$(".lj-lazy:eq(0)").attr("src","${houseList[0].houseViewUrl}");
				$(".lj-lazy:eq(1)").attr("src","${houseList[1].houseViewUrl}");
				$(".lj-lazy:eq(2)").attr("src","${houseList[2].houseViewUrl}");
		});
		var jump = function(){
				var cpage = $('#jump_input').val();
				if (cpage=="") {
					var txt = "请输入页码";
            	window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
				}
				else if (cpage<=totalpage) {
                window.location.href="/home/index?page="+cpage;
	            }
	            else
	            {
	            	var txt = "页码超出范围";
            	window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
	            }
		};
	</script>
</body>
</html>