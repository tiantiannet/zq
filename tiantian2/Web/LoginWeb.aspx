<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWeb.aspx.cs" Inherits="Web.LoginWeb" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 登录</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">

<link href="css/summernote.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/style_new.css" rel="stylesheet">

<link href="css/bootstrapValidator.css" rel="stylesheet">
<script src="js/jquery-2.1.1.js"></script>
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/npm.js"></script>
<script src="js/bootstrapValidator.js"></script>
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
body {
	background-color: #4A90E2;
}

.panel-title img {
	max-height: 70px;
}

.footer-log {
	margin-bottom: 20px;;
	text-align: center;
	color: #fff;
}

.footer-log a {
	color: #fff;
	padding-left: 10px;
	margin-left: 10px;
	border-left: 1.5px solid #fff;
}

.footer-log a:visited {
	color: #fff;
}

</style>
</head>
<body>
	<div class="container" style="margin-top: 160px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
				<section id="middle">
					<div id="content" class="signin-page">
						<div class="panel-group" id="signin-page">
							<h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
								<a href="index.html">
									<img src="img/wlogo.png">
								</a>
								猿圈登录
							</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										<form runat="server" method="post" id="defaultForm" class="form-horizontal">
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon">
															<span class="glyphicon glyphicon-envelope"></span>
														</span>
                                                        <asp:TextBox ID="login_email" runat="server" name="j_username" value="" type="text" class="form-control" placeholder="请输入手机号或邮箱地址"></asp:TextBox>
													</div>
													<span class="help-block" id="hint1"></span>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon">
															<span class="glyphicon glyphicon-pencil"></span>
														</span>
                                                        <asp:TextBox type="password" ID="login_password" runat="server" name="j_password" value="" class="form-control" placeholder="请输入密码"></asp:TextBox>
													</div>
													<span class="help-block" id="hint3"></span>
												</div>
											</div>
											<div class="col-xs-12">
												<input type="checkbox" checked="checked" name="_spring_security_remember_me" id="_spring_security_remember_me" value="true"  onchange="this.value=this.checked?'true':'false';"  style="margin-left: 20px;">
												<label for="_spring_security_remember_me">记住我</label>
												<span style="float: right;">
													<a class="panel-collapse collapse in"">
														忘记密码？
													</a>
												</span>
												<span class="help-block has-error" id="hint2">
													<small class="help-block">
														
													</small>
												</span>
											</div>
											<div class="col-xs-12">
                                                <asp:Button ID="login_btn"   type="submit"  runat="server" Text="登录" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;" OnClick="login_Click" />
											</div>
											<div class="col-xs-12"></div>
										</form>
									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												还没有帐号？
												<a href="signup.html">立即注册</a>
											</p>
											<img src="img/01.png" width="250px;" class="hidden-xs">
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->
						</div>
						<!-- /#content -->
					</div>
				</section>
			</div>
			<!-- /.col-md-10 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->	
	<footer class="col-md-12 footer-log">
		<div class="text-center">
			© 2016 oxcoder.com
			<a href="#">联系我们</a>
			<a href="#" target="_blank">QQ交流群:77590762</a>
			<a href="#" target="_blank">意见反馈</a>
			<script type="text/javascript">
			    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
			    document
						.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
								+ cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
			</script>
			<!--站长统计代码-->
		</div>
	</footer>

	<div class="container" style="color: #fff">
		
		<h4>页面说明：</h4>
		<ol>
			<li>输入手机号或邮箱，并输入密码，后台验证正确后登录成功</li>
			<li>有任何一项为空时登录失败</li>
			<li>手机号或者邮箱地址格式不正确，前台会进行验证并提示</li>
			<li>点击忘记密码回跳转到找回密码页面</li>
			<li>点击立即注册则跳转到注册页面</li>
		</ol>		
	</div>


	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#defaultForm").bootstrapValidator({
	            message: "This value is not valid",
	            fields: {
	                j_username: {
	                    container: "#hint1",
	                    validators: {
	                        notEmpty: {
	                            message: "请输入手机号或邮箱地址"
	                        },
	                        regexp: {
	                            regexp: /^1[3|4|5|7|8]\d{9}$|^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i,
	                            message: "请输入正确的手机号或邮箱地址"
	                        }
	                    }
	                },
	                j_password: {
	                    container: "#hint3",
	                    validators: {
	                        notEmpty: {
	                            message: "请输入密码"
	                        }
	                    }
	                }
	            }
	        });
	    });
	</script>
	<script type="text/javascript">
	    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
	    if (($(document.body).height() + 50) < $(window).height()) {
	        $(".afooter").addClass("navbar-fixed-bottom");
	    };
	</script>
</body>
</html>
