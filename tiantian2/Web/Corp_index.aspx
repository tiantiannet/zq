<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Corp_index.aspx.cs" Inherits="Web.corp_index" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="BootstrapStyler">
	<title>猿圈 企业首页</title>
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/bootstrapValidator.css" rel="stylesheet">
	<link href="css/summernote.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/style_new.css" rel="stylesheet">

	<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
	<!-- Max css -->
	<style type="text/css">
		.sub-action{
			margin-right:10px;padding-right:10px;border-right:1px solid #ccc;
		}
		.sub-action:last-child{
			margin-right:10px;padding-right:10px;border-right:none;
		}
		.top{
			display:block;border:1px solid #d1dade;padding:0;
		}
		.top .stat{
			border-right:1px solid #d1dade;list-style:none;padding:10px 15px;display:block;
		}
		.top .stat ul{
			list-style: none;
			padding: 0;
			font-size: 13px;
		}
		.ac-group{
			padding:0;margin-top:20px;
		}
		.ac-group .panel-title{
			font-weight: bold;
			color: #555;
		}
		.ac-group .panel-title img{
			padding-right: 10px;
		}
		.ac-group .panel-body{
			background-color: #F7F7F7;
		}
		.mcButton{
			margin-top: 15px;
		}
	</style>
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
					<a class="navbar-brand hidden-sm" href="coop_index.html" style="padding: 0;">
						<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
					</a>
				</div>
				<div class="navbar-collapse collapse" role="navigation">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="cooper/oxcoder_corp_index.html">首页</a>
						</li>
						<li class="">
							<a href="cooper/recommended/talent/index.html">人才推荐</a>
						</li>
						<li class="">
							<a href="cooper/index.html">挑战管理</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
								<span class="text">




									北京交通大学软件学院.NET课程股份有限公司


								</span>
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="cooper/pay/view_balance.html">去打赏</a>
								</li>
								<li>
									<a href="cooper/cooperInfo/view_cooper_info.html">企业信息</a>
								</li>
								<li>
									<a href="cooper/cooperInfo/account_binding.html">帐号设置</a>
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
					<div class="col-md-9">

									<div class="col-md-12 ac-group shadow-effect">
										<div class="panel panel-default" style="margin-bottom:0;">
											<div class="panel-heading">
												<h3 class="panel-title"><img src="img/challengemg.png">挑战管理</h3>
											</div>
											<div class="panel-body">
												<a href="New_Recruit_1.aspx" class="sub-action">新增挑战邀请</a><!--  <a href="cooper/recommended/talent/index.html" class="sub-action">筛选人才</a>--><a href="Invite_UserWeb.aspx" class="sub-action">邀请人才参加挑战</a>
											</div>
											<div class="panel-heading">
												<h3 class="panel-title"><img src="img/recommend.png">人才推荐</h3>
											</div>
											<div class="panel-body">
												<a href="cooper/recommended/talent/index.html" class="sub-action">人才推荐</a><a href="cooper/recommended/talent/index.html?isViewedTalent=true" class="sub-action">已查看人才</a>
											</div>
											<div class="panel-heading">
												<h3 class="panel-title"><img src="img/control.png">控制面板</h3>
											</div>
											<div class="panel-body">
												<a href="cooper/pay/view_balance.html" class="sub-action">去打赏</a><a href="cooper/cooperInfo/view_cooper_info.html" class="sub-action">修改企业信息</a><a href="cooper/cooperInfo/account_binding.html" class="sub-action">帐号设置</a>
											</div>
										</div>
									</div>
								</div>
                					<div id="ele" runat="server">
                    </div>

	</div>
</div>
<!-- /.row -->
</div>
<!-- /.container -->




<script src="sys/js/libs/jquery-1.11.0.min.js"></script>
<script src="sys/bootstrap/js/bootstrap.min.js?v=3.1.1"></script>
<script src="sys/js/libs/jquery.sparkline.min.js"></script>
<script src="sys/js/libs/bootstrap-switch.min.js?v=3.0.0"></script>
<script src="sys/js/libs/bootstrap-select.min.js"></script>
<script src="sys/js/libs/bootstrap-filestyle.js"></script>
<script src="sys/js/libs/summernote.min.js"></script>
<script src="sys/js/styler/script.js"></script>

<script type="text/javascript" src="dev/devJs/pagination.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#profile_info_div").load("cooper/cooper_left_info.html");
    });
    $PageCtrl.callBackFun = recruitPageTurn;
    function recruitPageTurn(pCode) {
        location.href = "/cooper/index.html?pageCode=" + pCode + "&isHistory=" + $("#isHistory_id").val();
    }
</script>
<!-- 引入footer 必须在下边否则js出错 -->





<div class="afooter" style="">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				© 2016 oxcoder.com
				<a href="contactus.html">联系我们</a>
				<a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a>
				<a href="http://form.mikecrm.com/f.php?t=rJmyZe" target="_blank">意见反馈</a>
				<script type="text/javascript">
				    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
				    document.write(
						unescape(
							"%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
							+ cnzz_protocol
							+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"
							)
						);
					</script>
				</div>
			</div>
		</div>
	</div>

<div class="container">

	<h4>页面说明：</h4>
	<ol>
		<li>页面上方显示当前正在发布中的挑战、今天接受的挑战数以及剩余的猿民币</li>
		<li>点击“新增挑战邀请”跳转到新增挑战页面，如果还可发布的挑战数已经用尽则需要花费猿民币进行发布</li>
		<li>点击“查看挑战报告”则会跳转到挑战报告的页面</li>
		<li>点击“查看推荐人才”则会跳转到推荐人才页面</li>
		<li>下方的挑战管理、人才推荐的功能和上面的基本相同</li>
		<li>在控制面板中，可以通过“去打赏”对网站进行打赏并获得更多的猿民币；点击“修改企业信息”则跳转到企业信息修改页面；点击“账号设置”可对当前企业的账号进行设置</li>
		<li>页面右侧显示当前企业的相关信息</li>
		<li>在导航栏的右侧，点击企业用户名会弹出下拉菜单，在这里也可以进行打赏、企业信息修改以及账号信息修改</li>
	</ol>   
</div> 
	<script type="text/javascript">
	    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
	    window.onload = function () {
	        if (($(document.body).height() + 50) < $(window).height()) {
	            $(".afooter").addClass("navbar-fixed-bottom");
	        };
	    }
</script>
<script type='text/javascript' src='http://tb.53kf.com/kf.php?arg=10124917&style=1'></script>


</body>
</html>
