<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterWeb.aspx.cs" Inherits="Web.RegisterWeb" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 注册</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<link href="css/summernote.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/style_new.css" rel="stylesheet">

<script src="js/jquery-2.1.1.js"></script></script>
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

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus
	{
	color: #4A90E2;
	background-color: #fffff;
	border: 1px solid #4A90E2;
	border-radius: 0;
}

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus
	{
	color: #4A90E2;
	background-color: #fff;
	border-radius: 0;
}

.nav-line>li>a, .nav-line>li>a:hover, .nav-line>li>a:focus {
	border-bottom: 2px solid #ccc;
	color: #ccc;
	font-size: 16px;
	background-color: #fff;
}

.nav-line>li.active>a, .nav-line>li.active>a:hover, .nav-line>li.active>a:focus
	{
	border-bottom: 2px solid #4A90E2;
	font-size: 16px;
	color: #4A90E2;
	background-color: #fff;
}

.footer-log {
	margin-bottom: 20px;
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

.col-xs-12 {
	padding-left: 0;
}

</style>
</head>

<body>
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<section id="middle">
					<div id="content" class="signin-page">
						<div class="panel-group" id="signin-page">
							<h3 class="panel-title"	style="color: #fff; font-size: 2.4em; padding: 25px 25px 10px; text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
								<a href="index.html">
									<img src="img/wlogo.png">
								</a> 猿圈注册
							</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										<ul class="nav nav-line nav-justified" style="margin: 0 0 20px 10px;">
											<li id="li-mobile" class="active"><a href="#mobile" data-toggle="pill" style="">手机号码注册</a></li>
											<li id="li-email" class=""><a href="#email" data-toggle="pill" style="">邮箱注册</a></li>
										</ul>
										<form runat="server" method="post" id="form_login" class="form-horizontal">
											<input type="hidden" id="regType" name="regType" value="2"> 
											<input type="hidden" id="regWay" name="regWay" value="1" />
											<div id="myTabContent" class="tab-content">
												<div class="tab-pane fade in active" id="mobile">
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-phone"></span>
																</span> 
																<input type="text" id="login-mobile" name="phone" class="form-control" placeholder="请输入常用手机号码">
															</div>
															<small id="hint1"></small>
														</div>
													</div>
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-eye-open"></span>
																</span> 
																<input type="text" id="login-capcha" name="capcha" class="form-control" placeholder="请证明你不是机器人">
																<span class="input-group-btn">
																	<a href="javascript:void(0);" title="点击刷新" style="margin-right: -38px;">
																		<img id="img_verify" onclick="resetVerify()" src="验证码" width="95px" height="35px">
																	</a>
																</span>
															</div>
															<small id="hint8"></small>
														</div>
													</div>
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-inbox"></span>
																</span> 
																<input type="text" id="login-password" name="key" class="form-control" placeholder="请输入短信验证码">
																<span class="input-group-btn">
																	<a id="btn_send_sms" class="btn btn-primary" style="margin-right: -38px;" onclick="sendm()">获取验证码</a>
																</span>
															</div>
															<small id="hint3"></small>
														</div>
													</div>
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-lock"></span>
																</span>
																<input type="password" id="Password1" name="password_phone" class="form-control" placeholder="请输入密码">
															</div>
															<small id="hint4"></small>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="email">
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-envelope"></span>
																</span> 
                                                                <asp:TextBox type="text" ID="login_email" runat="server" name="email" class="form-control" placeholder="请输入常用邮箱地址"></asp:TextBox>
																
															</div>
															<small id="hint5"></small>
														</div>
													</div>

													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-lock"></span>
																</span>
                                                                <asp:TextBox type="password" ID="Password2" runat="server" name="password" class="form-control" placeholder="请输入密码"></asp:TextBox>
															</div>
															<small id="hint6"></small>
														</div>
													</div>
												</div>
											</div>
											<ul class="nav nav-pills nav-justified" style="margin: 10px 0 20px 10px;">
                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                        <asp:ListItem Value="0">我是开发者</asp:ListItem>
                                                        <asp:ListItem Value="1" Selected ="True">我是企业</asp:ListItem>
                                                    </asp:RadioButtonList>
											</ul>

											<div class="col-xs-12" style="margin-left: 20px;">
												<label> 
                                                    <asp:CheckBox ID="CheckBox1" runat="server" />
													<small>我已阅读并同意
														<a href="oxcoder_license.action" target="_blank">《oxcoder用户协议》</a>
													</small>
												</label> 
												<small id="hint7"></small>
												 <span class="help-block has-error" id="hint2" style=""> 
												 	<small class="help-block"><s:property value="errinfo" /></small>
												</span>
											</div>
											<div class="col-xs-12">
                                                <asp:Button ID="Button1" runat="server" Text="注册" type="submit" OnClick="Button1_Click" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;" />
                                                
											</div>
											<div class="col-xs-12"></div>
										</form>
									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												已有帐号? <a href="LoginWeb.aspx">直接登录</a>
											</p>
											<img src="img/01.png" width="250px;">
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->
						</div>
					</div>
					<!-- /#content -->

				</section>
			</div>
			<!-- /.col-md-10 -->

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<!-- /.container -->
	<footer class="col-md-12 footer-log">
		<div class="text-center">
			© 2016 oxcoder.com 
			<a href="contactus.html">联系我们</a> 
			<a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a>
			<a href="http://form.mikecrm.com/f.php?t=rJmyZe" target="_blank">意见反馈</a>
			<script type="text/javascript">
			    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
			    document
						.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
								+ cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
			</script>
		</div>
	</footer>

	<div class="container" style="color: #fff">
		
		<h4>页面说明：</h4>
		<ol>
			<li>手机号码注册需要输入手机号、图形验证码以及短信验证码，任何一项输入错误都会出现提示</li>
			<li>密码至少六位，否则会提示</li>
			<li>根据自身需求选择企业/开发者</li>
			<li>邮箱注册会对邮箱地址进行校验，注册成功后会发送邮件验证</li>
			<li>如果已有账号请点击“直接登录”链接进行跳转登录</li>
		</ol>		
	</div>

	<script type="text/javascript">
	    $(document)
				.ready(
						function () {
						    $("#li-work").click(function () {
						        $("#regType").val(1);
						    });
						    $("#li-person").click(function () {
						        $("#regType").val(2);
						    });
						    $("#li-mobile").click(function () {
						        $("#regWay").val(1);
						    });
						    $("#li-email").click(function () {
						        $("#regWay").val(2);
						    });
						    $('#defaultForm')
									.bootstrapValidator(
											{
											    message: 'This value is not valid',
											    fields: {
											        phone: {
											            container: '#hint1',
											            validators: {
											                notEmpty: {
											                    message: '请输入手机号码'
											                },
											                phone: {
											                    message: "请输入正确的联系方式",
											                    country: "CN"
											                }

											            }
											        },
											        capcha: {
											            container: '#hint8',
											            validators: {
											                notEmpty: {
											                    message: '请输入验证码'
											                }
											            }
											        },
											        key: {
											            container: '#hint3',
											            validators: {
											                notEmpty: {
											                    message: '请输入短信验证码'
											                }
											            }
											        },
											        password: {
											            container: '#hint4',
											            validators: {
											                notEmpty: {
											                    message: '请输入密码'
											                },
											                stringLength: {
											                    min: 6,
											                    max: 30,
											                    message: '密码应大于6位，小于30位'
											                }
											            }
											        },
											        email: {
											            container: '#hint5',
											            validators: {
											                notEmpty: {
											                    message: '请输入邮箱地址'
											                },
											                email: {
											                    message: '请输入正确的邮箱格式'
											                }
											            }
											        },
											        password: {
											            container: '#hint6',
											            validators: {
											                notEmpty: {
											                    message: '请输入密码'
											                },
											                stringLength: {
											                    min: 6,
											                    max: 30,
											                    message: '密码应大于6位，小于30位'
											                }
											            }
											        },
											        check: {
											            container: '#hint7',
											            validators: {
											                notEmpty: {
											                    message: '请同意用户协议'
											                }
											            }
											        }
											    }
											})
									.on(
											"success.form.bv",
											function (e) {
											    e.preventDefault();
											    var $form = $(e.target);
											    $form
														.data("bootstrapValidator");
											    var add_para = "";
											    if (window.location.href
														.split('?u=')[1] != undefined) {
											        add_para = "?u="
															+ window.location.href
																	.split('?u=')[1]
											    }
											    $
														.post(
																"register.html"
																		+ add_para,
																$form
																		.serialize(),
																function (data) {
																    if (data.su) {
																        location.href = data.hint_url;
																    } else {
																        $(
																				"#hint2")
																				.html(
																						data.msg);
																    }
																}, "json");
											});
						});
	    function sendm() {

	        var bootstrapValidator = $('#defaultForm').data(
					'bootstrapValidator');
	        bootstrapValidator.validateField('phone');
	        bootstrapValidator.validateField('capcha');
	        if (bootstrapValidator.isValidField('phone')
					&& bootstrapValidator.isValidField('capcha')) {
	            $("#btn_send_sms").addClass("disabled");
	            $.post("send_sms.html", {
	                "phone": $("#login-mobile").val(),
	                "capcha": $("#login-capcha").val()
	            }, function (res) {

	                if (!res.su) {
	                    resetVerify();
	                    if (typeof (res.time) != "undefined") {
	                        seSendDown(res.time);
	                    } else {
	                        $("#btn_send_sms").removeClass("disabled");
	                    }
	                } else {
	                    seSendDown(60);
	                }
	                $
					.alert({
					    title: "提示",
					    content: res.msg,
					    confirmButton: "确定",
					    confirm: function () {
					        /* location.href = data.url; */
					    },
					    cancel: function () {
					        /* location.href = data.url; */
					    }
					});
	            }, "json")
	            console.log("success");
	        } else {
	            console.log("wrong");
	        }

	    }
	    function resetVerify() {
	        $.post("reset_verify_code.html", {}, function (res) {
	            $("#img_verify").attr("src", res.verifyCodeName);
	        }, "json")
	    }
	    function seSendDown(reSendSmsCountDown) {
	        $("#btn_send_sms").addClass("disabled");
	        $("#btn_send_sms").html("再次发送(" + reSendSmsCountDown + ")");
	        var interval = setInterval(function () {
	            reSendSmsCountDown--;
	            $("#btn_send_sms").html("再次发送(" + reSendSmsCountDown + ")");
	            if (reSendSmsCountDown == 0) {
	                clearInterval(interval);
	                $("#btn_send_sms").removeClass("disabled");
	                $("#btn_send_sms").html("获取验证码");
	            }
	        }, 1000);
	    }
	</script>
</body>
</html>

