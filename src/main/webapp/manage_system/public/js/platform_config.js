$(function() {
    alert('111');
    //分页
    function fetchConfigData(curr){
        $.getJSON('/Operation/Platform/getPlatform', {
            page: curr || 1 ,
        }, function(res){
            createTable(res);
            //显示分页
            laypage({
                cont: 'page', //分页容器
                pages: res.total_page, //总页数
                curr: curr || 1, //当前页
                jump: function(obj, first){ //分页后的回调，点击跳页触发函数自身，并传递当前页：obj.curr
                    //一定要加此判断，否则初始时会无限刷新
                    if(!first){ 
                        fetchConfigData(obj.curr);
                    }
                }
            });
        });
    };

    
    

    //加载表格
    var createTable = function(res) {
        var data = res.data;
        $('#platform_config .table tbody').empty();            
        for(var i in data) {
            var tr_operator_id = data[i].operator_id,              //开发者应用ID
                tr_original_id = data[i].original_id,              //原始ID
                tr_platform_id = data[i].platform_id,              //平台id
                tr_type = data[i].type,                            //角色
                tr_wechat_account_id = data[i].wechat_account_id,  //微信号
                tr_wechat_appid = data[i].wechat_appid,            //开发者ID
                tr_wechat_appsecret = data[i].wechat_appsecret,    //开发者密钥
                tr_wechat_name = data[i].wechat_name,              //微信名称

                table_content = '<tr data-secret="'+tr_wechat_appsecret+'">\
                            <td class="tr_platform_id">'+tr_platform_id+'</td>\
                            <td class="tr_wechat_name">'+tr_wechat_name+'</td>\
                            <td class="tr_wechat_account_id">'+tr_wechat_account_id+'</td>\
                            <td class="tr_original_id">'+tr_original_id+'</td>\
                            <td class="tr_wechat_appid">'+tr_wechat_appid+'</td>',

                table_type = '',
                table_operation = '',
                table_row = '';
                if (tr_type === '1') { //运营
                    table_type = '<td>运营</td>';
                    table_operation = '<td></td>';
                } else if(tr_type === '2') { //管理员
                    table_type = '<td>管理员</td>';
                    table_operation = '<td>\
                            <a class="tr_setPlatform" href="javascript:void(0)" data-toggle="modal" data-target="#setPlatform">修改</a>\
                            <a href="javascript:void(0)">删除</a>\
                        </td>'
                } else { 
                    table_type = '<td>未知生物</td>';
                    table_operation = '<td></td>';
                }
            table_row = table_content + table_type + table_operation + '</tr>';
            $('#platform_config .table tbody').append(table_row);
            btnEvent();
    
        }
    }


    $('#sure-addPlatform').click(function() {
        alert('222');
        var addPlatformVal = {
            original_id : $('#add_original_id').val(),
            wechat_appid : $('#add_wechat_appid').val(),
            wechat_appsecret : $('#add_wechat_appsecret').val(),
            wechat_name : $('#add_wechat_name').val(),
            wechat_account_id : $('#add_wechat_account_id').val() 
        };
        postEvent('/Operation/Platform/addPlatform',addPlatformVal);
    });
    
    var btnEvent = function() {
        //修改,填充表单
        $('.tr_setPlatform').unbind().click(function() {
            var set_row = $(this).parent('td').parent('tr'),
                set_platform_id = set_row.children('.tr_platform_id').text(),
                set_original_id = set_row.children('.tr_original_id').text(),
                set_wechat_appid = set_row.children('.tr_wechat_appid').text(),
                set_wechat_appsecret = set_row.attr('data-secret'),
                set_wechat_name = set_row.children('.tr_wechat_name').text(),
                set_wechat_account_id = set_row.children('.tr_wechat_account_id').text();
            $('#set_platform_id').val(set_platform_id);
            $('#set_original_id').val(set_original_id);
            $('#set_wechat_appid').val(set_wechat_appid);
            $('#set_wechat_appsecret').val(set_wechat_appsecret);
            $('#set_wechat_name').val(set_wechat_name);
            $('#set_wechat_account_id').val(set_wechat_account_id);
        })
    }
    $('#sure-setPlatform').click(function() {
        var setPlatformVal = {
            pid : $('#set_platform_id').val(),
            original_id : $('#set_original_id').val(),
            wechat_appid : $('#set_wechat_appid').val(),
            wechat_appsecret : $('#set_wechat_appsecret').val(),
            wechat_name : $('#set_wechat_name').val(),
            wechat_account_id : $('#set_wechat_account_id').val() 
        };
        postEvent('/Operation/Platform/setPlatform',setPlatformVal);
    });

    var postEvent = function(url,obj){
        $.post(url, obj, function(jsondata) {
                var data = $.parseJSON(jsondata);
                if (data.status === 1) {
                    alert('操作成功');
                    $('.modal').hide();
                } else {
                    alert('发送失败，换个姿势再试试呗');
                }
        });
    }
   
    fetchConfigData(1);
    btnEvent();


});