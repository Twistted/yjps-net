<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<header>
		<div class="nav-wrap">
			<div class="wrapper">
				<div class="fl">
					<a href="home.html" class="logo" title="易居网络平台"></a>
					<span>易居二手房网上交易平台</span>
				</div>
				<div class="fr">
					<div class="login">
						<a href="user/register.html">
							<span class="log">注册</span>
						</a>
						|
						<a href="user/login.html">
							<span class="user-reg">登录</span>
						</a>
					</div>
				</div>
			</div>
		</div>
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
