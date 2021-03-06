﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeixinUser.aspx.cs" Inherits="Web.WeixinUser" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>微信用户</title>

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
	<div class="table-responsive">
		<table class="table table-bordered">
			<tr class="active">
				<th>ID</th>
				<th class="col-md-2">昵称</th>					
				<th class="col-md-2">简历方向</th>
				<th>创建时间</th>
				<th>更新时间</th>
				<th>用户类型</th>
			</tr>
			<%=result %>
		</table>
	</div>
	
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery-2.1.1.js" type="text/javascript" charset="utf-8"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/npm.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
