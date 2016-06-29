﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invite_UserWeb.aspx.cs" Inherits="Web.Invite_UserWeb" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="BootstrapStyler">
	<title>猿圈 新增挑战邀请</title>

	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/bootstrapValidator.css" rel="stylesheet">
	<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
    <link href="css/summernote.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style_new.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    	

    </style>
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
					<li class="active">
						<a href="#">挑战管理</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<span class="text">

								
								
								
								北京交通大学.net课程天天优先公司
								

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
			<div class="col-md-9">
				<h2 class="h2-tab">[初级]Java工程师-邀请挑战</h2>
				<p class="text-muted">您可以邀请其他渠道获取的人才到猿圈，通过挑战来识别他们的能力。</p>
				<p style="color:#4A90E2">猿圈小提示：每邀请一位人才将会扣除1个猿民币。</p>
				<form id="invite_user_form" runat="server">
                    <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
					<input id="recruit_id" name="recruitId" value="3167" type="hidden">
					<div class="form-group" id="one">
						<label>
							<span class="grey">输入邮箱地址(剩余猿民币：<span id="su_resume_span_view_id">10</span>)</span>
						</label>
                        <br />
                        <asp:TextBox AutoCompleteType="Email" type="email" name="user_emails" lass="form-control" ID="To" data-bv-field="user_emails" runat="server" placeholder="多个邮件地址请用','分隔"></asp:TextBox>
						<br />
						<span class="text-muted">
							邮件将会单独发送给多个候选人。
					</span>
				</div>
				<span class="help-block has-error" id="hint_user_emails"><small class="help-block" data-bv-validator="emailAddress" data-bv-for="user_emails" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="user_emails" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式，多个邮件地址请用','分隔</small></span>
				<div class="form-group" id="two" style="display:none;">
					<label>
						<span class="grey">批量上传邮箱</span>
					</label>
					<a href="sys/img/batch-invite-example.xls" target="_blank" class="pull-right">下载其他渠道导入模板</a>
					<input name="emailFile" onchange="modify_hide_logo(this)" id="corp-pic" type="file" accept="" data-bv-field="emailFile">
					<span class="text-muted">
						不想导入？
						<a href="javascript:void(0);" onclick="change2()">输入邮箱</a>
					</span>
					<span class="help-block has-error" id="hint_emailFile"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="emailFile" data-bv-result="NOT_VALIDATED" style="display: none;">请上传邮箱文件</small></span>
				</div>


				<div>
					<div class="alert alert-success alert-dismissible" style="display: none;" role="alert" id="msg_tip">
						<strong>提示:</strong>
						<span id="msg_tip_span"></span>
					</div>
				</div>

					<!-- 
					<div id="tuijian_div">
						
					</div>
				-->
				<div class="form-group">
					<div class="col-md-12 col-no-left-padding">
						<label>
							<span class="grey">邮件主题</span>
						</label>
					</div>
                    <asp:TextBox runat="server" ReadOnly="true" ID="topic" Width="480px"></asp:TextBox>
					<!--input id="email_subject_id" readonly="" type="text" name="email_subject" class="form-control" value="[北京交通大学.net课程天天优先公司]-在线笔试邀请函" data-bv-field="email_subject">
					<!-- <span class="text-danger" id="error1" style="display:none;">请输入公司简称</span> -->
					<span class="help-block has-error" id="hint_email_subject"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email_subject" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件主题</small></span>
				</div>
				<div class="form-group">
					<label>
						<span class="grey">邮件内容</span>
					</label>
                    &nbsp;<span class="help-block has-error" id="hint_email_content"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email_content" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件内容</small><asp:TextBox runat="server" ID="content" TextMode="MultiLine" Text="我们非常高兴的通知您，通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了在线编程挑战，希望您能完成！" ReadOnly="true" Height="87px" Width="625px"></asp:TextBox>
					</span>&nbsp;</div>
				<div>
					<input id="user_emails_type" name="user_emails_type" type="hidden" value="-1">
				</div>
				<div class="form-group form-actions pull-right">
                    <asp:Button ID="invite" runat="server" Text="邀请" class="btn btn-new1" type="submit" OnClick="invite_Click"/>
					<a href="cooper/index.html" class="btn btn-default" style="margin-left:10px;">返回</a>
				</div>
			    </form>
		</div>
		<div class="col-md-3 profile-info" id="profile_info_div">




			<div class="panel-user">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="media">
							<a class="pull-left">
								<img src="cooper_img/2626/0d4ef216-1f9d-4bbf-b27b-3aa411716f3d.jpg" class="media-object">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									<!-- <span class="welcome">Hello</span> -->
									<span>北京交通大学.net课程天天优先公司</span>
								</h4>
								<span class="text-muted">
									<small>
										上次登录日期:
										<br>
										2016-05-11 00:24:00
									</small>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-outline panel-no-padding hidden-xs">
				<div class="panel-body">
					<div class="stat-block stat-danger">
						<div class="icon">
							<b class="icon-cover"></b>
							<i class="fa fa-bell"></i>
						</div>
						<div class="details">
							<div class="number">0</div>
							<div class="description">今日接受挑战人数</div>
						</div>
					</div>
					<div class="stat-block stat-success">
						<div class="icon">
							<b class="icon-cover"></b>
							<i class="fa fa-bar-chart-o"></i>
						</div>
						<div class="details">
							<div class="number">0</div>
							<div class="description">今日通过挑战人数</div>
						</div>
					</div>
					<div class="stat-block stat-primary">
						<div class="icon">
							<b class="icon-cover"></b>
							<i class="fa fa-tachometer"></i>
						</div>
						<div class="details">
							<div class="number">0</div>
							<div class="description">共帮您找到的人才</div>
						</div>
					</div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
	</div>
	<!-- /.row -->
</div>

	<script src="sys/js/libs/jquery-1.11.0.min.js"></script>
	<script src="sys/bootstrap/js/bootstrap.min.js?v=3.1.1"></script>
	<script src="sys/js/libs/jquery.sparkline.min.js"></script>
	<script src="sys/js/libs/bootstrap-switch.min.js?v=3.0.0"></script>
	<script src="sys/js/libs/bootstrap-select.min.js"></script>
	<script src="sys/js/libs/bootstrap-filestyle.js"></script>
	<script src="sys/js/libs/summernote.min.js"></script>
	<script type="text/javascript" src="sys/js/libs/jquery.city.select.js"></script>
	<script src="sys/js/libs/bootstrapValidator.min.js"></script>
	<script src="sys/js/libs/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="dev/pluginJs/jquery.form.js"></script>
	
	<script src="dev/pluginJs/cityselect/jquery.cityselect.js"></script>
	
	<script type="text/javascript" src="dev/pluginJs/jquery-confirm/jquery-confirm.min.js"></script>
	
	<script src="dev/pluginJs/fileinput/fileinput.min.js"></script>
	<script src="dev/pluginJs/fileinput/fileinput_locale_zh.js"></script>
	
	<script src="dev/pluginJs/zmUtil.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#profile_info_div").load("cooper/cooper_left_info.html");
	        $(".test div").click(function (e) {
	            e.preventDefault();
	            $(".test div").removeClass("active");
	            $(this).addClass("active");
	        });
	        $(".level-tag a").click(function (e) {
	            if ($(".active").length = 2) {
	                $("#new_challenge_btn_1").removeAttr("disabled");
	                $("#hint1").hide();
	            } else {
	                $("#new_challenge_btn_1").attr("disabled", "true");
	                $("#hint1").show();
	            }
	        });

	        $("#new_challenge_form_1").bootstrapValidator({
	        }).on("success.form.bv", function (e) {
	            e.preventDefault();
	            var $form = $(e.target);
	            $form.data("bootstrapValidator");
	            if ($Util.isEmpty($("#directions_id").val())) {
	                $("#hint1").html("请选择挑战类型");
	                $("#hint1").show();
	                return false;
	            }
	            if ($Util.isEmpty($("#level_id").val())) {
	                $("#hint1").html("请选择挑战等级");
	                $("#hint1").show();
	                return false;
	            }
	            $.post("cooper/new/recruit/save_new_recruit_1.html", $form.serialize(), function (data) {
	                if (data.su) {
	                    location.href = data.url;
	                } else {
	                    $("#hint1").html(data.msg);
	                }
	            }, "json");
	        });
	    });
	    function selectDirection(obj) {
	        $("#directions_id").val(obj);
	        $("#hint1").hide();
	        $("#new_challenge_btn_1").removeAttr("disabled");
	    };
	    function selectLevel(obj) {
	        $("#level_id").val(obj);
	        $("#hint1").hide();
	        $("#new_challenge_btn_1").removeAttr("disabled");
	    };
	    function go_to_import_job_url() {
	        location.href = "cooper/oxcoder_corp_in.html";
	    }
	</script>



</body>
</html>