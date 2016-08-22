<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
	<header>
		<div class="nav-wrap"   ></div>
	</header>
	<div class="searchs">
		<div class="search-area">
			<form>
				<div class="search-txt">
					<input class="left txt autoSuggest" name="keyword" autoComplete="off" placeholder="请输入区域、商圈或小区名开始找房" id="keyword-box">
					<button type="submit" data-bl="search" data-el="search" target="_blank" class="btn ico-search act-search">搜索</button>
				</div>
			</form>
		</div>
	</div>
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
				         <img src="/public/img/house00.jpg" alt="First slide">
				      </div>
				      <div class="item">
				         <img src="/public/img/house01.jpg" alt="Second slide">
				      </div>
				      <div class="item">
				         <img src="/public/img/house02.jpg" alt="Third slide">
				      </div>
				      <div class="item">
				         <img src="/public/img/house03.jpg" alt="Third slide">
				      </div>
				      <div class="item">
				         <img src="/public/img/house04.jpg" alt="Third slide">
				      </div>
				   </div>
				   <!-- 轮播（Carousel）导航 -->
				   <a class="carousel-control left" href="#myCarousel" 
				      data-slide="prev"><span>&lsaquo;</span></a>
				   <a class="carousel-control right" href="#myCarousel" 
				      data-slide="next"><span>&rsaquo;</span></a>
				   <!-- 轮播（Carousel）指标 -->
				   <div class="carousel-idc">
					   <ol class="carousel-indicators" id="">
					      <li data-target="#myCarousel" data-slide-to="0" class="active"><img src="/public/img/house00.jpg"></li>
					      <li data-target="#myCarousel" data-slide-to="1"><img src="/public/img/house01.jpg"></li>
					      <li data-target="#myCarousel" data-slide-to="2"><img src="/public/img/house02.jpg"></li>
					      <li data-target="#myCarousel" data-slide-to="3"><img src="/public/img/house03.jpg"></li>
					      <li data-target="#myCarousel" data-slide-to="4"><img src="/public/img/house04.jpg"></li>
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
						<dd>南</dd>
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
					<img src="/public/img/PhoneNum.png">
				</div>
			</div>
			<!--中介相关信息-->
			<div class="agent-box" id="agent-box">
				<div class="agent-info">
					<div class="agent-del">
						<a href="#">
							<img class="iframe-img" src="/public/img/agent.jpg">
						</a>
					</div>
					<div class="p-del">
						<p class="p-01">
							<a href="">杜千</a>
							<a href="" alt="在线咨询"><img src="/public/img/query.png"></a>
						</p>
						<p class="p-02">
							<span>店经理</span>
						</p>
						<p class="p-03">
							<span class="bold">从业年限:</span>
							<span>2-3年</span>
						</p>
						<p class="p-04">
							<span class="bold">月总带看:</span>
							<span>19次</span>
						</p>
					</div>
				</div>
				<div class="agent-comment"></div>
				<div class="promise"></div>
				<div class="unic-label"></div>
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
										${house.houseDescribe}
										<span class="actShowMore">阅读全部</span>
									</p>
									<p class="text-comment-all" style="display:none">
										<br>
										特别提醒：诚心出售！
										<br>
										1.房子我看过很多次了，户型是内跃套二带两个书房，可改套三。
										<br>
										2.进门有一个入户花园，可以摆一个很大的鞋柜，还可以放一些盆栽的绿色植物，视野看起来非常开阔。
										<br>
										3.入户花园推拉门进去是客厅，右手边是厨房和卫生间，厨房是拉长型的，空间挺大，而且明亮带生活阳台；左手边是卧室，对着卧室的是一个书房，也可以作为另外一个卧室；
										<br>
										4.两卧室中间的楼梯上去是二楼，二楼是一个很大的主卧，带独立的卫生间。旁边有一个小书房，左边门打开出去是十多个平方的屋顶花园，可以在上面远眺看书喝茶，夏天可以纳凉看星星，冬天可以享受日光浴。
										<br>
										<br>
										房源描述： 
										<br>
										房屋卖点：精装套二，带入户花园，顶楼带平台花园，临近地铁7号线
										<br>
										户型：内跃套二，带一个书房、一个储物间，可改套三，一厨两卫，带入户花园，带屋顶花园
										<br>
										朝向：坐东朝西
										<br>
										装修：精装，拎包入住 
										<br>
										学区：有名额、可落户。可上学校：成都市晋阳小学
										<br>
										税费：房子满五唯一，没有增值税和个税。契税按实际情况缴纳
										<br>
										看房：房屋空置，有钥匙，随时可看
										<br>
										小区介绍：
										<br>
										地理位置：武侯区中央花园晋阳路215号
										<br>
										总建面：39507平方米（中型小区）
										<br>
										开发商：汉派实业
										<br>
										物业公司：好人家
										<br>
										物业费用：1.6元/平米·月
										<br>
										容积率：3.4
										<br>
										绿化率：30%（绿化率高）
										<br>
										其他：小区总共有3栋，一栋有5个单元；二栋有2个单元；三栋有3个单元。电梯11楼到顶
										小区里面带游泳池，带小孩娱乐设备，有地下停车场
										<br>
									</p>
								</div>
								<div class="people">
									<h3>经纪人</h3>
									<div class="agent-info">
										<div class="agent-del">
											<a href="#">
												<img class="iframe-img" src="/public/img/agent.jpg">
											</a>
										</div>
										<div class="p-del">
											<p class="p-01">
												<a href="">杜千</a>
												<a href="" alt="在线咨询"><img src="/public/img/query.png"></a>
											</p>
											<p class="p-04">
												<span class="bold">月总带看:</span>
												<span>19次</span>
											</p>
											<p class="p-05">
												<span class="bold">好评率:</span>
												<span>100%</span>
											</p>
										</div>
									</div>
								</div>
								<p class="contactted">
									 4008752017转3695
								</p>
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
									<a href="/public/img/house03.jpg">
										<img src="/public/img/house03.jpg">
									</a>
								</li>
								<li class="actShowImg">
									<a href="/public/img/house00.jpg">
										<img src="/public/img/house00.jpg">
									</a>
								</li>
								<li class="actShowImg">
									<a href="/public/img/house01.jpg">
										<img src="/public/img/house01.jpg">
									</a>
								</li>
								<li class="actShowImg">
									<a href="/public/img/house02.jpg">
										<img src="/public/img/house02.jpg">
									</a>
								</li>
							</ul>
							<div>
								<a href="#"><span class="sub-text" id="btn-expand-album" href="#">查看更多图片>></span></a>
							</div>
							<ul class="album-more" style="display:none">
								<li class="actShowImg">
									<a href="/public/img/house04.jpg">
										<img src="/public/img/house04.jpg">
									</a>
								</li>
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
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<footer>
		<div class="wrapper">
			<div class="f-title">
				<div class="fl">
					<ul>
						<li>
							<a href="#">了解易居网</a>
						</li>
						<li>
							<a href="#">关于易居</a>
						</li>
						<li>
							<a href="#">联系我们</a>
						</li>
						<li>
							<a href="#">加入我们</a>
						</li>
						<li>
							<a href="#">隐私声明</a>
						</li>
						<li>
							<a href="#">经纪人登录</a>
						</li>
						<li>
							<a href="#">友情链接</a>
						</li>
					</ul>
				</div>
				<div class="fr">官方客服 1010 9666</div>
			</div>
			<div class="bottom">
				<div class="copyright">北京易居房地产经纪有限公司 | 网络经营许可证 京ICP备11024601号-12 | © Copyright©2010-2016 链家网Lianjia.com版权所有</div>
			</div>
		</div>
	</footer>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=uDVWfbR5FdPofCih1zstBN3YQRyX8dLS"></script>
    <script type="text/javascript">
		// 百度地图API功能
		var map = new BMap.Map("allmap");    // 创建Map实例
		map.centerAndZoom("成都郫县德源镇", 15);  // 初始化地图,设置中心点坐标和地图级别
		map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
		map.setCurrentCity("成都");          // 设置地图显示的城市 此项是必须设置的
		map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	</script>
</body>
</html>