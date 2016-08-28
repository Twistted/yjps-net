<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>易居网络系统后台</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/manage_system/public/css/adminSys.css">

</head>
<body>
<header>
    <h1>易居网络系统后台</h1>

    <div class="user-box">
        <div class="dropdown">
            <a id="dLabe2" data-target="#" href="javascript:void(0)" data-toggle="dropdown" role="button"
               aria-haspopup="true" aria-expanded="false">
                ${sessionScope.managerSession.name}
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" aria-labelledby="dLabe2">
                <!--<li><a href="#">设置</a></li>-->
                <li><a href="/manage/logout">退出</a></li>
                <li><a href="#" id="btn-changePsw">修改密码</a></li>
                <li><a href="#" id="btn-setOp">修改资料</a></li>
                <!--<li><a href="/Operation/Operator/changePassword" id="btn-changePsw">修改密码</a></li>
                <li><a href="/Operation/Operator/setOperator" id="btn-setOp">修改资料</a></li>-->
            </ul>
        </div>
    </div>
    <span class="glyphicon glyphicon-th-list menu-icon" data-toggle="collapse" data-target=".nav-collapse"></span>
</header>

<div class="container-fluid ">
    <div class="row" style="height:100%;">
        <nav class="col-md-2 col-xs-12 nav-collapse collapse">
            <li class="mainnav"><a href="javascript:void(0)" target="adminFrame">系统管理<span class="caret"></span></a>
            </li>
            <ul class="subnav">
                <li><a href="/manage_system/reg_agent.jsp" target="adminFrame">经纪人管理</a></li>
                <li><a href="/manage_system/reg_user.jsp" target="adminFrame">用户管理</a></li>
                <li><a href="/manage_system/reg_manage.jsp" target="adminFrame">管理员管理</a></li>
            </ul>


        </nav>

        <iframe class="col-md-10 col-xs-12" id="adminFrame" src="/manage_system/reg_agent.jsp" name="adminFrame"
                scrolling="auto"></iframe>
    </div>
</div>

<div class="tip" id="modal-changePsw" style="display:none;position:absolute;top:200px;left:300px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">修改密码</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="old_psw" class="control-label">原始密码：</label>
                        <input type="password" class="form-control" id="old_psw" name="old_psw">
                    </div>
                    <div class="form-group">
                        <label for="psw" class="control-label">请输入新的密码：</label>
                        <input type="password" class="form-control" id="psw" name="psw">
                    </div>
                    <div class="form-group">
                        <label for="ens_psw" class="control-label">请再次输入新的密码：</label>
                        <input type="password" class="form-control" id="ens_psw" name="ens_psw">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="" id="btn-enter">确认</button>
            </div>
        </div>
    </div>
</div>
<div class="tip" id="modal-setOp" style="display:none;position:absolute;top:200px;left:300px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">修改资料</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="control-label">用户名：</label>
                        <label class="form-control" id="mod_username"></label>
                    </div>
                    <div class="form-group">
                        <label for="banner_url" class="control-label">昵称：</label>
                        <input type="text" class="form-control" id="mod_nickname" name="banner_url" value="">
                    </div>
                    <div class="form-group">
                        <label for="banner_url" class="control-label">学校：</label>
                        <input type="text" class="form-control" id="mod_school" name="banner_url" value="">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="" id="btn-enter">确认</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>
    $('.mainnav').click(function (event) {
        $(this).next('ul').slideToggle();
    });


</script>
<script type="text/javascript">
    /*(function () {
        $("#btn-changePsw").click(function () {
            $("#modal-changePsw").fadeIn(100);
        });
        $("#btn-setOp").click(function () {
            $("#modal-setOp").fadeIn(100);
            $.post('/Operation/Operator/getMyProfile',
                    {},
                    function (jsondata) {
                        var data = $.parseJSON(jsondata);
                        $("#mod_username").html(data.username);
                        $("#mod_nickname").val(data.nickname);
                        $("#mod_school").val(data.schoolname);
                    });

        });
        $(".modal-footer button").click(function () {
            $(".tip").fadeOut(100);
        });
        $("#btn-enter").click(function () {
            var old_psw = $('#old_psw').val();
            var psw = $('#psw').val();
            var ens_psw = $('#ens_psw').val();
            if (psw == ens_psw) {
                $.post('/Operation/Operator/changePassword',
                        {
                            old_password: old_psw,
                            password: psw
                        },
                        function (jsondata) {
                            var data = $.parseJSON(jsondata);
                            if (data.status === 1) {
                                alert(data.tips);
                            } else {
                                alert(data.tips)
                            }
                        });
            } else {
                alert("两次密码不一样噢，再试一次吧~");
            }
        });
    })(jQuery)*/
</script>
</body>
</html>