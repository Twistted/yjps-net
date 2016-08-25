<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <title>易居网_经纪人中心</title>
     <link href="../public/css/manager.css" rel="stylesheet">
     <link rel="stylesheet" href="../public/css/slimtable.css">
	 
     <!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../public/css/reset.css">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../public/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../public/js/slimtable.min.js"></script>
   	 <link rel="shortcut icon" type="image/x-icon" href="#" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
     
     <script src="../public/js/manager.min.js"></script>
 
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
						<a href="/agent/index" style="display:none">
							<span class="log" style="display:none">注册</span>
						</a>
						<a href="#">
							<span class="log">${sessionScope.agentSession.name}</span>
						</a>
						|
						<a href="/agent/index" style="display:none">>
							<span class="user-reg">登录</span>
						</a>
						<a href="/agent/logout">
							<span class="log">退出</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>
 <div class="tabbable">
	<div class="user-main">
		<!--左侧导航-->
		<div class="main-left fl">
			<div class="name" >
				<img src="../public/img/logo.jpg" style="border-radius:5px;width:100px;height:100px;"></img>
				<div class="user-name">欢迎你，一二三</div>
			</div>
			<div class="tabble">
				<ul>
					<li class="hover active">
						<a href="#mtab1" id="li_1" data-toggle="tab">首页</a>
					</li>
					<li class="hover">
						<a href="#mtab2" id="li_2" data-toggle="tab">个人信息</a>
					</li>
					<li class="hover">
						<a href="#mtab3" id="li_3" data-toggle="tab">编辑资料</a>
					</li>
					<li class="hover">
						<a href="#mtab4" id="li_4" data-toggle="tab">发布房源</a>
					</li>
					<li class="hover">
						<a href="#mtab5" id="li_5" data-toggle="tab">我的发布</a>
					</li>
				<!-- 	<li class="hover">
						<a href="#mtab6" id="li_6" data-toggle="tab">待用</a>
					</li>
					<li class="hover">
						<a href="#mtab7" id="li_7" data-toggle="tab">待用</a>
					</li> -->

				</ul>
			</div>
		</div>
		<div class="tab-content">
		<!-- 房源发布-->
		<div class="Fyfabu main-right fr xiaoshi" id="mtab4">
			
			<div class="fy">
				<div class="fy_head">
					<p class="Fyh1">房源基本信息</p>
				</div>
				<div class="fy_contain">
					<form>
						<ul>
							<li>
								<span class="Fyh2"><span class="star">*</span>供求</span>
									<input class="radioInput" type="radio" name="typeOfFy" value="safe" checked="checked"><span class="chosespan">出售</span></input>
									<input class="radioInput" type ="radio" name="typeOfFy" value="buy" >
									<span class="chosespan">求购</span></input>
							</li>
							<li>
								<span class="Fyh2"><span class="star">*</span>选择身份</span>
									<input class="radioInput" type="radio" name="ide" value="personal" checked="checked"><span class="chosespan">
									个人</span></input>
									<input class="radioInput" type="radio" name="ide" value="manager"><span class="chosespan">经纪人</span></input>
							</li>
							<li>
								<span class="Fyh2"><span class="star">*</span>小区名称</span>
									<input class="textInput" type="text" id="nameOfDep"  placeholder="只填写小区名，例万达华府"></input>
							</li>
							<li>
								<span class="Fyh2"><span class="star">*</span>小区户型</span>
									<input class="textInput huxing" type="text" id="shi"><span class="huxingspan">室</span></input>
									<input class="textInput huxing" type="text" id="ting"><span class="huxingspan">厅</span></input>
									<input class="textInput huxing" type="text" id="wei"><span class="huxingspan">卫</span></input>
									<input class="textInput huxing" type="text" id="mianji" placeholder="     建筑面积"><span class="t1">共</span><span class="huxingspan1">㎡</span></input>
							</li>
							<li>
									<span class="Fyh2"><span class="star">*</span>总价</span>
									<input class="textInput" type="text" id="total"><span class="huxingspan">万</span></input>
							</li>
							<li>
									<span class="Fyh2"><span class="star">*</span>标题</span>
									<input class="textInput" type="text" id="FyTitle"></input>
							</li>
						</ul>
					</div>
					<div class="FyDescri">
						<p class="Fyh1">房源个性描述</p>
							<div class="instro">
										<span class="Fyh2"><span class="star">*</span>详细描述</span>
								<textarea cols="80" rows="10" placeholder="个性且详尽的房源描述可以加速您出售您的房子"></textarea>
							</div>
							<!-- pic upload-->
							<div class="FyUpload_wrap">
								<span class="Fyh2">上传图片</span>
								 <div class="FyUpload">
								 	<div class="FyUploadTitle">上传电脑中图片</div>
								 		<div class="localUpload">
								 			<div id="imgUpload">
								 				<div class="html5">
								 					<input multiple="multiple" type="file"></input>
								 				</div>
								 			</div>
								 		</div>
									 <div class="uploadInfo">
									 	<p>只能上传房屋照片，不能包含文字、数字、网址、名片等，最多上传<span>24</span>张，每张最大<span>10M</span></p>
									 </div>
								</div>
							</div>
						</div>
					<div class="contactType_wrap">
						<p class="Fyh1">联系方式</p>
							<div class="contactType">
								<ul>
									<li>
										<span class="Fyh2"><span class="star">*</span>联系电话</span>
											<input class="textInput" type="text" id="telNum"></input>
									</li>
									<li>
											<span class="Fyh2"><span class="star">*</span>联系人</span>
											<input class="textInput" type="text" id="nameOfNum" style="margin-left:13px;"></input>
									</li>
									<li> 
											<span class="Fyh2"><span class="star">*</span>QQ</span>
											<input class="textInput" type="text" id="qqNum" style="margin-left:32px;"></input>
									</li>	
								</ul>
							</div>
					</div>
					<div class="fabu">
						<a class=" lj-btn" href="#">发布</a>
					</div>
				</div>
			</div>
			<!--首页-->
			<div class="main-right fr tab-pane active" id="mtab1">
				<div class="allList">
					<div class="title">您关注的房源/小区最新动态</div>
					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1" data-toggle="tab">全部</a></li>
							<li><a href="#tab2" data-toggle="tab">调价</a></li>
							<li><a href="#tab3" data-toggle="tab">上新</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab1">
								<p>...</p>
							</div>
							<div class="tab-pane" id="tab2">
								<p>...</p>
							</div>
							<div class="tab-pane" id="tab3">
								<p>..</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--编辑资料-->
		<div class="main-right fr xiaoshi edit_info tab-pane" id="mtab3">
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
							<form name="form0" action="" id="form0" >
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
						<form id="updatePwd" action="/agent/agent_modify" method="post">
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
									<input id="password2" placeholder="请输入新密码" validate="notNull,isSame" validatedata="isSame=#password1" validatename="确认新密码" type="password" />
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
						<form id="updatePerson" action="agent/modify_agent" method="post">
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
						<div class="personalInfo_wrap">
							<form id="updateInfo" action="agent/modify_agent" method="post">
								<ul>
									<li>
										<span class="info_title">姓名:</span>
										<input type="text" id="username" name="name" class="form-control" /> 
									</li>
									<li>
										<span class="info_title">性别:</span>
										<div class="checkbox">
											<input class="radioInput" name="sex" value="man" checked="checked" type="radio"></input>
											<span class="chosespan">男</span>
											<input class="radioInput" name="sex" value="woman" checked="checked" type="radio"></input>
											<span class="chosespan">女</span>
										</div>
									</li>
									<li>
										<span class="info_title">年龄:</span>
										<input type="text" id="age" name="age" class="form-control" />
										 
									</li>
									<li>
										<span class="info_title">电话:</span>
										<input type="text" id="phone" name="phone" class="form-control" />
									</li>
									<li>
										<span class="info_title">邮箱:</span>
										<input type="text" id="email" name="email" class="form-control" />
									</li>
									<li>
										<span class="info_title">入行年份:</span>
										<input type="text" id="year" name="year" class="form-control" />
									</li>
									<li>
										<span class="info_title" >所属公司:</span>
										<input type="text" id="company"  name="company" class="form-control" />
									</li>
									<li>
										<span class="info_title">自我介绍:</span>
										<textarea id="selfIntro" name="introduction" class="form-control" cols="300" rows="6" placeholder="请简单介绍你自己..."></textarea>
									</li>
								</ul>
							</form>
							<div class="ok-btn">
								<a class="lj-btn" href="#">提交</a>
							</div> 
						</div>
					</div>
			</div>
		</div>
		<!--个人信息-->
		<div class="main-right xiaoshi fr personal_info tab-pane" id="mtab2">
			<div class="title">
				个人信息</div>
				<div class="info_wrap">
					<ul>
						<li class="logo">
							<span class="info_title">当前头像:</span>
							<picturebox><img src="${photourl}" style="border-radius:5px;" ></img></picturebox>
						</li>
						<li>
							<span class="info_title">姓名:</span>
							<div class="info_c"><span>${agent.name}</span></div>
						</li>
						<li>
							<span class="info_title">性别:</span>
							<div class="info_c"><span>${sex}</span></div>
						</li>
						<li>
							<span class="info_title">年龄:</span>
							<div class="info_c"><span>${age}</span></div>
						</li>
						<li>
							<span class="info_title">电话:</span>
							<div class="info_c"><span>${phone}</span></div>
						</li>
						<li>
							<span class="info_title">邮箱:</span>
							<div class="info_c"><span>${email}<span></div>
						</li>
						<li>
							<span class="info_title">入行年份:</span>
							<div class="info_c"><span>${year}</span></div>
						</li>
						<li>
							<span class="info_title">所属公司:</span>
							<div class="info_c"><span>${company}</span></div>
						</li>
						<li>
							<span class="info_title">状态:</span>
							<div class="info_c"><span class="redspan">${state}</span></div>
						</li>
						<li>
							<span class="info_title">自我介绍:</span>
							<div class="info_c"><span>${introduction}</span></div>
						 </li>
						
					</ul>
				</div>
			</div>
	



		<!--我的发布-->
		<div class="main-right xiaoshi fr tab-pane hasList" id="mtab5">
			<div class="title">
				我的发布</div>
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
								<tr>
									<td>3</td>
									<td>David</td>
									<td>Brown</td>
									<td>22</td>
									<td>Example corp</td>
								</tr>
								<tr>
									<td>4</td>
									<td>Joseph</td>
									<td>Taylor</td>
									<td>43</td>
									<td>Example corp</td>
								</tr>
								<tr>
									<td>5</td>
									<td>Thomas</td>
									<td>Moore</td>
									<td>67</td>
									<td>Nextgen corp</td>
								</tr>
								<tr>
									<td>6</td>
									<td>Daniel</td>
									<td>White</td>
									<td>19</td>
									<td>Unemployed</td>
								</tr>
								<tr>
									<td>7</td>
									<td>Steven</td>
									<td>Harris</td>
									<td>38</td>
									<td>Nextgen corp</td>
								</tr>
								<tr>
									<td>8</td>
									<td>Brian</td>
									<td>Clark</td>
									<td>82</td>
									<td>Metalking</td>
								</tr>
								<tr>
									<td>9</td>
									<td>朱国栋</td>
									<td>Lewis</td>
									<td>71</td>
									<td>Metalking</td>
								</tr>
								<tr>
									<td>10</td>
									<td>Jason</td>
									<td>Allen</td>
									<td>58</td>
									<td>Example corp</td>
								</tr>
								<tr>
									<td>11</td>
									<td>Mary</td>
									<td>Walker</td>
									<td>32</td>
									<td>Prevgen</td>
								</tr>
								<tr>
									<td>12</td>
									<td>Lisa</td>
									<td>Young</td>
									<td>33</td>
									<td>Example corp</td>
								</tr>
								<tr>
									<td>13</td>
									<td>Nancy</td>
									<td>King</td>
									<td>64</td>
									<td>Fakecorp</td>
								</tr>
								<tr>
									<td>14</td>
									<td>Brian</td>
									<td>White</td>
									<td>38</td>
									<td>Prevgen</td>
								</tr>
								<tr>
									<td>15</td>
									<td>Stewen</td>
									<td>Lewis</td>
									<td>22</td>
									<td>Fakecorp</td>
								</tr>
								<tr>
									<td>15</td>
									<td>Stewen</td>
									<td>Lewis</td>
									<td>22</td>
									<td>Fakecorp</td>
								</tr>
								<tr>
									<td>15</td>
									<td>Stewen</td>
									<td>Lewis</td>
									<td>22</td>
									<td>Fakecorp</td>
								</tr>
								<tr>
									<td>15</td>
									<td>Stewen</td>
									<td>Lewis</td>
									<td>22</td>
									<td>Fakecorp</td>
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
				<div class="clearfix"></div>
		</div>
	</div>
	 

</div>
		<!--清除浮动-->
	
		<div class="clearfix"></div>
	<!--footer-->
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
</body>
</html>