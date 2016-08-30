<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" type="image/x-icon" href="http://lianjia.com/favicon.ico" />
	<link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link href="/public/css/style.css" rel="stylesheet">
	<link href="/public/css/reset.css" rel="stylesheet">
	<!--<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>-->
	<title>易居网络平台</title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
</head>
<body width= screen.width>
	<jsp:include page="/header.jsp"></jsp:include>
	<div class="intro"></div>
	<div class="wrapper">
		<!--标题行内容-->
		<div class="title-line">
			<div class="line01">
				<h1 class="title-box">${house.title}</h1>
			</div>
			<div class="view-label">
				<span class="span-discount">　满五年唯一　</span>
				<span class="span-visit">　随时看房　</span>
			</div>
		</div>
		<!--房屋信息区域-->
		<section class="panel-box panel-box-info clear">
			<!--相册相关信息-->
			<div class="album-box" id="album-box">
				<div id="myCarousel" class="carousel slide"> 
				   <!-- 轮播（Carousel）项目 -->
				   <div class="carousel-inner">
				   <div class="item active">
				         <img src="${house.houseViewUrl}" alt="slide">
				   </div>
				   <div class="item">
				         <img src="${house.houseTypeUrl}" alt="slide">
				   </div>
				   <c:forEach var="photo" items="${housePhotoList}" >
				   	 <div class="item">
				         <img src="${photo.photoUrl}" alt="slide">
				     </div>
				   </c:forEach>
				   </div>
				   <!-- 轮播（Carousel）导航 -->
				   <a class="carousel-control left" href="#myCarousel" 
				      data-slide="prev"><span>&lsaquo;</span></a>
				   <a class="carousel-control right" href="#myCarousel" 
				      data-slide="next"><span>&rsaquo;</span></a>
				   <!-- 轮播（Carousel）指标 -->
				   <div class="carousel-idc">
					   <ol class="carousel-indicators" id="">
					      <li data-target="#myCarousel" data-slide-to="0" class="active"><img src="${house.houseViewUrl}"></li>
					      <li data-target="#myCarousel" data-slide-to="1"><img src="${house.houseTypeUrl}"></li>
					      <c:forEach var="photo" items="${housePhotoList}"  varStatus="status">
						   	  <li data-target="#myCarousel" data-slide-to="${status.count+1}"><img src="${photo.photoUrl}"></li>
						   </c:forEach>
					   </ol>
				   </div> 
				</div>
			</div>
			<!--房屋相关信息-->
			<div class="info-box" id="info-box">
				<div class="desc-text">
					<dl>
						<dt>售价：</dt>
						<dd>
							<span class="em-text">
								<strong>${house.prize.intValue()}</strong>
								<span> 万</span>
								<i>/${house.area}㎡</i>
							</span>
						</dd>
						<c:if test="${!empty sessionScope.userSession }">
							<button class="btn btn-primary btn-collect">收藏</button>
						</c:if>
					</dl>
					<dl>
						<dt>单价：</dt>
						<dd class="short">${(house.prize/house.area*10000).intValue()} 元/平米</dd>
					</dl>
					<dl>
						<dt>首付：</dt>
						<dd class="short">${house.downPayment} 万</dd>
					</dl>
					<dl>
						<dt>月供：</dt>
						<dd class="short">${house.monthlyPayment.intValue()} 元</dd>
					</dl>
					<dl>
						<dt>户型：</dt>
						<dd>${house.roomAmount}室${house.livingroomAmount}厅</dd>
					</dl>
					<dl>
						<dt>朝向：</dt>
						<dd>${house.orientation}</dd>
					</dl>
					<dl>
						<dt>楼层：</dt>
						<dd>高楼层(共11层)</dd>
					</dl>
					<dl class="clear">
						<dt>小区：</dt>
						<dd>西郡香林五大花园</dd>
						<p>　</p>
						<span>${house.year}</span>
					</dl>
				</div>
				<div class="countact-panel">
					<span class="ft-num" title="${agent.phone}">${agent.phone}</span>
				</div>
			</div>
			<!--中介相关信息-->
			<div class="agent-box" id="agent-box">
				<div class="agent-info">
					<div class="agent-del">
						<a href="#">
							<img class="iframe-img" src="${agent.photoUrl}">
						</a>
					</div>
					<div class="p-del">
						<p class="p-01">
							<a href="">${agent.name}</a>
							<a href="" alt="在线咨询"><img src="/public/img/query.png"></a>
						</p>
						<p class="p-02">
							<span>店经理</span>
						</p>
						<p class="p-03">
							<span class="bold">年龄:</span>
							<span>${agent.age}</span>
						</p>
						<p class="p-04">
							<span class="bold">性别:</span>
							<span>${agent.sex}</span>
						</p>
					</div>
				</div>
				<div class="agent-comment">
					<div class="title">
						<h2>好评率</h2>
						<span><a href="">共28条评价</a></span>
					</div>
					<div class="content">
						<div class="comment-rate">
							<a href="#">80%</a>
						</div>
						<div class="comment-rate-detail">
							<p>
								<span class="comment-span">好评</span>
								<span class="comment-bar">
									<span class="fill-bar" style="width:80%;"></span>
								</span>
							</p>
							<p>
								<span class="comment-span">中评</span>
								<span class="comment-bar">
									<span class="fill-bar" style="width:15%;"></span>
								</span>
							</p>
							<p>
								<span class="comment-span">差评</span>
								<span class="comment-bar">
									<span class="fill-bar" style="width:5%;"></span>
								</span>
							</p>
						</div>
					</div>
				</div>
				<div class="promise">
					易居承诺
					<b>真实</b>
					在售房源
				</div>
				<div class="unic-label">
					<p class="bold">
						<span>房源编号：</span>
						<span>CDWH92292663</span>
					</p>
					<p class="unic-about">
						<span>
							<a href="#">了解真房源&nbsp;</a>
						</span>
						<span class="vote logined">
							<a href="#">举报</a>
						</span>
					</p>
				</div>
				<div></div>
			</div>
		</section>
		<section class="panel-box panel-box-content clear">
			<article class="content-main">
				<ul class="panel-tab" id="panel-tab">
					<li class="on">
						<a href="#detail-content">房源描述</a>
					</li>
					<li>
						<a href="#detail-album">房源图片</a>
					</li>
					<li>
						<a href="#house-map">周边配套</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="detail-content" id="detail-content">
						<div class="detail-title">
							<h3>房源描述</h3>
						</div>
						<div class="detail-contents">
							<div class="items">
								<div class="content">
									<h2>正读晋阳小学 内跃精装套三可改套四 带入户花园</h2>
									<p class="time">2016-08-05 20:18:49 更新</p>
									<p class="text-comment">
										<p></p>
									</p>
									<p class="text-comment-all" style="display:none">
										${house.houseDescribe}
									</p>
								</div>
								<div class="people">
									<h3>经纪人</h3>
									<div class="agent-info">
										<div class="agent-del">
											<a href="#">
												<img class="iframe-img" src="${agent.photoUrl}">
											</a>
										</div>
										<div class="p-del">
											<p class="p-01">
												<a href="">${agent.name}</a>
												<a href="" alt="在线咨询"><img src="/public/img/query.png"></a>
											</p>
											<p class="p-04">
												<span class="bold">年龄:</span>
												<span>${agent.age}</span>
											</p>
											<p class="p-05">
												<span class="bold">性别:</span>
												<span>${agent.sex}</span>
											</p>
										</div>
									</div>
									<p class="contactted">
									 ${agent.phone}
									</p>
								</div>
							</div>
						</div>
					</div>
					<div id="detail-album" class="detail-album">
						<div class="detail-title">
							<h3>房源图片</h3>
						</div>
						<div class="detail-album-box">
							<ul>
								<li class="actShowImg">
									<a href="${house.houseViewUrl}" style="cursor:pointer" data-toggle="modal" data-target="#show">
											<img src="${house.houseViewUrl}">
									</a>
								</li>
								<li class="actShowImg">
									<a href="${house.houseTypeUrl}" style="cursor:pointer" data-toggle="modal" data-target="#show">
											<img src="${house.houseTypeUrl}">
									</a>
								</li>
								<c:forEach var="photo" items="${housePhotoList}">
									<li class="actShowImg">
										<a href="${photo.photoUrl}" style="cursor:pointer" data-toggle="modal" data-target="#show">
											<img src="${photo.photoUrl}">
										</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div id="house-map">
						<div class="detail-title">
							<h3>周边配套</h3>
						</div>
						<div class="detail-map">
							<div id="allmap"></div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<div class="house-commend">
			<div class="detail-title">
				<h3>推荐楼盘</h3>
			</div>
			<div class="show-content">
				<ul>
				<c:forEach var="ad" items="${advertisementList}" >
					<li>
						<a class="pic" href="/house/house?id=${ad.houseId}">
							<img src="${ad.advertisementUrl}">
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
	<div class="modal fade" id="show" tabindex="-1" role="dialog" aria-labelledby="addTitle">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body" style="float:none;margin:0 auto">
                    <img src="/public/img/logo.jpg" style="width:80%;height:auto;float:none;margin-left:10%;">
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="/footer.jsp"></jsp:include>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=uDVWfbR5FdPofCih1zstBN3YQRyX8dLS"></script>
    <script type="text/javascript">
		// 百度地图API功能
		var map = new BMap.Map("allmap");    // 创建Map实例
		map.centerAndZoom("${house.province}"+"${house.city}"+"${house.town}"+"${house.zone}"+"${house.address}", 15);  // 初始化地图,设置中心点坐标和地图级别
		map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
		map.setCurrentCity("成都");          // 设置地图显示的城市 此项是必须设置的
		map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
		
		var s1="${house.houseDescribe}";
		$(document).ready(function(){
			  if(s1.length>160){
				  $(".text-comment").html(s1.substring(0,160)+"..."+"<span class='actShowMore'>阅读全部</span>");
			  }
			  else{
				  $(".text-comment").html(s1);
			  }
			  $(".actShowMore").click(function(){
				  $(".text-comment-all").show();
				  $(".actShowMore").hide();
				  $(".text-comment").hide();
			  });
			  $(".actShowImg a").unbind().click(function(){
			  	  var set_img = $(this).children('img').attr('src');
				  $("#show img").attr('src',set_img);
			  });
			  $(".btn-collect").click(function(){
				  $.post('/house/interest', {
               			id: "${house.houseId}",
            		}, function (res) {
		            },"json");
			  });
			});	
		
		function cutstr(str,len)
		{
		   var str_length = 0;
		   var str_len = 0;
		      str_cut = new String();
		      str_len = str.length;
		      for(var i = 0;i<str_len;i++)
		     {
		        a = str.charAt(i);
		        str_length++;
		        if(escape(a).length > 4)
		        {
		         //中文字符的长度经编码之后大于4
		         str_length++;
		         }
		         str_cut = str_cut.concat(a);
		         if(str_length>=len)
		         {
		         str_cut = str_cut.concat("...");
		         return str_cut;
		         }
		    }
		    //如果给定字符串小于指定长度，则返回源字符串；
		    if(str_length<len){
		     return  str;
		    }
		}
		
	</script>
</body>
</html>