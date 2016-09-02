<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>经纪人管理</title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/manage_system/public/css/adminSys.css">
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
    <form class="search-box" id="searchbox" onsubmit="return false"  style="display:none">
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
            <th>联系方式</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>


        </tbody>

    </table>
    <div class="btn-group">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add">
            添加经纪人
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
                    <h4 class="modal-title" id="addPlatformTitle">添加经纪人</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" id="file-upload">
                        <div class="form-group">
                            <label for="add_account" class="col-sm-3 control-label">账户名称</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_account" placeholder="账户名称"  required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_name" class="col-sm-3 control-label">姓名</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_name" placeholder="姓名" required="true" name="chinaName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_password" class="col-sm-3 control-label">密码</label>

                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="add_password" placeholder="密码" required="true" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_age" class="col-sm-3 control-label">年龄</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_age" placeholder="年龄" name="age">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_sex" class="col-sm-3 control-label">性别</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_sex" placeholder="性别" name="sex">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_email" class="col-sm-3 control-label">邮箱</label>

                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="add_email" placeholder="邮箱" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_phone" class="col-sm-3 control-label">联系方式</label>

                            <div class="col-sm-9">
                                <input type="tel" class="form-control" id="add_phone" placeholder="联系方式" name="mobile">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_year" class="col-sm-3 control-label">入行年份</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_year" placeholder="入行年份" name="year">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_company" class="col-sm-3 control-label">公司</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="add_company" placeholder="公司名称" name="company">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_photoUrl" class="col-sm-3 control-label">选择图片</label>
                            <div class="col-sm-9">
                            <input type="file" id="add_photoUrl" class="form-control add_photoUrl" name="clientFile" multiple="multiple"/>  
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="photo" class="col-sm-3 control-label">图片预览</label>
                            <div class="col-sm-9">
                            <img class="photo_img" class="form-control" style="width:60%;height:auto;" />  
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="add_introduction" class="col-sm-3 control-label">个人介绍</label>

                            <div class="col-sm-9">
                                <textarea  class="form-control" id="add_introduction" placeholder="个人介绍" style="min-height:100px"></textarea>
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
                            <label for="set_account" class="col-sm-3 control-label">账户名称</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_account" placeholder="账户名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_name" class="col-sm-3 control-label">姓名</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_name" placeholder="姓名" name="chinaName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_password" class="col-sm-3 control-label">密码</label>

                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="set_password" placeholder="密码" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_age" class="col-sm-3 control-label">年龄</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_age" placeholder="年龄">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_sex" class="col-sm-3 control-label">性别</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_sex" placeholder="性别">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_email" class="col-sm-3 control-label">邮箱</label>

                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="set_email" placeholder="邮箱">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_phone" class="col-sm-3 control-label">联系方式</label>

                            <div class="col-sm-9">
                                <input type="tel" class="form-control" id="set_phone" placeholder="联系方式">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_year" class="col-sm-3 control-label">入行年份</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_year" placeholder="入行年份">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_company" class="col-sm-3 control-label">公司</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="set_company" placeholder="公司名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_photoUrl" class="col-sm-3 control-label">选择图片</label>
                            <div class="col-sm-9">
                            <input type="file" id="add_photoUrl" class="form-control set_photoUrl" name="clientFile" multiple="multiple"/>  
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="photoSet" class="col-sm-3 control-label">图片预览</label>
                            <div class="col-sm-9">
                            <img class="photo_img" class="form-control" style="width:60%;height:auto;" />  
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_introduction" class="col-sm-3 control-label">个人介绍</label>

                            <div class="col-sm-9">
                                <textarea class="form-control" id="set_introduction" placeholder="个人介绍"></textarea>
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
                            <label for="set_account" class="col-sm-3 control-label">账户名称</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_account"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_name" class="col-sm-3 control-label">姓名</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_name"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_password" class="col-sm-3 control-label">密码</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_password"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_age" class="col-sm-3 control-label">年龄</label>

                            <div class="col-sm-9">
                                <label class="control-label"  id="info_age"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_sex" class="col-sm-3 control-label">性别</label>
                            <div class="col-sm-9">
                                <label class="control-label" id="info_sex"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_email" class="col-sm-3 control-label">邮箱</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_email"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_phone" class="col-sm-3 control-label">联系方式</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_phone"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_year" class="col-sm-3 control-label">入行年份</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_year"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_company" class="col-sm-3 control-label">公司</label>

                            <div class="col-sm-9">
                                <label  class="control-label"  id="info_company"></label>
                            </div>
                        </div>
                        <div class="form-group" style="display:none">
                            <label for="set_photoUrl" class="col-sm-3 control-label">选择图片</label>
                            <div class="col-sm-9">
                            <input type="file" id="add_photoUrl" class="form-control info_photoUrl" name="clientFile" multiple="multiple"/>  
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="photoSet" class="col-sm-3 control-label">照片</label>
                            <div class="col-sm-9">
                            <img class="photo_img" class="form-control" style="width:60%;height:auto;" />  
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="set_introduction" class="col-sm-3 control-label">个人介绍</label>

                            <div class="col-sm-9">
                                <label class="control-label" id="info_introduction"></label>
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
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/public/js/laypage.js"></script>
<script>
     

    

    $(function () {
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
                    tip('除了个人简介之外，输入项不能超过20个字符噢',obj);
                    return false;
            }
            var reg="";
            if(switchs=="empty")
            {
                if(value=="")  
                {  
                    tip('账号、姓名和密码不能为空~',obj);  
                    return false;  
                }  
            }
            else if(switchs=="chinaName")
            {
                reg=/^[\u4E00-\u9FA5]{1,}$/;
                if(reg.test(value)==false)  
                {  
                    tip('请输入您的真实姓名~',obj);  
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
                    tip('您的个人介绍中含有不安全代码，如script等用语，请修改后再试~',obj);  
                    return false;  
                }
            }
            return true;
        };
        
        var cur_page = 1;
	        var cur_keyword='';
	        var cur_totalpage=9999;
        //分页
        var fetchConfigData = function (curr) {
            $.post('/manage/list_agent', {
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
            var data = res.agentList;
            $('#platform_config .table tbody').empty();
            for (var i in data) {
                var tr_id = data[i].agentId,              //ID
                		tr_name = data[i].name,                            //姓名
                        tr_age = data[i].age,             //年龄
                        tr_account = data[i].account,		//账户
                        tr_password = data[i].password,
                        tr_sex = "";              //性别
                if (data[i].sex==1) {
                	tr_sex="男";
                }else if(data[i].sex==2){
                	tr_sex="女";
                }else{
                	tr_sex="嬲";
                }
                var     tr_year = data[i].year,  //入行年份
                        tr_phone = data[i].phone,            //电话
                        tr_email = data[i].email,			//邮箱
                        tr_introduction = data[i].introduction,//介绍
                        tr_company = data[i].company,    //公司
                        tr_photoUrl = data[i].photoUrl,             //照片地址
                        tr_state = data[i].state, //启用与否
                        table_content = '<tr data-secret="' + tr_id + '" data-account="'+ tr_account+'"data-password="'+ tr_password+'"data-email="'+tr_email+'"data-year="'+tr_year+'">\
                                    <td class="tr_name">' + tr_name + '</td>\
                                    <td class="tr_age">' + tr_age + '</td>\
                                    <td class="tr_sex">' + tr_sex + '</td>\
                                    <td class="tr_company">' + tr_company + '</td>\
                                    <td class="tr_introduction" style="display:none">' + tr_introduction + '</td>\
                                    <td class="tr_photoUrl"><img width="80px" src="' + tr_photoUrl + '"></td>',
                        table_operation = '',
                        table_row = '';
                if (tr_state == 2) { //被禁用
                    table_operation = '<td><a class="tr_info" style="cursor:pointer" data-toggle="modal" data-target="#info">详情</a>\
                                    <a class="tr_allow" style="cursor:pointer" data-toggle="modal">启用</a>&nbsp;<a class="tr_set" style="cursor:pointer" data-toggle="modal" data-target="#set">修改</a>\
                                </td>';
                } else if (tr_state == 1) { //已启用
                    table_operation = '<td><a class="tr_info" style="cursor:pointer" data-toggle="modal" data-target="#info">详情</a>\
                                    <a class="tr_forbid" style="cursor:pointer" data-toggle="modal">禁用</a>&nbsp;<a class="tr_set" style="cursor:pointer" data-toggle="modal" data-target="#set">修改</a>\
                                </td>';
                } else {
                    table_state = '<td>你谁啊</td>';
                    table_operation = '<td></td>';
                }
                table_row = table_content + '<td class="tr_phone">'+tr_phone+'</td>' + table_operation + '</tr>';
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
                alert("页码超出范围");
            }
            $('#jump_input').val('');
        });

        $('#sure-add').click(function () {
            var obj=$(this).parent().parent().find("section");
            if(
            check($('#add_account').val(),"empty",obj)&&
            check($('#add_name').val(),"empty",obj)&&
            check($('#add_password').val(),"empty",obj)&&
            check($('#add_name').val(),"chinaName",obj)&&
            check($('#add_password').val(),"password",obj)&&
            check($('#add_age').val(),"age",obj)&&
            check($('#add_email').val(),"email",obj)&&
            check($('#add_phone').val(),"phone",obj)&&
            check($('#add_company').val(),"company",obj)&&
            check($('#add_year').val(),"year",obj)&&
            check($('#add_introduction').val(),"introduction",obj)
            ){
            	var sexs = $('#add_sex').val();
            	if (sexs=="男")
            	 {
            	 	sexs="1";
            	 }else if(sexs=="女"){
            	 	sexs="2";
            	 }else{
            	 	tip("请输入您的真实性别",obj);
                    return false;
            	 }
                var addVal = {
                    account: $('#add_account').val(),
                    name: $('#add_name').val(),
                    password: $('#add_password').val(),
                    age: $('#add_age').val()||0,
                    sex: sexs,
                    email: $('#add_email').val()||"",
                    phone: $('#add_phone').val()||"",
                    introduction: $('#add_introduction').val()||"",
                    company: $('#add_company').val().replace(/\s*on[a-z]+\s*=\s*("[^"]+"|'[^']+'|[^\s]+)\s*/ig,"")||"四川华迪公司",
                    year: $('#add_year').val()||"",
                    photoUrl:$('#add .photo_img').attr("src")||"/public/img/logo.jpg"
                };
                postEvent('/manage/add_agent', addVal);
            }
        });

        var btnEvent = function () {
            //修改,填充表单
            $('.tr_set').unbind().click(function () {
                var set_row = $(this).parent('td').parent('tr'),
                id = set_row.attr('data-secret'),
                account =  set_row.attr('data-account'),
                name = set_row.children('.tr_name').text(),
                password = set_row.attr('data-password'),
                age = set_row.children('.tr_age').text(),
                sex = set_row.children('.tr_sex').text(),
                email = set_row.attr('data-email'),
                phone = set_row.children('.tr_phone').text(),
                introduction = set_row.children('.tr_introduction').text(),
                company = set_row.children('.tr_company').text(),
                year = set_row.attr('data-year'),
                photoUrl = set_row.children('.tr_photoUrl').children().attr('src');
                $('#set_id').val(id);
                $('#set_account').val(account);
                $('#set_name').val(name);
                $('#set_password').val(password);
                $('#set_age').val(age);
                $('#set_sex').val(sex);
                $('#set_email').val(email);
                $('#set_phone').val(phone);
                $('#set_introduction').val(introduction);
                $('#set_company').val(company);
                $('#set_year').val(year);
                $('#set .photo_img').attr("src",photoUrl);
            });
            $('.tr_info').unbind().click(function () {
                var set_row = $(this).parent('td').parent('tr'),
                id = set_row.attr('data-secret'),
                account =  set_row.attr('data-account'),
                name = set_row.children('.tr_name').text(),
                password = set_row.attr('data-password'),
                age = set_row.children('.tr_age').text(),
                sex = set_row.children('.tr_sex').text(),
                email = set_row.attr('data-email'),
                phone = set_row.children('.tr_phone').text(),
                introduction = set_row.children('.tr_introduction').text(),
                company = set_row.children('.tr_company').text(),
                year = set_row.attr('data-year'),
                photoUrl = set_row.children('.tr_photoUrl').children().attr('src');
                $('#info_id').text(id);
                $('#info_account').text(account);
                $('#info_name').text(name);
                $('#info_password').text(password);
                $('#info_age').text(age);
                $('#info_sex').text(sex);
                $('#info_email').text(email);
                $('#info_phone').text(phone);
                $('#info_introduction').text(introduction);
                $('#info_company').text(company);
                $('#info_year').text(year);
                $('#info .photo_img').attr("src",photoUrl);
            });

            $('#sure-set').unbind().click(function () {
                var obj=$(this).parent().parent().find("section");
                if(
                check($('#set_account').val(),"empty",obj)&&
                check($('#set_name').val(),"empty",obj)&&
                check($('#set_password').val(),"empty",obj)&&
                check($('#set_name').val(),"chinaName",obj)&&
                check($('#set_password').val(),"password",obj)&&
                check($('#set_age').val(),"age",obj)&&
                check($('#set_email').val(),"email",obj)&&
                check($('#set_phone').val(),"phone",obj)&&
                check($('#set_company').val(),"company",obj)&&
                check($('#set_year').val(),"year",obj)&&
                check($('#set_introduction').val(),"introduction",obj)
                ){
                	var sexs = $('#set_sex').val();
    	        	if (sexs=="男")
    	        	 {
    	        	 	sexs="1";
    	        	 }else if(sexs=="女"){
    	        	 	sexs="2";
    	        	 }else{
    	        	 	sexs="3"
    	        	 }
                    var setPlatformVal = {
                        agentId: $('#set_id').val(),
                        account:$('#set_account').val(),
                        password:$('#set_password').val(),
                        name:$('#set_name').val(),
                        age:$('#set_age').val()||0,
                        sex:sexs,
                        phone:$('#set_phone').val()||"",
                        email:$('#set_email').val()||"",
                        photoUrl:$('#set .photo_img').attr("src")||"/public/img/logo.jpg",
                        company:$('#set_company').val()||"四川华迪公司",
                        introduction:$('#set_introduction').val().replace(/\s*on[a-z]+\s*=\s*("[^"]+"|'[^']+'|[^\s]+)\s*/ig,"")||"",
                        year:$('#set_year').val()||""
                    };
                    postEvent('/manage/modify_agent', setPlatformVal);
                }
            });
			
			$('.tr_forbid').unbind().click(function () {
        		var set_row = $(this).parent('td').parent('tr'),
                ids = set_row.attr('data-secret');
                var setPlatformVal={
                	agentId:ids
                }
                postEvent('/manage/disable_agent', setPlatformVal);
            });
            $('.tr_allow').unbind().click(function () {
        		var set_row = $(this).parent('td').parent('tr'),
                ids = set_row.attr('data-secret');
                var setPlatformVal={
                	agentId:ids
                }
                postEvent('/manage/enable_agent', setPlatformVal);
            });
            $('.add_photoUrl').unbind().change(function(event) {  
                var formData = new FormData( document.getElementById("file-upload") );
                $.ajax({
                    url:'/upload/fileOfAgent',
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
                        alert("fail");
                    }
                });                  
            });
            $('.set_photoUrl').unbind().change(function(event) {  
                var formData = new FormData( document.getElementById("file-upload-2") );
                $.ajax({
                    url:'/upload/fileOfAgent',
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
                var data = jsondata;
                if (data.code == 200) {
                    alert('操作成功');
                    $('#add').modal('hide');
                    $('#set').modal('hide');
                    fetchConfigData(cur_page);
                } else {
                    alert("输入有误噢~");
                }
            },"json");
        }

        fetchConfigData(1);
        btnEvent();
    });
</script>
</body>
</html>
