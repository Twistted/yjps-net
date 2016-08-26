<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>用户管理</title>

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
    <li class="active">用户管理</li>
</ol>
<div id="reg_manage">
    <form class="search-box" id="searchbox" onsubmit="return false">
        <input type="search" placeholder="请输入搜索内容" id="search_input">
        <span class="glyphicon glyphicon-search"></span>
        <input type="submit" value="搜索"  id="search_btn" >
    </form>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>用户名</th>
            <th>昵称</th>
            <th>学校</th>
            <th>创建时间</th>
            <th>
                <select id="regStatus">
                    <option value="">全部</option>
                    <option value="0">待审核</option>
                    <option value="1">已通过</option>
                    <option value="-1">已拒绝</option>
                </select>
            </th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <!--   <tr>
              <td>1</td>
              <td>1</td>
              <td>1</td>
              <td>
                  <a href="javascript:void(0)">通过</a>
                  <a href="javascript:void(0)">拒绝</a>
              </td>

          </tr> -->

        </tbody>

    </table>
    <form class="search-box" id="jumpbox" onsubmit="return false">
        <input type="search" placeholder="请输入跳转页码" id="jump_input">
        <span class="glyphicon glyphicon-search"></span>
        <input type="submit" value="跳转"  id="jump_btn" >
    </form>
    <div class="text-center" id="page"></div>
</div>
<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>

<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/Public/static/laypage/js/laypage.js"></script>
<script>
    $(function () {
        var cur_keyword='';
        var cur_page = 1, cur_status = '';
        var reset_tr_id=-1;
        var del_tr_id=-1;
        var pnode; 
        //分页
        function fetchRegData(curr,status,keyword) {
            $.getJSON('/Operation/Operator/getOperator', {
                page: curr || 1,
                type: status || '',
                keyword:keyword||'',
            }, function (res) {
                createTable(res);
                cur_page = curr;
                //显示分页
                laypage({
                    cont: 'page', //分页容器
                    pages: res.total_page, //总页数
                    curr: curr || 1, //当前页
                    jump: function (obj, first) { //分页后的回调，点击跳页触发函数自身，并传递当前页：obj.curr
                        //一定要加此判断，否则初始时会无限刷新
                        if (!first) {
                            fetchRegData(obj.curr, status,cur_keyword);
                        }
                    }
                });
            });
        };

        //加载表格
        var createTable = function (res) {
            var data = res.data;
            $('#reg_manage .table tbody').empty();
            for (var i in data) {
                var tr_id = data[i].id,
                        tr_username = data[i].username,
                        tr_nickname = data[i].nickname,
                        tr_schoolname = data[i].schoolname,
                        tr_create_at = data[i].create_at,
                        tr_type = data[i].type,
                        table_operation = '',
                        table_content = '<tr data-oid="' + tr_id + '">\
                                <td class="tr_username">' + tr_username + '</td>\
                                <td  class="tr_nickname">' + tr_nickname + '</td>\
                                <td class="tr_schoolname">' + tr_schoolname + '</td>\
                                <td class="tr_create_at">' + tr_create_at + '</td>';

                if (tr_type === '0') {
                    tr_type = '<td>未审核</td>';
                    table_operation = '<td>\
                                <a class="tr_pass" href="javascript:void(0)">通过</a>\
                                <a class="tr_reject" href="javascript:void(0)">拒绝</a>\
                            </td>';
                } else if (tr_type === '1') {
                    tr_type = '<td>已通过</td>';
                    table_operation = '<td>\
                                <a class="tr_reset" href="javascript:void(0)">重置密码</a>\
                                <a class="tr_reject" href="javascript:void(0)">拒绝</a>\
                            </td>';
                } else if (tr_type === '-1') {
                    tr_type = '<td>已拒绝</td>';
                    table_operation = '<td>\
                                <a class="tr_pass" href="javascript:void(0)">通过</a>\
                                <a class="tr_delete" href="javascript:void(0)">彻底删除</a>\
                            </td>';
                } else if (tr_type === '2') {
                    tr_type = '<td>管理员</td>';
                    table_operation = '<td>\
                            </td>';
                }
                else {
                    tr_type = '<td>不明状况=。=</td>';
                }
                ;
                table_row = table_content + tr_type + table_operation + '</tr>';
                $('#reg_manage .table tbody').append(table_row);
                btnEvent();
            }
        }

        $('#platform_config #jump_btn').click(function () {
            var cpage=$('#jump_input').val();
            if (cpage<=cur_totalpage) {
                fetchConfigData(cpage,cur_keyword);
                cur_page=cpage;
            }
            else
            {
                alert("页码超出范围");
            }
            $('#jump_input').val('');
        });
        
        $('#reg_manage #search_btn').click(function () {
            cur_keyword=$('#search_input').val();
            fetchRegData(1,cur_status,cur_keyword);
        });

        var btnEvent = function () {
            //通过
            $('.tr_pass').unbind().click(function () {
                var tr_id = $(this).parent('td').parent('tr').attr('data-oid'),
                        pass_val = {
                            oid: tr_id,
                            type: 1
                        }
                postEvent('/Operation/Operator/setOperator', pass_val);
            })

            //拒绝
            $('.tr_reject').unbind().click(function () {
                var tr_id = $(this).parent('td').parent('tr').attr('data-oid'),
                        reject_val = {
                            oid: tr_id,
                            type: -1
                        }
                postEvent('/Operation/Operator/setOperator', reject_val);
            })
            //重置
            $('.tr_reset').unbind().click(function () {
                reset_tr_id = $(this).parent('td').parent('tr').attr('data-oid');
                pnode = $(this).parent('td').parent('tr'); 
                $('.this_user').html(pnode.children(".tr_username").text());
                $('.this_nick').html(pnode.children(".tr_nickname").text());
                $('.this_sch').html(pnode.children(".tr_schoolname").text());
                $('.reset-tip').fadeIn(200);
            })
            $('#reset-btn-default').unbind().click(function () {
                $('.reset-tip').fadeOut(200);
            })
            $('#reset-btn-primary').unbind().click(function () {
                        reset_val = {
                            oid: reset_tr_id
                        }
                postEvent('/Operation/Operator/resetOperator', reset_val);
                $('.reset-tip').fadeOut(200);
            })
            //删除
            $('.tr_delete').unbind().click(function () {
                del_tr_id = $(this).parent('td').parent('tr').attr('data-oid');
                pnode = $(this).parent('td').parent('tr'); 
                $('.this_user').html(pnode.children(".tr_username").text());
                $('.this_nick').html(pnode.children(".tr_nickname").text());
                $('.this_sch').html(pnode.children(".tr_schoolname").text());
                $('.del-tip').fadeIn(200);
            })
            $('#del-btn-default').unbind().click(function () {
                $('.del-tip').fadeOut(200);
            })
            $('#del-btn-primary').unbind().click(function () { 
                        del_val = {
                            oid: del_tr_id
                        }
                postEvent('/Operation/Operator/delOperator', del_val);
                $('.del-tip').fadeOut(200);
            })

            $('#regStatus').unbind().change(function (event) {
                var regStatus = $(this).val();
                cur_status = regStatus;
                fetchRegData(1, regStatus);
            });

        }

        var postEvent = function (url, obj) {
            $.post(url, obj, function (jsondata) {
                var data = $.parseJSON(jsondata);
                if (data.status === 1) {
                    alert(data.tips);
                    fetchRegData(1, cur_status);
                } else {
                    alert(data.tips);
                }
            });
        }

        fetchRegData(1);
    });
</script>
<div class="reset-tip" style="display:none;top:200px;left:200px;position:absolute;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">亲爱的，你真的要重置他的密码么~</h4>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="title" class="control-label">用户名：<p class="this_user"></p>昵称：<p class="this_nick"></p>学校：<p class="this_sch"></p></label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="reset-btn-default">取消</button>
                <button type="button" class="btn btn-primary" onclick="" id="reset-btn-primary">确认</button>
            </div>
        </div>
    </div>
</div>
<div class="del-tip" style="display:none;top:200px;left:200px;position:absolute;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">亲爱的你真的要删除这个小伙伴么~</h4>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="title" class="control-label">用户名：<p class="this_user"></p>昵称：<p class="this_nick"></p>学校：<p class="this_sch"></p></label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="del-btn-default">取消</button>
                <button type="button" class="btn btn-primary" onclick="" id="del-btn-primary">确认</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
