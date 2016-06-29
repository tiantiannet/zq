﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPageMana.aspx.cs" Inherits="Web.MainPageMana" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>后台管理</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
	<link rel="stylesheet" type="text/css" href="css/new.css"/>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divA">
				    <div class="panel-body">				    	
				    	<span class="glyphicon glyphicon-th-list spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="regUserCount">12345</span>
				    		<p>注册普通用户</p>
				    	</div>						    	
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divB">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-folder-open spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="regClientCount">12345</span>
				    		<p>注册企业用户</p>
				    	</div>	
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divC">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-bell spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="chaCount">12345</span>
				    		<p>挑战</p>
				    	</div>	
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divD">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-stats spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="moneyCount">12345</span>
				    		<p>挣的钱</p>
				    	</div>	
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divE">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-stats spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="newUserCount">12345</span>
				    		<p>本日新增普通用户</p>
				    	</div>	
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divF">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-stats spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="newClientCount">12345</span>
				    		<p>本日新增企业用户</p>
				    	</div>	
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divG">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-stats spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="newChaCount">12345</span>
				    		<p>本日新增挑战</p>
				    	</div>	
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 panel-main">
				<div class="panel panel-default divH">
				    <div class="panel-body">
				    	<span class="glyphicon glyphicon-stats spn"></span>
				    	<div class="fr">
				    		<span runat="server" class="pull-right da" id="newMoneyCount">12345</span>
				    		<p>本日新增的钱</p>
				    	</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery-2.1.1.js" type="text/javascript" charset="utf-8"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/npm.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
