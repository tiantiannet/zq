﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_tag_view.aspx.cs" Inherits="Web.Edit_tag_view" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 完善企业信息</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
<link href="css/summernote.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style_new.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

</head>
<body>
	

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="cooper/index.html" style="padding: 0;">
				<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="#">首页</a>
				</li>
				<li class="">
					<a href="#">人才推荐</a>
				</li>
				<li class="">
					<a href="#">挑战管理</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
							
								
								
								
									北京交通大学软件学院.NET课程股份有限公司
								
							
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">去打赏</a>
						</li>
						<li>
							<a href="#">企业信息</a>
						</li>
						<li>
							<a href="#">帐号设置</a>
						</li>
						<li>
							<a href="security_logout">注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div class="container">
		<div class="row">
            <form runat="server">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div id="content">
					<div class="row">
						<img src="img/corp_step2.png">
						<div class="tag-group" id="tag_list_div">
                                <asp:CheckBox ID="corp_box1" runat="server" Text="五险一金" class="btn btn-order" onclick="edit_tag(this, '2')"/>
		
                                <asp:CheckBox ID="corp_box2" runat="server" Text="年底双薪" class="btn btn-order" onclick="edit_tag(this, '2')"/>

							    <asp:CheckBox ID="corp_box3" runat="server" Text="股份期权" class="btn btn-order" onclick="edit_tag(this, '2')"/>
							
                                <asp:CheckBox ID="corp_box4" runat="server" Text="年终分红" class="btn btn-order" onclick="edit_tag(this, '2')"/>

                                <asp:CheckBox ID="corp_box5" runat="server" Text="绩效奖金" class="btn btn-order" onclick="edit_tag(this, '2')"/>
						
                                <asp:CheckBox ID="corp_box6" runat="server" Text="岗位晋升" class="btn btn-order" onclick="edit_tag(this, '2')"/>

							    <asp:CheckBox ID="corp_box7" runat="server" Text="年度旅游" class="btn btn-order" onclick="edit_tag(this, '2')"/>
							
                                <asp:CheckBox ID="corp_box8" runat="server" Text="弹性工作" class="btn btn-order" onclick="edit_tag(this, '2')"/>

                                
						</div>
						<div class="form-group">
						</div>
						<div class="tag-group" id="tag_list_cooper_div">
							
								<span class="text-danger">请选择最有竞争力的3个标签</span>
							
							
						</div>		
							<span class="text-danger" id="error_tag_span"></span>
						<div class="form-group form-actions pull-right">
							<!-- <a href="cooper/index.html" class="btn btn-link" style="border-radius: 3px; font-size: 20px;">跳过</a> -->
							<a href="javascript:void(0)">
                                <asp:Button ID="save_Next" runat="server" Text="保存&amp;下一步" type="button" class="btn btn-new1 btn-lg" style="border-radius: 3px;" OnClick="save_Next_Click"/>
							</a>
						</div>
					</div>
					<!-- /.row -->
				</div>
			</div>
          </form>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<div class="container">

		<h4>页面说明：</h4>
		<ol>
			<li>该页面中需要选择三个标签来描述企业，多于三个或少于三个均不能提交</li>
			<li>可以在添加自定义标签中填写标签并添加</li>
			<li>点击“保存/下一步”按钮提交表单</li>
		</ol>   
	</div> 	

	<script src="sys/js/libs/jquery-1.11.0.min.js"></script>
	<script src="sys/bootstrap/js/bootstrap.min.js?v=3.1.1"></script>
	<script src="sys/js/libs/jquery.sparkline.min.js"></script>
	<script src="sys/js/libs/bootstrap-switch.min.js?v=3.0.0"></script>
	<script src="sys/js/libs/bootstrap-select.min.js"></script>
	<script src="sys/js/libs/bootstrap-filestyle.js"></script>
	<script src="sys/js/libs/summernote.min.js"></script>
	
	<script type="text/javascript" src="dev/pluginJs/jquery-confirm/jquery-confirm.min.js"></script>
	<script type="text/javascript">
	    function edit_tag(obj, type) {
	        var tag = "";
	        if (1 == type) {
	            tag = $("#" + obj).val();
	        } else if (2 == type) {
	            tag = $(obj).html();
	        }
	        $.ajax({
	            url: "cooper/cooperInfo/edit_tag.html",
	            type: "POST",
	            data: { "tag": tag },
	            success: function (data) {
	                data = eval("(" + data + ")");
	                if (data.su) {
	                    location.href = data.url;
	                } else {
	                    // 您只能选择3个标签，要选择最有竞争力的3个呦~
	                    $("#error_tag_span").html(data.msg);
	                }
	            },
	            error: function () {
	                $.alert({
	                    title: "Alert!",
	                    content: data.msg
	                });
	            }
	        });
	    }
	    function removeTag(obj) {
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: "cooper/cooperInfo/remove_tag.html",
	            data: { "tagValue": obj },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").html(data.msg);
	                    $("#hint1").show();
	                }
	            },
	            error: function (request) {
	                $("#hint1").html(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	    $(document).ready(function () {

	    });
	</script>
</body>
</html>