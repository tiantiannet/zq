<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_center.aspx.cs" Inherits="Web.User_center" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 用户中心</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
<link href="css/summernote.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style_new.css" rel="stylesheet">

<!-- Max css -->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.center {
	text-align: center;
}
/*#sina {
     background-image:url("img/sina.png");
 }
 #sina:hover img{
     background-image:url("img/sina.png");
 } */
.img-hide {
	text-align: left;
	height: 0;
	background: rgba(0, 0, 0, 0.5);
	display: none;
}

.img-hide a {
	color: #fff;
}

.img-hide a:visited {
	color: #fff;
}

.center:hover .img-hide {
	cursor: pointer;
	height: 48px;
	padding: 10px;
	width: 48px;
	border-radius: 24px;
	position: absolute;
	top: 0;
	display: table-cell;
}

.center:hover .img-show {
	height: 0;
}
.box {
    padding:10px;
    border: solid 1px #ddd;
}
</style>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top" id="navbar">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-sm" href="#" style="padding: 0;">
					<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
				</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li class="">
						<a href="user/index.html">首页</a>
					</li>
					<li class="">
						<a href="user/recruit/user_recruit.html">挑战</a>
					</li>
					<li class="">
						<a href="user/drivingRange/index.html">练习场</a>
					</li>
					<li class="">
						<a href="user/learnCalendar/index.html">学习日历</a>	
					</li>
					<li class="active">
						<a href="user_center.html">个人中心</a>
					</li>
					<li class="">
						<a href="user/info/user_resume.html">个人简历</a>
					</li>
					<li class="">
						<a href="competition_info.html">编程大赛</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown" id="drop_down_nav">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<b class="caret"></b>
						</a>

						<ul class="dropdown-menu">
							<li>
								<a href="user/info/account_binding.html">帐号设置</a>
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
				<section id="middle">
					<div class="panel panel-default resume-block">
						<div>
							<!-- <h4>Level 1 菜鸟</h4> -->
							<input type="hidden" value="0" id="avg_code_quality">
							<input type="hidden" value="0" id="avg_code_style">
							<input type="hidden" value="0" id="avg_code_accuracy">
							<input type="hidden" value="0" id="avg_code_speed">
							<input type="hidden" value="56.59" id="qualityAll">
							<input type="hidden" value="50.52" id="styleAll">
							<input type="hidden" value="57.02" id="accuracyAll">
							<input type="hidden" value="70.28" id="speedAll">
						</div>
					</div>
						<div class="alert alert-info" role="alert">
							暂无挑战数据，快去做挑战吧
						</div>				
				</section>
			</div>
					<div id="ele" runat="server">
                    </div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer"></footer>


	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/npm.js"></script>
	<script src="js/bootstrapValidator.js"></script>
	<script src="sys/js/styler/script.js"></script>
	<!-- Chart.js  -->
	<script src="sys/js/chart.min.js"></script>
	
	<script src="dev/pluginJs/zmUtil.js"></script>
	<script>
	    var jsonMap = {};

	</script>
	
	<script type="text/javascript" src="dev/devJs/user/user_center.js"></script>
</body>
</html>