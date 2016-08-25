<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>易居网_用户中心</title>
	<link href="../public/css/manager.css" rel="stylesheet">
	<link rel="stylesheet" href="../public/css/slimtable.css">
	<link rel="stylesheet" href="../public/css/userindex.css">
	<link rel="stylesheet" href="../public/css/reset.css">
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="shortcut icon" type="image/x-icon" href="#" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<header>
		<div class="nav-wrap">
			<div class="wrapper">
				<div class="fl">
					<a href="home.html" class="logo" title="易居网络平台" style="float:left;"></a>
					<span>易居二手房网上交易平台</span>
				</div>
				<div class="fr">
					<div class="login">
						<a href="user/register.html" style="display:none">
							<span class="log" style="display:none">注册</span>
						</a>
						<a href="user/register.html">
							<span class="log">${ sessionScope.userSession.name }</span>
						</a>
						|
						<a href="user/login" style="display:none">>
							<span class="user-reg">登录</span>
						</a>
						<a href="/user/logout">
							<span class="log">退出</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="user-main">
		<!--左侧导航-->
		<div class="tabbable">
			<div class="main-left fl">
				<div class="name" >
					<img src="../public/img/p3.png" style="border-radius:5px;width:100px;height:100px;"></img>
					<div class="user-name">欢迎你，用户1</div>
				</div>
				 <div class="tabbable"> 
					<ul class="">
						<li class="hover active">
							<a href="#tab1" data-toggle="tab" id="li_1">首页</a>
						</li>
						<li class="hover">
							<a href="#tab2" data-toggle="tab" id="li_2">个人信息</a>
						</li>
						<li class="hover">
							<a href="#tab3" data-toggle="tab" id="li_3">编辑资料</a>
						</li>
						<li class="hover">
							<a href="#tab4" data-toggle="tab" id="li_4">关注房源</a>
						</li>
						<li class="hover">
							<a href="#tab5" data-toggle="tab" id="li_5">关注小区</a>
						</li>
						<li class="hover">
							<a href="#tab6" data-toggle="tab" id="li_6">我的委托</a>
						</li>
						<li class="hover">
							<a href="#tab7" data-toggle="tab" id="li_7">我的评论</a>
						</li>

					</ul>
				</div>
			</div>

			<div class="tab-content">
				<!--首页-->
				<div class="main-right fr tab-pane active" id="tab1">
					<div class="allList">
					<div class="title">您关注的房源/小区最新动态</div>
					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab01" data-toggle="tab">全部</a></li>
							<li><a href="#tab02" data-toggle="tab">调价</a></li>
							<li><a href="#tab03" data-toggle="tab">上新</a></li>
						</ul>
						<div class="tab-content ">
							<div class="tab-pane active" id="tab01">
								<p>...</p>
							</div>
							<div class="tab-pane" id="tab02">
								<p>...</p>
							</div>
							<div class="tab-pane" id="tab03">
								<p>..</p>
							</div>
						</div>
					</div>
				</div>
				</div>
				<!--个人信息-->
				<div class="main-right fr tab-pane" id="tab2">
				<div class="title">
				个人信息</div>
				<div class="info_wrap">
					<ul>
						<li class="logo">
							<span class="info_title">当前头像:</span>
							<picturebox><img src="../public/img/p3.png" style="border-radius:5px;" ></img></picturebox>
						</li>
						<li>
							<span class="info_title" id="name">姓名:</span>
							<div class="info_c"><span>朱国栋</span></div>
						</li>
						<li>
							<span class="info_title">性别:</span>
							<div class="info_c"><span>男</span></div>
						</li>
						<li>
							<span class="info_title">生日:</span>
							<div class="info_c"><span>1994-10-28</span></div>
						</li>
						<li>
							<span class="info_title">居住地:</span>
							<div class="info_c"><span>郫县</span></div>
						</li>
						<li>
							<span class="info_title">注册日期：</span>
							<div class="info_c"><span>2008-10-20<span></div>
						</li>
						<li>
							<span class="info_title">发布房源数目:</span>
							<div class="info_c"><span class="redspan">22</span><span>套<span></div>
						</li>
						<li>
							<span class="info_title">在售套数:</span>
							<div class="info_c"><span class="redspan">22</span><span>套<span></div>
						</li>
						<li>
							<span class="info_title">已售套数:</span>
							<div class="info_c"><span class="redspan">22</span><span>套<span></div>
						</li>
						<li>
							<span class="info_title">出售率:</span>
							<div class="info_c"><span class="redspan">22%</span></div>
						</li>
					</ul>
				</div>
				</div>
				<!--编辑资料-->
				<div class="main-right fr tab-pane" id="tab3">
					<div class="title">我的账户信息</div>
				<!-- <div class="tab tabbable">
					<span class="hover actTap">上传头像</span>
					<span class="sitecms actTap ">修改昵称</span>
					<span class="actTap">修改密码</span>
				</div> -->
				    <div class="tabbable"> <!-- Only required for left/right tabs -->
				      <ul class="nav nav-tabs">
				        <li id="li1" class="active"><a href="#user_logo" data-toggle="tab" style="text-decoration:none;outline:none;">上传头像</a></li>
				        <li id="li2"><a href="#user_name" data-toggle="tab" style="text-decoration:none;outline:none;">修改昵称</a></li>
				        <li id="li3"><a href="#user_pwd" data-toggle="tab" style="text-decoration:none;outline:none;">修改密码</a></li>
				      </ul>
					  </div>

				<div class="uploader-demo"></div>
			<div class="tab-content">
				<!-- 1111111111111111111 -->
				<div class="tab-pane active" id="user_logo">
				<div id="updatePortrait" class="change-portrait">
					<!--存放item-->
					<div class="update">
						<!--改头像-->
				 	<h3>请选择图片文件：JPG/GIF</h3>
				 		<div class="uploadPic_wrap">
							<form name="form0" id="form0" >
								<div class="uploadPic_btn">选择图片</div>
								<div class="uploadPic_input" style="position:absolute;">
									<input type="file" name="file0" id="file0" multiple="multiple" /><br>
								 </div>
								 <div class="previewPic">
								 	<div class="picbox">
								 		<img src="http://static1.ljcdn.com/pc/asset/img/user/default-pic.png?_v=20160819150834" id="img0" >
								 	</div>
								 </div>
							</form>
						</div>
						<div class="clearfix"></div>
						<div class="suc">
							<span class="sucServer">确定</span>
						</div>
					</div>
				</div>
			</div>
				<!-- 222222-->
				<!--修改密码-->
					<div class="tab-pane" id="user_pwd">
						<form id="updatePwd" action="" method="post">
							<ul class="change-pwd">
								<li>
									<span>输入旧密码:</span>
									<input id="password" name="password" placeholder="请输入密码" validate="notNull,minLength" validatedata="minLength=6" validatename="密码" type="password" />
								</li>
								<li>
									<span>设置新密码:</span>
									<input id="password1" name="newPassword" placeholder="请输入新密码" validate="notNull,minLength" validatedata="minLength=6" validatename="密码" type="password"></input>
								</li>
								<li>
									<span>确认新密码：</span>
									<input placeholder="请输入新密码" validate="notNull,isSame" validatedata="isSame=#password1" validatename="确认新密码" type="password" />
								</li>
								<li>
									<span></span>
									<a class="actSubmit lj-btn">保存修改</a>
								</li>
							</ul>
						</form>
					</div>
				<!-- 33333-->
				<!--修改昵称-->
					<div class="tab-pane" id="user_name">
						<form id="updatePerson" action="" method="post">
							<ul class="change-pwd">
								<li>
									<span>设置昵称:</span>
									<input class="nickName" name="nickName" validate="notNull,numberLetter,maxLength" validatename="昵称" validatedata="maxLength=14" type="text"></input>
								</li>
								<li>
									<span></span>
									<a class="nameSubmit lj-btn">保存修改</a>
								</li>
							</ul>
						</form>
					</div>
				</div>
				</div>
				<!--关注房源-->
				<div class="main-right fr tab-pane hasList" id="tab4">
					<div class="title">
						我关注的房源
					</div>

					<div class="house_followlist">
						<div class="check_wrap">
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input id="table_search"type="text" class="form-control field" placeholder="请输入搜索条件">
									<button type="submit" class="btn btn-default" id="search-bt">搜索</button>
								</div>
							
							</form>
							<div class="check_list">
									<table id="table">
										<thead>
											<tr>
												<th>所属小区</th>
												<th>单位名称</th>
												<th>小区户型</th>
												<th>总价</th>
												<th>联系方式</th>
											</tr>
										</thead>
										<tr>
											<td>弘吉雅居</td>
											<td>4栋3单元</td>
											<td>一厅两房</td>
											<td>34万元</td>
											<td>137000000</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Eamon</td>
											<td>Jones</td>
											<td>26</td>
											<td>Example corp</td>
										</tr>
									</table>
										<script type="text/javascript">
										$(function() {
											$("#table").slimtable();
										});
										</script>
							</div>
						</div>
					</div>
				</div>
				<!--关注小区-->
				<div class="main-right fr tab-pane hasList" id="tab5">
					<div class="title">
						我关注的小区
					</div>
					<div class="vil_followlist">
						<div class="check_wrap">
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input id="table_searchfor2" type="text" class="form-control field" placeholder="请输入搜索条件">
									<button type="submit" class="btn btn-default" id="search-bt_2">搜索</button>
								</div>
							
							</form>
							<div class="check_list">
									<table id="table2">
										<thead>
											<tr>
												<th>ID</th>
												<th>First name</th>
												<th>Last name</th>
												<th>Age</th>
												<th>Company</th>
											</tr>
										</thead>
										<tr>
											<td>1</td>
											<td>Alisa</td>
											<td>Smith</td>
											<td>34</td>
											<td>Unemployed</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Eamon</td>
											<td>Jones</td>
											<td>26</td>
											<td>Example corp</td>
										</tr>
									</table>
										<script type="text/javascript">
										$(function() {
											$("#table2").slimtable();
										});
										</script>
							</div>
						</div>

					</div>
				</div>
				<!--我的委托-->
				<div class="main-right fr tab-pane" id="tab6">
					<div class="title">
						我的委托
					</div>
					<div class="entrust_list">
						<div class="check_wrap">
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input id="table_searchfor3" type="text" class="form-control field" placeholder="请输入搜索条件">
									<button type="submit" class="btn btn-default" id="search-bt_3">搜索</button>
								</div>
							
							</form>
							<div class="check_list">
									<table id="table3">
										<thead>
											<tr>
												<th>ID</th>
												<th>First name</th>
												<th>Last name</th>
												<th>Age</th>
												<th>Company</th>
											</tr>
										</thead>
										<tr>
											<td>1</td>
											<td>Alisa</td>
											<td>Smith</td>
											<td>34</td>
											<td>Unemployed</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Eamon</td>
											<td>Jones</td>
											<td>26</td>
											<td>Example corp</td>
										</tr>
									</table>
										<script type="text/javascript">
										$(function() {
											$("#table3").slimtable();
										});
										</script>
							</div>
						</div>
					</div>
				</div>
				<!--我的评论-->
				<div class="main-right fr tab-pane" id="tab7">
					<div class="title">
						我的评论
					</div>
					<div class="comment_list">
						<div class="check_wrap">
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input id="table_searchfor4" type="text" class="form-control field" placeholder="请输入搜索条件">
									<button type="submit" class="btn btn-default" id="search-bt_4">搜索</button>
								</div>
							
							</form>
							<div class="check_list">
									<table id="table4">
										<thead>
											<tr>
												<th>ID</th>
												<th>First name</th>
												<th>Last name</th>
												<th>Age</th>
												<th>Company</th>
											</tr>
										</thead>
										<tr>
											<td>1</td>
											<td>Alisa</td>
											<td>Smith</td>
											<td>34</td>
											<td>Unemployed</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Eamon</td>
											<td>Jones</td>
											<td>26</td>
											<td>Example corp</td>
										</tr>
									</table>
										<script type="text/javascript">
										$(function() {
											$("#table4").slimtable();
										});
										</script>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="clearfix"></div>
	</div>
	</div>
	<footer>
		<div class="wrapper">
			<div class="f-title">
				<div class="fl">
					<ul>
						<li>
							<a href="../company/index.html">了解易居网</a>
						</li>
						<li>
							<a href="../company/aboutUs.html">关于易居</a>
						</li>
						<li>
							<a href="../company/contact.html">联系我们</a>
						</li>
						<li>
							<a href="../company/joinUs.html">加入我们</a>
						</li>
						<li>
							<a href="../company/privacy.html">隐私声明</a>
						</li>
						<li>
							<a href="../broker/login.html">经纪人登录</a>
						</li>
						<li>
							<a href="../company/link.html">友情链接</a>
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
	
	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css"></script>
	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
	<script src="../public/js/manager.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../public/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="../public/js/slimtable.min.js"></script>
	<script type="text/javascript" src="../public/js/manager.min.js"></script>
</body>
</html>