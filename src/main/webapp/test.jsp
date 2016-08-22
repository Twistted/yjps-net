<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <title>二手房电子商务交易平台</title>
   	<link rel="shortcut icon" type="image/x-icon" href="http://lianjia.com/favicon.ico" />
   	 <link href="/public/css/sh-house-css.css" rel="stylesheet">
   	 <link href="/public/css/reset.css" rel="stylesheet">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <script src="jquery-3.1.0.min.js"></script>
<script>
	$(document).ready(function(){
		$("")
	});
</script>
</head>
<body>
	<!--导航-->
		<header>
		<div class="nav-wrap"></div>
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

	<!--中间列表部分-->
	<div class="contain">
		<div class="con-box">
			<div class="list-head clear">
				<h2>
					共有
					<span>0</span>
					套二手房房源
				</h2>
				<div class="view-type">
					
					<div class="modeshows">
						<span id="lshow" class="l-show view-mod" data-type="real">
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
				<li data-index="0" data-log-index="1" data-id="a0000001">
					<div class="pic-panel">
						<a target="_blank" href="#" data-el="ershoufang" rel="nofollow">
							<img class="lj-lazy" src="http://image1.ljcdn.com/approl/group3/M00/14/88/rBAF7VdNi0OAB9GwAACemQLD8oA831.jpg.280x210.jpg" alt="pic1" style="display:inline;"></img>
						</a>
					</div>
					<div class="info-panel">
						<h2>
							<a target="_blank" href="#" data-el="ershoufang" title="碧桂园稀缺内跃带双花园，套三环变套四，08年电梯">碧桂园稀缺内跃带双花园，套三环变套四，08年电梯</a>
						</h2>
						<div class="col-1">
							<div class="where">
								<a class="laisuzhou" href="#" data-el="xiaoqu">
									<span class="">弘吉雅居</span>
								</a>
								<span class="">
									<span>3室2厅</span>
								</span>
								<span class="">98.24平</span>
								<span>南</span>
							</div>
							<div class="other">
								<div class="con">
									<a href="#" data-el="region">五大花园二手房</a>
									<span>/</span>
									高楼层(共11层)
									<span>/</span>
									2006年建板楼
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
								<span class="num">110</span>
								万
							</div>
							<div class="price-pre">111198元/m2</div>
						</div>
						<div class="col-2">
							<div class="square">
								<div>
									<span class="num">82</span>
									人
								</div>
								<div class="col-look">看过此房</div>
							</div>
						</div>
						
				</li>
			</ul>
		</div>
	</div>
	<!--最后-->
		<footer class="footer" >
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
		


</body>
</html>