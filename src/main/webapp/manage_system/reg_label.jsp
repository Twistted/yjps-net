<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>用户管理</title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/manage_system/public/css/adminSys.css">
    <link rel="stylesheet" href="/public/css/xcConfirm.css" />
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
<div id="platform_config">
    <form class="search-box" id="searchbox" onsubmit="return false"  style="display:none">
        <input type="search" placeholder="请输入搜索内容" id="search_input">
        <span class="glyphicon glyphicon-search"></span>
        <input type="submit" value="搜索"  id="search_btn" >
    </form>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>标签名</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>


        </tbody>

    </table>
    <div class="btn-group">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add">
            添加标签
        </button>
    </div>
    <form class="search-box" id="jumpbox" onsubmit="return false">
        <input type="search" placeholder="请输入跳转页码" id="jump_input">
        <span class="glyphicon glyphicon-search"></span>
        <input type="submit" value="跳转"  id="jump_btn" >
    </form>
    <!--添加 -->
    <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="addTitle">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="addPlatformTitle">添加标签</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" id="file-upload">
                        <div class="form-group">
                            <label for="add_label" class="col-sm-3 control-label">标签名称</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_label" placeholder="标签名称"  required="true">
                            </div>
                        </div>
                         <div class="form-group">
                            <!--提示-->
                            <section class="alert  alert-info" style="position:fixed;display:none;" id="tip">
                              <button type="button" class="close">&times;</button>
                              <strong>Info</strong>
                            </section>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="sure-add">确认</button>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center" id="page"></div>
</div>
<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="/public/js/xcConfirm.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/public/js/laypage.js"></script>
<script>

    $(function () {
        //提示框
        var tip = function(str,obj){
            obj.fadeIn();
            obj.find("strong").text(str);
        };

        $(".alert .close").click(function(){
            $('.alert').fadeOut();
         }
        );
        //输入验证
        var check = function(value,switchs,obj)  
        {  
            if(switchs=="label")
            {
                if(value==""||value.length>30)  
                {  
                    tip('请输入长度为1~15个字的标签',obj);  
                    return false;  
                }  
            }
            if(value.indexOf("script")>0||value.indexOf("href")>0||value.indexOf("iframe")>0||value.indexOf("frameset")>0)  
                {  
                    tip('您的标签内容中含有不安全代码，如script等用语，请修改后再试~',obj);  
                    return false;  
            }
            return true;
        };

        //分页
        var cur_page = 1;
	        var cur_keyword='';
	        var cur_totalpage=9999;
        
        var fetchConfigData = function (curr) {
            $.post('/manage/list_label', {
                page: curr || 1,
            }, function (res) {
                createTable(res);
                cur_totalpage = res.pageSize;
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
            var data = res.labelList;
            $('#platform_config .table tbody').empty();
            for (var i in data) {
                var tr_id = data[i].labelId,              //ID
                    tr_label=data[i].label,
                    table_content = '<tr data-secret="' + tr_id + '">\
                                    <td class="tr_label">' +tr_label + '</td>',
                    table_row = '',
                    table_operation = '<td><a class="tr_forbid" style="cursor:pointer" data-toggle="modal">删除</a></td>';
                
                table_row = table_content + table_operation + '</tr>';
                $('#platform_config .table tbody').append(table_row);
                btnEvent();
            }
        }

        $('#platform_config #jump_btn').click(function () {
            var cpage=$('#jump_input').val();
            if (cpage<=cur_totalpage) {
                fetchConfigData(cpage);
                cur_page=cpage;
            }
            else
            {
                var txt = "页码超出范围";
                window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
            }
            $('#jump_input').val('');
        });
        //确认添加      
        $('#sure-add').click(function () {
            var obj=$(this).parent().parent().find("section");
            if(
            check($('#add_label').val(),"label",obj)
            ){
                var addVal = {
                    label: $('#add_label').val().replace(/\s*on[a-z]+\s*=\s*("[^"]+"|'[^']+'|[^\s]+)\s*/ig,"")
                };
                postEvent('/manage/add_label', addVal);
            }
        });

        var btnEvent = function () {
            //修改,填充表单

			$('.tr_forbid').unbind().click(function () {
        		var set_row = $(this).parent('td').parent('tr'),
                ids = set_row.attr('data-secret');
                var setPlatformVal={
                	labelId:ids
                };
                console.log(setPlatformVal);
                postEvent('/manage/delete_label', setPlatformVal);
            });
            
        }

        
        

        var postEvent = function (url, obj) {
            $.post(url, obj, function (jsondata) {
                var data = jsondata;
                if (data.code == 200) {
                    var txt = "操作成功~";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                    $('#add').modal('hide');
                    $('#set').modal('hide');
                    fetchConfigData(cur_page);
                } else {
                    var txt = "输入有误噢~";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                }
            },"json");
        }

        fetchConfigData(1);
        btnEvent();
    });
</script>
</body>
</html>
