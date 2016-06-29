<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexMana.aspx.cs" Inherits="Web.IndexMana" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">
	<title>后台管理</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
	<link rel="stylesheet" type="text/css" href="css/new.css" />
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body>
  	<nav class="navbar navbar-default navbar-inverse">
  		<div class="container-fluid">
  			<!-- Brand and toggle get grouped for better mobile display -->
  			<div class="navbar-header">
  				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
  					<span class="sr-only">Toggle navigation</span>
  					<span class="icon-bar"></span>
  					<span class="icon-bar"></span>
  					<span class="icon-bar"></span>
  				</button>
  				<a class="navbar-brand" href="#">猿圈-后台管理系统</a>
  			</div>
  			
  			<!-- Collect the nav links, forms, and other content for toggling -->
  			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  				<ul class="nav navbar-nav navbar-right">
  					<li><a>用户名：<span runat="server" id="username"></span></a></li>
  					<li><a id="A1" href="LoginWeb.aspx">退出登录</a></li>
  				</ul>
  			</div><!-- /.navbar-collapse -->
  		</div><!-- /.container-fluid -->
  	</nav><!--/.nav-->
  		
  	<div class="container-fluid">
        <div class="row">
            <div class="col-md-2 leftPanel">
                <ul id="main-nav" class="nav nav-tabs nav-stacked">
                    <li class="active">
                        <a href="MainPageMana.aspx" target="myFrame">         
                        	<span class="glyphicon glyphicon-home">&nbsp;</span>
                        		首页
                        </a>           
                    </li>
                    <li>
                        <a href="#userSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-briefcase">&nbsp;</span>
                            	用户管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="userSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span>&nbsp;网站数据趋势</a></li>
                            <li><a href="UserMana.aspx" target="myFrame"><span class="glyphicon glyphicon-user"></span>&nbsp;个人用户管理</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;学习卡管理</a></li>
                            <li><a href="offerMana.html" target="myFrame"><span class="glyphicon glyphicon-user"></span>&nbsp;简历管理</a></li>
                            <li><a href="ClientMana.aspx" target="myFrame"><span class="glyphicon glyphicon-plus"></span>&nbsp;企业用户管理</a></li>
                            <li><a href="clientIn.html" target="myFrame"><span class="glyphicon glyphicon-plus"></span>&nbsp;企业入驻审批</a></li>
                            <li><a href="codeMana.html" target="myFrame"><span class="glyphicon glyphicon-plus"></span>&nbsp;优惠码管理</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-plus"></span>&nbsp;企业标签管理</a></li>
                        </ul>
                    </li>
                   <li>
                        <a href="#challengeSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-credit-card">&nbsp;</span>
                            	挑战管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="challengeSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="challengInfoMana.html" target="myFrame"><span class="glyphicon glyphicon-globe"></span>&nbsp;挑战信息管理</a></li>
                            <li><a href="challengeQAMana.html" target="myFrame"><span class="glyphicon glyphicon-globe"></span>&nbsp;挑战题目管理</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#pracSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-list-alt">&nbsp;</span>
                            	练习管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="pracSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span>&nbsp;练习文件管理</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span>&nbsp;练习题阶段管理</a></li>
                            <li><a href="learnMana.html" target="myFrame"><span class="glyphicon glyphicon-th-list"></span>&nbsp;学习资料管理</a></li>
                            <li><a href="outLearnMana.html" target="myFrame"><span class="glyphicon glyphicon-th-list"></span>&nbsp;外部学习资料管理</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#feeSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-user">&nbsp;</span>
                            	收费管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="feeSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="feeSetMana.html" target="myFrame"><span class="glyphicon glyphicon-th-list"></span>&nbsp;套餐管理</a></li>
                            <li><a href="chargeMana.html" target="myFrame"><span class="glyphicon glyphicon-th-list"></span>&nbsp;收入管理</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#weixinSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-plane">&nbsp;</span>
                            	微信
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="weixinSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="WeixinUser.aspx" target="myFrame"><span class="glyphicon glyphicon-gift"></span>&nbsp;微信用户</a></li>
                            <li><a href="WeixinOrder.aspx" target="myFrame"><span class="glyphicon glyphicon-fire"></span>&nbsp;微信订单</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#infoSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-plane">&nbsp;</span>
                            	通知
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="infoSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" target="myFrame"><span class="glyphicon glyphicon-gift"></span>&nbsp;通知管理</a></li>
                            <li><a href="#" target="myFrame"><span class="glyphicon glyphicon-fire"></span>&nbsp;事件管理</a></li>
                            <li><a href="#" target="myFrame"><span class="glyphicon glyphicon-th-list"></span>&nbsp;比赛管理</a></li>
                            <li><a href="#" target="myFrame"><span class="glyphicon glyphicon-th-list"></span>&nbsp;发送短信</a></li>
                        	<li><a href="#" target="myFrame"><span class="glyphicon glyphicon-globe"></span>&nbsp;发送邮件</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-globe">&nbsp;</span>
                            	调度任务
                        </a>
                    </li>
                    <li>
                        <a href="#sysSetting" class="nav-header collapsed" data-toggle="collapse">
                            <span class="glyphicon glyphicon-cog">&nbsp;</span>
                            	系统设置
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="sysSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" target="myFrame"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp;管理员管理</a></li>
                            <li><a href="#" target="myFrame"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp;修改密码</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-header collapsed">                       
                        	查看活动参与者
                        </a>           
                    </li>
                </ul>
            </div><!--leftPanel-->
            <div class="col-md-10" style="margin-top: 30px;">
           		<iframe src="MainPageMana.aspx" id="myFrame" name="myFrame" height="800" width="100%" scrolling="no" frameborder="0"></iframe>                   	
            </div>
        </div>
    </div>

  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery-2.1.1.js" type="text/javascript"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/npm.js" type="text/javascript"></script>
  	<script type="text/javascript">
  	    $(document).ready(function () {
  	        $('ul.nav > li').click(function (e) {
  	            //e.preventDefault();//这一条用来阻止冒泡事件
  	            $('ul.nav > li').removeClass('active');
  	            $(this).addClass('active');
  	        });
  	    });
  	</script>
</body>
</html>