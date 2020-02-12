<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>管理员管理</title>

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
    <li><a href="#">后台资讯管理</a></li>
    <li class="active">标题新闻管理</li>
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
            <th class="col-sm-2">标题</th>
            <th class="col-sm-2">作者</th>
            <th class="col-sm-5">内容</th>
            <th class="col-sm-3">操作</th>
        </tr>
        </thead>
        <tbody>


        </tbody>

    </table>
    <div class="btn-group">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add">
            添加标题新闻
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
                    <h4 class="modal-title" id="addPlatformTitle">添加信息</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal" id="file-upload">
                        <div class="form-group">
                            <label for="add_title" class="col-sm-3 control-label"><span class=".muted">*</span>新闻标题</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_title" placeholder="新闻标题">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_author" class="col-sm-3 control-label"><span class=".muted">*</span>作者姓名</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_author" placeholder="作者姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_content" class="col-sm-3 control-label">文章内容</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_content" placeholder="请输入内容">
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
    <!--修改-->
    <div class="modal fade" id="set" tabindex="-1" role="dialog" aria-labelledby="setTitle">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="setPlatformTitle">修改信息</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal" id="file-upload-2">
                    	<div class="form-group" style="display:none">
                            <label for="set_id" class="col-sm-3 control-label">ID</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_id" placeholder="ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_title" class="col-sm-3 control-label"><span class=".muted">*</span>新闻标题</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_title" placeholder="新闻标题">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_author" class="col-sm-3 control-label"><span class=".muted">*</span>作者姓名</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_author" placeholder="作者姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_content" class="col-sm-3 control-label">文章内容</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_content" placeholder="请输入内容">
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
                    <button type="button" class="btn btn-primary" id="sure-set">确认</button>
                </div>
            </div>
        </div>
    </div>

    <!--详情-->
    <div class="modal fade" id="info" tabindex="-1" role="dialog" aria-labelledby="infoTitle">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="setPlatformTitle">详细信息</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal" id="file-upload-2">
                        <div class="form-group">
                            <label for="info_title" class="col-sm-3 control-label">新闻标题</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_title"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="info_author" class="col-sm-3 control-label">作者姓名</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_author"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_content" class="col-sm-3 control-label">文章内容</label>
                            <div class="col-sm-9">
                                <label class="control-label" id="info_content"></label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
    var tip = function(str,obj){
            obj.fadeIn();
            obj.find("strong").text(str);
        };

        $(".alert .close").click(function(){
            $('.alert').fadeOut();
         }
        );

        var check = function(value,switchs,obj)  
        {  
            if(switchs!="introduction"&&value.length>20) {
                    tip('输入项不能超过20个字符噢',obj);
                    return false;
            }
            var reg="";
            if(switchs=="empty")
            {
                if(value=="")  
                {  
                    tip('必填信息不能为空~',obj);  
                    return false;  
                }  
            }
            else if(switchs=="chinaName")
            {
                reg=/^[\u4E00-\u9FA5]{1,}$/;
                if(reg.test(value)==false)  
                {  
                    tip('真实姓名必须为中文噢~',obj);  
                    return false;  
                }  
            }
            else if(switchs=="password") 
            { 
                if(value.length<6)  
                {  
                    tip('密码要在六位以上噢~',obj);  
                    return false;  
                } 
            }
            else if(switchs=="age") 
            {
                //reg=/^([2-9]\d)|100$/;  
                if(value>100||value<1)  
                {  
                    tip('请输入您的真实年龄~',obj);  
                    return false;  
                }  
            }
            else if(switchs=="email") 
            {
                reg=/^\w+(\.\w+)*@\w+(\.\w+)+$/;  
                if(reg.test(value)==false)  
                {  
                    tip('您的邮箱格式不规范~',obj);  
                    return false;  
                } 
            }
            else if(switchs=="phone") 
            {
                reg=/^[1][358][0-9]{9}$/;  
                if(reg.test(value)==false)  
                {  
                    tip('请输入规范的手机号码',obj);  
                    return false;  
                }  
            }
            else if (switchs=="year") {
                reg=/^(19|20)\d{2}$/;
                if(reg.test(value)==false)  
                {  
                    tip('请输入正确的年份',obj);  
                    return false;  
                }
            }
            else if (switchs=="introduction") {
                if(value.indexOf("script")>0||value.indexOf("href")>0||value.indexOf("iframe")>0||value.indexOf("frameset")>0)  
                {  
                    tip('您的输入中含有不安全代码~',obj);  
                    return false;  
                }
            }
            return true;
        };

    $(function () {
        var cur_page = 1;
            var cur_keyword='';
            var cur_totalpage=9999;
        //分页
        var fetchConfigData = function (curr) {
            $.post('/manage/list_news', {
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
            var data = res.newsList;
            $('#platform_config .table tbody').empty();
            for (var i in data) {
                var tr_id = data[i].newsId,              //ID
                        tr_title = data[i].title,                            
                        tr_content = data[i].content,       
                        tr_author = data[i].author,     //密码
                        tr_state = data[i].state, //启用与否
                        table_content = '<tr data-secret="' + tr_id + '">\
                                    <td class="tr_title">' + tr_title + '</td>\
                                    <td class="tr_author">' + tr_author + '</td>\
                                    <td class="tr_content">'+ tr_content+'</td>',
                        table_operation = '',
                        table_row = '';
                if (tr_state == 2) { //被禁用
                    table_operation = '<td><a class="tr_info" style="cursor:pointer" data-toggle="modal" data-target="#info">详情</a>\
                                    <a class="tr_allow" style="cursor:pointer" data-toggle="modal">恢复</a>&nbsp;<a class="tr_set" style="cursor:pointer" data-toggle="modal" data-target="#set">修改</a>\
                                </td>';
                } else if (tr_state == 1) { //已启用
                    table_operation = '<td><a class="tr_info" style="cursor:pointer" data-toggle="modal" data-target="#info">详情</a>\
                                    <a class="tr_forbid" style="cursor:pointer" data-toggle="modal">删除</a>&nbsp;<a class="tr_set" style="cursor:pointer" data-toggle="modal" data-target="#set">修改</a>\
                                </td>';
                } else {
                    table_state = '<td>你谁啊</td>';
                    table_operation = '<td></td>';
                }
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

        $('#sure-add').click(function () {
            var obj=$(this).parent().parent().find("section");
            if(
                check($('#add_title').val(),"empty",obj)&&
                check($('#add_author').val(),"empty",obj)
            ){
            var addVal = {
                title: $('#add_title').val(),
                author: $('#add_author').val(),
                content: $('#add_content').val(),
                state:1
            };
            postEvent('/manage/add_news', addVal);
            }
        });

        var btnEvent = function () {
            //修改,填充表单
            $('.tr_set').unbind().click(function () {
                var set_row = $(this).parent('td').parent('tr'),
                id = set_row.attr('data-secret'),
                title =  set_row.children('.tr_title').text(),
                author = set_row.children('.tr_author').text(),
                content = set_row.children('.tr_content').text();
                $('#set_id').val(id);
                $('#set_title').val(title);
                $('#set_author').val(author);
                $('#set_content').val(content);
            });

            $('.tr_info').unbind().click(function () {
                var set_row = $(this).parent('td').parent('tr'),
                title =  set_row.children('.tr_title').text(),
                author = set_row.children('.tr_author').text(),
                content = set_row.children('.tr_content').text();
                $('#info_title').text(title);
                $('#info_author').text(author);
                $('#info_content').text(content);
            });

            $('#sure-set').unbind().click(function () {
            	var obj=$(this).parent().parent().find("section");
                if(
                check($('#set_title').val(),"empty",obj)&&
                check($('#set_author').val(),"empty",obj)
                ){
                var setPlatformVal = {
                    newsId: $('#set_id').val(),
                    title:$('#set_title').val(),
                    author:$('#set_author').val(),
                    content:$('#set_content').val(),
                    state:1
                };
                postEvent('/manage/modify_news', setPlatformVal);
                }
            });
            
            $('.tr_forbid').unbind().click(function () {
                var set_row = $(this).parent('td').parent('tr'),
                ids = set_row.attr('data-secret');
                var setPlatformVal={
                    managerId:ids
                }
                postEvent('/manage/disable_news', setPlatformVal);
            });
            $('.tr_allow').unbind().click(function () {
                var set_row = $(this).parent('td').parent('tr'),
                ids = set_row.attr('data-secret');
                var setPlatformVal={
                    managerId:ids
                }
                postEvent('/manage/enable_news', setPlatformVal);
            });
            $('.add_photoUrl').unbind().change(function(event) {  
                var formData = new FormData( document.getElementById("file-upload") );
                $.ajax({
                    url:'/upload/fileOfManager',
                    type: 'POST',  
                      data: formData,  
                      async: false,  
                      cache: false,  
                      contentType: false,  
                      processData: false, 
                    dataType: 'json',
                    success : function(result) {
                        $('#add .photo_img').attr("src",result.filePath);
                    },
                    error : function(result) {
                        var txt = "上传失败=_=";
                        window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                    }
                });                  
            });
            $('.set_photoUrl').unbind().change(function(event) {  
                var formData = new FormData( document.getElementById("file-upload-2") );
                $.ajax({
                    url:'/upload/fileOfManager',
                    type: 'POST',  
                      data: formData,  
                      async: false,  
                      cache: false,  
                      contentType: false,  
                      processData: false, 
                    dataType: 'json',
                    success : function(result) {
                        console.log(result.filePath);
                        console.log($('#set .photo_img').attr("src"));
                        $('#set .photo_img').attr("src",result.filePath);
                    },
                    error : function(result) {
                        alert("fail");
                    }
                });                  
            });
        }

        
        

        var postEvent = function (url, obj) {
            $.post(url, obj, function (jsondata) {
                console.log(obj);
                var data = jsondata;
                if (data.code == 200) {
                    var txt = "操作成功~";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                    $('#add').modal('hide');
                    $('#set').modal('hide');
                    fetchConfigData(cur_page);
                } else {
                    var txt = "输入有误噢";
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
