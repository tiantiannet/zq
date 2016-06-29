<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMana.aspx.cs" Inherits="Web.UserMana" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>个人用户管理</title>

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
			<h1>用户管理</h1>
		</div>
		<div class="table-responsive">
			<table id="tab" class="table table-bordered">
				<tr class="active">
					<th>ID</th>
					<th class="col-md-2">邮箱</th>
					<th>姓名</th>
					<th>年龄</th>
					<th>性别</th>
					<th>手机</th>
					<th>是否求职</th>
					<th>创建标记</th>
					<th>是否验证邮箱</th>
					<th>是否验证手机</th>
					<th>是否填写资料</th>
					<th>创建时间</th>
					<th class="col-md-2">管理操作</th>
					<th>备注</th>
				</tr>
				
				<%=result %>
			</table>
		</div>
	</div>
	
	
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery-2.1.1.js" type="text/javascript" charset="utf-8"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/npm.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        function viewBtn()
        {
            viewBtn();
        }

        function delBtn()
        {
            alert("这条数据将被删除");
            delBtn();
            location.reload();
        }

        function tologin()
        {
            window.location("LoginWeb.aspx");
        }
    </script>
</body>
</html>
