<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientMana.aspx.cs" Inherits="Web.ClientMana" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>企业用户管理</title>

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
		<div class="page-header">
			<h1>企业用户管理</h1>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered">
				<tr class="active">
					<th>ID</th>
					<th class="col-md-2">公司全称</th>
					<th>公司简称</th>
					<th class="col-md-2">邮箱</th>
					<th>手机号</th>
					<th>固定电话</th>
					<th>微信号</th>
					<th>企业地址</th>
					<th>企业状态</th>
					<th>审核状态</th>
					<th>创建时间</th>
					<th class="col-md-2">管理操作</th>
					<th>备注</th>
				</tr>
                <% =result %>
			</table>
		</div>
	</div>
	
	
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery-2.1.1.js" type="text/javascript" charset="utf-8"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/npm.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
