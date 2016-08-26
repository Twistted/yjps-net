<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>成员管理</title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="public/css/adminSys.css">
    <style>
        .btn-group {
            margin-left: 20px;
        }
    </style>

</head>
<body>

<ol class="breadcrumb">
    <li><a href="#">系统管理</a></li>
    <li class="active">经纪人管理</li>
</ol>
<div id="platform_config">
    <form class="search-box" id="searchbox" onsubmit="return false">
        <input type="search" placeholder="请输入搜索内容" id="search_input">
        <span class="glyphicon glyphicon-search"></span>
        <input type="submit" value="搜索"  id="search_btn" >
    </form>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>公司</th>
            <th>照片</th>
            <th>权限</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>


        </tbody>

    </table>
    <div class="btn-group">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addPlatform">
            添加经纪人
        </button>
    </div>
    <form class="search-box" id="jumpbox" onsubmit="return false">
        <input type="search" placeholder="请输入跳转页码" id="jump_input">
        <span class="glyphicon glyphicon-search"></span>
        <input type="submit" value="跳转"  id="jump_btn" >
    </form>

    <!--添加平台 -->
    <div class="modal fade" id="addPlatform" tabindex="-1" role="dialog" aria-labelledby="addPlaftormTitle">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="addPlatformTitle">添加平台</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="add_original_id" class="col-sm-3 control-label"><span class=".muted">*</span>原始ID</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_original_id" placeholder="原始ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_wechat_appid" class="col-sm-3 control-label">开发者ID</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_wechat_appid" placeholder="开发者ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_wechat_appsecret" class="col-sm-3 control-label">开发者密钥</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_wechat_appsecret" placeholder="开发者密钥">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="add_wechat_account_id" class="col-sm-3 control-label">微信号</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_wechat_account_id" placeholder="微信号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_wechat_name" class="col-sm-3 control-label">微信名称</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_wechat_name" placeholder="微信名称">
                            </div>
                        </div>


                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="sure-addPlatform">确认</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="setPlatform" tabindex="-1" role="dialog" aria-labelledby="setPlaftormTitle">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="setPlatformTitle">修改平台配置</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="set_platform_id" class="col-sm-3 control-label"><span class=".muted">*</span>平台id</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_platform_id" placeholder="平台id"
                                       value="1" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_original_id" class="col-sm-3 control-label"><span class=".muted">*</span>原始ID</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_original_id" placeholder="原始ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_wechat_appid" class="col-sm-3 control-label">开发者ID</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_wechat_appid" placeholder="开发者ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_wechat_appsecret" class="col-sm-3 control-label">开发者密钥</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_wechat_appsecret" placeholder="开发者密钥">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="set_wechat_account_id" class="col-sm-3 control-label">微信号</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_wechat_account_id" placeholder="微信号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_wechat_name" class="col-sm-3 control-label">微信名称</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_wechat_name" placeholder="微信名称">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="sure-setPlatform">确认</button>
                </div>
            </div>
        </div>
    </div>

    <div class="text-center" id="page"></div>
</div>
<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>

<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/public/js/laypage.js"></script>
<script>

    $(function () {
        var cur_page = 1;
	        var cur_keyword='';
	        var cur_totalpage=9999;
        //分页
        var fetchConfigData = function (curr) {
            $.post('/manage/list_agent', {
                page: curr || 1,
            }, function (res) {
                createTable(res);
                var cur_totalpage = res.pageSize;
                //显示分页
                laypage({
                    cont: 'page', //分页容器
                    pages: cur_totalpage, //总页数
                    curr: curr || 1, //当前页
                    jump: function (obj, first) { //分页后的回调，点击跳页触发函数自身，并传递当前页：obj.curr
                        //一定要加此判断，否则初始时会无限刷新
                        if (!first) {
                            fetchConfigData(obj.curr);
                        }
                    }
                });
            },"json");
        };
        //加载表格
        var createTable = function (res) {
            var data = res.agentList;
            $('#platform_config .table tbody').empty();
            for (var i in data) {
                var tr_id = data[i].agentId,              //ID
                		tr_name = data[i].name,                            //姓名
                        tr_age = data[i].age,             //年龄
                        tr_sex = "";              //性别
                if (data[i].sex==1) {
                	tr_sex="男";
                }else if(data[i].sex==2){
                	tr_sex="女";
                }else{
                	tr_sex="嬲";
                }
                var     tr_year = data[i].yaer,  //入行年份
                        tr_phone = data[i].phone,            //电话
                        tr_company = data[i].company,    //公司
                        tr_photoUrl = data[i].photoUrl,             //照片地址
                        tr_state = data[i].state, //启用与否
                        table_content = '<tr data-secret="' + tr_id + '">\
                                    <td class="tr_name">' + tr_name + '</td>\
                                    <td class="tr_age">' + tr_age + '</td>\
                                    <td class="tr_sex">' + tr_sex + '</td>\
                                    <td class="tr_company">' + tr_company + '</td>\
                                    <td class="tr_photoUrl"><img width="80px" src="' + tr_photoUrl + '"></td>',

                        table_type = '',
                        table_operation = '',
                        table_row = '';
                if (tr_state == 2) { //运营
                    table_state = '<td>禁用</td>';
                    table_operation = '<td></td>';
                } else if (tr_state == 1) { //管理员
                    table_state = '<td>启用</td>';
                    table_operation = '<td>\
                                    <a class="tr_setPlatform" style="cursor:pointer" data-toggle="modal" data-target="#setPlatform">修改</a>\
                                </td>'
                } else {
                    table_state = '<td>你谁啊</td>';
                    table_operation = '<td></td>';
                }
                table_row = table_content + table_state + table_operation + '</tr>';
                $('#platform_config .table tbody').append(table_row);
                //btnEvent();

            }
        }
        fetchConfigData(1);
    });
</script>
</body>
</html>
