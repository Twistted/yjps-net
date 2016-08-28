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
					<div class="user-name"><span>欢迎你<span><br /><span id="span_username">用户1</span></div>
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
							<div class="info_c"><span class="user_name">${sessionScope.userSession.name}</span></div>
						</li>
						<li>
							<span class="info_title">性别:</span>
							<div class="info_c"><span class="user_sex">${sessionScope.userSession.sex}</span></div>
						</li>
						<li>
							<span class="info_title">年龄:</span>
							<div class="info_c"><span class="user_age">${sessionScope.userSession.age}<span></div>
						</li>
						<li>
							<span class="info_title">注册日期：</span>
							<div class="info_c"><span class="user_date"> <span></div>
						</li>
						<li>
							<span class="info_title">联系方式:</span>
							<div class="info_c"><span class="user_contact">${sessionScope.userSession.contact}<span></div>
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
				        <li id="li4"><a href="#user_personalInfo" data-toggle="tab" style="text-decoration:none;outline:none;">修改个人信息</a></li>
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
									<input id="password_1" name="newPassword" placeholder="请输入新密码" validate="notNull,minLength" validatedata="minLength=6" validatename="密码" type="password"></input>
								</li>
								<li>
									<span>确认新密码：</span>
									<input id="password_2" placeholder="请输入新密码" validate="notNull,isSame" validatedata="isSame=#password1" validatename="确认新密码" type="password" />
								</li>
								<li>
									<span></span>
									<a class="user_pwd_btn actSubmit lj-btn">保存修改</a>
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
						<!--个人信息修改-->
					<div class="tab-pane" id="user_personalInfo">
						<div class="personalInfo_wrap user_personalInfo_wrap">
							<form id="updateInfo" action="agent/modify_agent" method="post">
								<ul>
									<li>
										<span class="info_title">姓名:</span>
										<input type="text" id="username" name="name" class="form-control" /> 
									</li>
									<li>
										<span class="info_title">性别:</span>
										<div class="checkbox">
											<input class="radioInput" name="sex" value="1" checked="checked" type="radio"></input>
											<span class="chosespan">男</span>
											<input class="radioInput" name="sex" value="2" checked="checked" type="radio"></input>
											<span class="chosespan">女</span>
										</div>
									</li>
									<li>
										<span class="info_title">年龄:</span>
										<input type="text" id="age" name="age" class="form-control" />
										 
									</li>
									<li>
										<span class="info_title">电话:</span>
										<input type="text" id="phone" name="contact" class="form-control" />
									</li>
									<li>
										<span class="info_title" style="margin-left:-28px;">注册时间:</span>
										<input type="text" id="timestamp" name="timestamp" class="form-control" style="margin-left:30px;" />
							 		</li>
								</ul>
							</form>
							<div class="ok-btn">
								<a class="lj-btn" >提交</a>
							</div> 
						</div>
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
							<div class="form-group"  style="display:block;">
								<input id="table_search"type="text" class="form-control field" placeholder="请输入搜索条件" style="width:300px;display:inline-block;">
								<button type="submit" class="btn btn-default" id="search-bt">搜索</button>
							</div>
							<div class="check_list">
								<table id="fol_houstList" style="display:block;">
									<thead>
										<tr>
											<th style="width:100px;">房源编号</th>
											<th style="width:250px;">小区名称</th>
											<th style="width:200px;">小区户型</th>
											<th style="width:100px;">首付</th>
											<th style="width:150px;">总价</th>
											<th style="width:100px;">操作</th>
										</tr>
									</thead>
									<tbody>										 
									</tbody>
								</table>
								<div class="page" id="fol_houseList_page"></div>
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
							<div class="form-group"  style="display:block;">
								<input id="table_search"type="text" class="form-control field" placeholder="请输入搜索条件" style="width:300px;display:inline-block;">
								<button type="submit" class="btn btn-default" id="search-bt">搜索</button>
							</div>
							<div class="check_list">
								<table id="fol_vilList" style="display:block;">
									<thead>
										<tr>
											<th style="width:100px;">房源编号</th>
											<th style="width:250px;">小区名称</th>
											<th style="width:200px;">小区户型</th>
											<th style="width:100px;">首付</th>
											<th style="width:150px;">总价</th>
											<th style="width:100px;">操作</th>
										</tr>
									</thead>
									<tbody>										 
									</tbody>
								</table>
								<div class="page" id="fol_VilList_page"></div>
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
						<div class="vil_followlist">
							<div class="check_wrap">
								<div class="form-group"  style="display:block;">
									<input id="table_search"type="text" class="form-control field" placeholder="请输入搜索条件" style="width:300px;display:inline-block;">
									<button type="submit" class="btn btn-default" id="search-bt">搜索</button>
								</div>
								<div class="check_list">
									<table id="fol_vilList" style="display:block;">
										<thead>
											<tr>
												<th style="width:100px;">房源编号</th>
												<th style="width:250px;">小区名称</th>
												<th style="width:200px;">小区户型</th>
												<th style="width:100px;">首付</th>
												<th style="width:150px;">总价</th>
												<th style="width:100px;">操作</th>
											</tr>
										</thead>
										<tbody>										 
										</tbody>
									</table>
									<div class="page" id="fol_VilList_page"></div>
								</div>
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
						<div class="vil_followlist">
							<div class="check_wrap">
								<div class="form-group"  style="display:block;">
									<input id="table_search"type="text" class="form-control field" placeholder="请输入搜索条件" style="width:300px;display:inline-block;">
									<button type="submit" class="btn btn-default" id="search-bt">搜索</button>
								</div>
								<div class="check_list">
									<table id="fol_vilList" style="display:block;">
										<thead>
											<tr>
												<th style="width:100px;">房源编号</th>
												<th style="width:250px;">小区名称</th>
												<th style="width:200px;">小区户型</th>
												<th style="width:100px;">首付</th>
												<th style="width:150px;">总价</th>
												<th style="width:100px;">操作</th>
											</tr>
										</thead>
										<tbody>										 
										</tbody>
									</table>
									<div class="page" id="fol_VilList_page"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<div class="clearfix"></div>
	</div>
	</div>
</div>
	<footer style="margin-top:40px;">
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