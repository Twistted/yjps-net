<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <title>二手房电子商务交易平台</title>
   <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
   <link rel="shortcut icon" type="image/x-icon" href="http://lianjia.com/favicon.ico" />
   <link href="/public/css/sh-house-css.css" rel="stylesheet">
   <link href="/public/css/reset.css" rel="stylesheet">
   <link href="/public/css/laypage.css" rel="stylesheet">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<!--导航-->
	<header>
		<div class="nav-wrap"></div>
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

	<!--中间列表部分-->
	<div class="contain">
		<div class="con-box">
			<div class="list-head clear">
				<h2>
					共有
					<span>0</span>
					套二手房房源
				</h2>
				<div class="view-type">
					
					<div class="modeshows">
						<span id="lshow" class="l-show view-mod" data-type="real">
							<i></i>
							实景图模型
						</span>
					</div>
					<div class="modeshows">
						<span id="hshow" class="h-show view-mod" data-type="layout">
							<i></i>
							户型图模型
						</span>
						<label class="ico ico-new"></label>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="list-wrap">
			<ul id="house-1st" class="house-1st" data-bl="list">
				<c:if test="${!empty houseList }">
					<c:forEach var="house" items="${houseList}" >
						<li data-index="0" data-log-index="1" data-id="a0000001">
							<div class="pic-panel">
								<a target="_blank" href="/house/house?id=${house.houseId}" data-el="ershoufang" rel="nofollow">
									<img class="lj-lazy" src="http://image1.ljcdn.com/approl/group3/M00/14/88/rBAF7VdNi0OAB9GwAACemQLD8oA831.jpg.280x210.jpg" alt="pic1" style="display:inline;"></img>
								</a>
							</div>
							<div class="info-panel">
								<h2>
									<a target="_blank" href="/house/house?id=${house.houseId}" data-el="ershoufang" title="${house.title}">${house.title}</a>
								</h2>
								<div class="col-1">
									<div class="where">
										<a class="laisuzhou" href="#" data-el="xiaoqu">
											<span class="">弘吉雅居</span>
										</a>
										<span class="">
											<span>${house.roomAmount}室${house.livingroomAmount}厅</span>
										</span>
										<span class="">${house.area}平</span>
										<span>南</span>
									</div>
									<div class="other">
										<div class="con">
											<a href="#" data-el="region">五大花园二手房</a>
											<span>/</span>
											高楼层(共11层)
											<span>/</span>
											${house.year}年建板楼
										</div>
									</div>
									<div class="chanquan">
										<div class="left agency">
											 
												<div class="view-label left">
													<span class="fang05"></span>
													<span class="fang05-ex">
														<span>金阳小学</span>
													</span>
													<span class="taxfree"></span>
													<span class="taxfree-ex">
														<span>满五年唯一</span>
													</span>
													<span class="unique"></span>
													<span class="unique-ex">
														<span>独家</span>
													</span>
													<span class="haskey"></span>
													<span class="haskey-ex">
														<span>随时看房</span>
													</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-3">
									<div class="price">
										<span class="num">${house.prize.intValue()}</span>
										万
									</div>
									<div class="price-pre">${(house.prize/house.area*10000).intValue()}元/m2</div>
								</div>
								<div class="col-2">
									<div class="square">
										<div>
											<span class="num">82</span>
											人
										</div>
										<div class="col-look">看过此房</div>
									</div>
								</div>
								
						</div>
					</c:forEach>
				</c:if>
			</ul>
			<div class="page-box">
				<a href="" class="on">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<span>...</span>
				<a href="">100</a>
				<a href="">下一页</a>
			</div>
		</div>
		<div class="house-commend">
			<div class="detail-title">
				<h3>推荐楼盘</h3>
			</div>
			<div class="show-content">
				<ul>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
					<li>
						<a class="pic" href="/public/img/commend00.jpg">
							<img src="/public/img/commend00.jpg">
							<div class="bg"></div>
							<div class="description">
								<span class="title" title="青羊－朗诗西溪里">青羊－朗诗西溪里</span>
								<span class="type">普通住宅</span>
							</div>
						</a>
						<p class="price">
							<span class="average">均价：<span>11500</span>元/平</span>
						</p>
						<p class="area">4居/3居/2居 - 54~88平</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--最后-->
		<footer class="footer" >
		<div class="wrapper">
			<div class="f-title">
				<div class="fl">
					<ul width="500px">
						<li width="100px">
							<a href="#">了解易居网</a>
						</li>
						<li width="100px">
							<a href="#">关于易居</a>
						</li>
						<li>
							<a href="#">联系我们</a>
						</li>
						<li>
							<a href="#">加入我们</a>
						</li>
						<li>
							<a href="#">隐私声明</a>
						</li>
						<li>
							<a href="#">经纪人登录</a>
						</li>
						<li>
							<a href="#">友情链接</a>
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
	<script src="/public/js/laypage.js"></script>
	<script src="/public/js/jquery-2.1.4.min.js"></script>
	<script>
	
		$(document).ready(function(){
			console.log("${pageSize}");
			console.log("${listSize}");
			console.log("${abvertisementList}");
			console.log("${houseList[2]}");
		});
	</script>
	<script>
    $(function () {
        var cur_keyword='';
        var cur_page = 1, cur_status = '';
        var reset_tr_id=-1;
        var del_tr_id=-1;
        var pnode; 
        //分页
        /*function fetchRegData(curr,status,keyword) {
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

        fetchRegData(1);*/
    });
</script>
</body>
</html>