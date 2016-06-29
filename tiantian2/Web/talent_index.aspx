<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="talent_index.aspx.cs" Inherits="Web.talent_index" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 人才推荐</title>
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

<style type="text/css">
	a{
		text-decoration: none;
	}
</style>


<body>


<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="cooper_index.html" style="padding: 0;">
				<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="cooper/oxcoder_corp_index.html">首页</a>
				</li>
				<li class="active">
					<a href="cooper/recommended/talent/index.html">人才推荐</a>
				</li>
				<li class="">
					<a href="cooper/index.html">挑战管理</a>
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
				<div class="col-xs-12 col-no-left-padding page-header">
					<h2 class="h2-tab">
						<a href="#">人才推荐</a>
					</h2>
					<h2 class="h2-tab">
						<a href="#" class="off">已查看人才</a>
					</h2>
					<div>
						技术方向：
						<a href="cooper/recommended/talent/index.html?direction=0" class="btn btn-order active">全部</a>
						
							<a href="cooper/recommended/talent/index.html?direction=1" class="btn btn-order ">Java</a>
						
							<a href="cooper/recommended/talent/index.html?direction=2" class="btn btn-order ">Android</a>
						
							<a href="cooper/recommended/talent/index.html?direction=3" class="btn btn-order ">iOS</a>
						
							<a href="cooper/recommended/talent/index.html?direction=4" class="btn btn-order ">C语言(beta)</a>
						
							<a href="cooper/recommended/talent/index.html?direction=5" class="btn btn-order ">C++(beta)</a>
						
							<a href="cooper/recommended/talent/index.html?direction=6" class="btn btn-order ">php(beta)</a>
						
							<a href="cooper/recommended/talent/index.html?direction=7" class="btn btn-order ">Python(beta)</a>
						
						<p style="margin-top:30px;color:#4A90E2;">截止目前为止，猿圈有接近20000多测评后的活跃程序员，包括安卓、iOS、PHP、Java等等方向，并且以很快的速度增长，我们会根据您的招聘需求，每天智能推荐最适合您要求的优秀程序员！</p>
						<p style="color:#4A90E2;">猿圈小技巧：您发的挑战数目越多，推荐的程序员数量就越多！</p>
					</div>
				</div>
			</div>
					<div id="ele" runat="server">
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