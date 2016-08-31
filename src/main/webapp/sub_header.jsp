<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<header>
		<div class="nav-wrap">
			<div class="wrapper">
				<div class="fl">
					<a href="/home/index" class="logo" title="易居网络平台"></a>
					<span>易居二手房网上交易平台</span>
				</div>
				<div class="fr">
					<div class="login">
					<c:if test="${sessionScope.userSession==null}">
						<a href="/user/register">
							<span class="log">注册</span>
						</a>
						|
						<a href="/user/login.jsp">
							<span class="user-reg">登录</span>
						</a>
					</c:if>
					<c:if test="${sessionScope.userSession!=null}">
						<a href="/user/user_index.jsp">
							<span >${sessionScope.userSession.name}</span>
						</a>
						|
						<a href="" class="logout">
							<span>退出</span>
						</a>
					</c:if>
					</div>
				</div>
			</div>
		</div>
	</header>
	<script type="text/javascript">
		$(".logout").click(function () {
                $.post("/home/logout", function (jsondata) {
                var data = jsondata;
                if (data.code == 200) {
                    window.location = "/home/index";
                } else {
                    alert("输入有误噢~");
                }
            },"json");
            });
	</script>