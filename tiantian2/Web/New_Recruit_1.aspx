<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Recruit_1.aspx.cs" Inherits="Web.New_Recruit_1" %>

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
    	.level-tag {
    		border: 1px solid #efefef;
    	}
    	.active .panel {
    		background-color: #eee;
    	}
    	@media ( min-width : 768px) {
    		.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
    			width: 20%;
    			*width: 20%;
    		}
    	}
    	@media ( min-width : 1200px) {
    		.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
    			width: 20%;
    			*width: 20%;
    		}
    	}
    	@media ( min-width : 768px) and (max-width: 979px) {
    		.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
    			width: 20%;
    			*width: 20%;
    		}
    	}

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
			<div class="col-md-12">
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-9 profile-stream">
								<div class="page-header row">
									<div class="col-md-12 col-no-left-padding">
										<h3 style="display: inline-block;float: left;">新增挑战邀请</h3>
										<label style="font-weight: 100;float: right;margin-top: 20px;">如果您已经在别的招聘网站发了职位，那么您可以直接 <a onclick="go_to_import_job_url()" href="javascript:go_to_import_job_url()" style="background-color:#fff;color:#3498db;border: none;">导入企业职位<span class="glyphicon glyphicon-chevron-right"></span></a></label>
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<div style="text-align:center;margin-bottom:20px;">
											<img src="img/nc1.png">
										</div>
										<form id="new_challenge_form_1" method="post" class="form-horizontal" runat ="server">
											<input name="direction" id="directions_id" value="" type="hidden">
											<input name="level" id="level_id" value="" type="hidden">
											<h4 class="col-md-12 col-no-left-padding">请选择挑战类型</h4>
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                    <asp:ListItem Value="Java" Selected="True"><img style="width:64px;height:64px" src="img/java.png">Java</asp:ListItem>
                                                    <asp:ListItem Value="Android"><img style="width:64px;height:64px" src="img/android.png">Android</asp:ListItem>
                                                    <asp:ListItem Value="iOS"><img style="width:64px;height:64px" src="img/apple.png">iOS</asp:ListItem>
                                                    <asp:ListItem Value="C"><img style="width:64px;height:64px" src="img/c.png">C</asp:ListItem>
                                                    <asp:ListItem Value="C++"><img style="width:64px;height:64px" src="img/cpp.png">C++</asp:ListItem>
                                                    <asp:ListItem Value="php"><img style="width:64px;height:64px" src="img/php.png">php</asp:ListItem>
                                                    <asp:ListItem Value="Python"><img style="width:64px;height:64px" src="img/python.png">Python</asp:ListItem>
                                                </asp:RadioButtonList>
												
											<h4 class="col-md-12 col-no-left-padding">
												<label style="font-weight: 100;">
                                                    <asp:CheckBox ID="is_camera" runat="server" /> 使用随机拍照功能
												</label>
											</h4>
											<span class="col-md-12 col-no-left-padding text-muted">使用该功能后，将开启参加挑战人员的摄像头，保证人员的真实性，但会在一定程度上减少参加挑战的人数。</span>
											<h4 class="col-md-12 col-no-left-padding">
												<label style="font-weight: 100;">
                                                    <asp:CheckBox ID="is_public" runat="server" Checked="true"/>设为公开挑战
												</label>
											</h4>
											<span class="col-md-12 col-no-left-padding text-muted">选择公开挑战，您发布的挑战将在首页显示，猿圈用户的可自由开始挑战；若不选择，用户只有您邀请后才可开始挑战。</span>
											<hr>
											<div class="form-group form-actions col-md-12 col-no-left-padding">
												<span class="help-block has-error">
													<small style="margin-left: 20px; display: none;" id="hint1" class="help-block">请选择挑战类型及等级</small>
												</span>
												<div class="align-center">
                                                    <asp:Button ID="new_challenge_btn_1" runat="server" class="btn btn-new1" type="submit" Text="保存&amp;下一步" OnClick="new_challenge_btn_1_Click" />
					
												</div>
											</div>
										</form>
									</div>
									<!--/.row   -->
								</div>
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
															2016-05-10 22:09:09
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
					</div>
					<!-- /#content -->
				</section>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<!-- 引入footer -->


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