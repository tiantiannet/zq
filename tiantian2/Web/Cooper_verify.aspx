﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cooper_verify.aspx.cs" Inherits="Web.Cooper_verify" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="BootstrapStyler">
	<title>猿圈 激活您的账号</title>

	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/bootstrapValidator.css" rel="stylesheet">
	<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
    <link href="css/summernote.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style_new.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    	body{
    		font-family: "微软雅黑","宋体",Arial;
    	}
    	.center {
    		text-align: center;
    	}
/*#sina {
                background-image:url("img/sina.png");
            }
            #sina:hover img{
                background-image:url("img/sina.png");
            } */
        </style>
</head>
<body>
	<!-- 引入header -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-sm" href="index.htm" style="padding: 0;">
					<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
				</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li class="">
						<a href="index.html">首页</a>
					</li>

					<li class="">
						<a href="product.html">产品介绍</a>
					</li>

					<li class="">
						<a href="customer_case.html">客户案例</a>
					</li>
					<li class="">
						<a href="qa.html">常见问题</a>
					</li>
					<li class="">
						<a href="mediaReports.html">了解我们</a>
					</li>
					<li class="">
						<a href="competition_info.html">编程大赛</a>
					</li>


				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="login.html">登录</a>
					</li>
					<li>
						<a href="signup.html">注册</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div id="content">
					<div class="row">
						<!-- 错误信息 -->
						<!-- <font color="red"></font> -->
						<form id="cooper_info_form" method="post" class="form-vertical" runat="server" enctype="multipart/form-data">
							<input name="cooperId" value="2542" type="hidden">
							<input name="cooperEmail" value="13301136@bjtu.edu.cn" type="hidden">
							<div class="form-group">
								<h3 class="grey" ><font color="red">*</font>公司全称</h3>
                                <asp:TextBox ID="corp_name" runat="server" type="text" name="name" class="form-control" placeholder="请输入公司在营业执照上的全称"></asp:TextBox>
								<span class="help-block" id="hint1"></span>
							</div>
							<div class="form-group">
								<h3 class="grey"><font color="red">*</font>公司相关证明文件</h3>
                                <asp:TextBox ID="corp_pic" runat="server" type="file" name="cooper_licence" accept="image/*"></asp:TextBox>
								<span>如营业执照、组织代码证、税务登记证或工牌等扫描文件</span>
								<span class="help-block" id="hint2"></span>
							</div>
							

							<div class="form-group">
								<h3 class="grey"><font color="red">*</font>招聘负责人联系方式</h3>
                                <asp:TextBox ID="id_phone" runat="server" type="text" name="phone" class="form-control"></asp:TextBox>
								<span>请输入招聘负责人的手机</span>
								<span class="help-block" id="hint3"></span>
							</div>


							
							
							<div class="form-group">
								<h3 class="grepy">企业固定电话</h3>
                                <asp:TextBox ID="telehone" runat="server" type="text" name="telephone" class="form-control"></asp:TextBox>
								<span>请输入企业固定电话</span>
								<span class="help-block" id="hint9"></span>
							</div>
							<div class="form-group">
								<h3 class="grey">企业微信号</h3>
                                <asp:TextBox ID="weixin" runat="server" type="text" name="weixin" class="form-control"></asp:TextBox>
								<span>请输入企业微信号</span>
								<span class="help-block" id="hint_weixin"></span>
							</div>
							<div class="form-group">
								<h3 class="grey">所在城市</h3>
								<div id="warp" class="form-inline">
									<div class="form-group">
										<label class="sr-only" for="exampleInputEmail3">省</label>
                                        <select id="select_prov" runat="server" name="province" class="form-control prov" style="width:192px;">
                                            <option value="1">山东</option>
									
                                            <option value="2">河南</option>
									
                                            <option value="3">河北</option>
                                        </select>
									</div>
								</div>
								<span class="help-block" id="hint_address"></span>
							</div>
							<div class="form-group">
								<h3 class="grey"><font color="red">*</font>所在行业</h3>
                                <select id="select_industry" runat="server" name="industry" class="form-control">
									<option value="">请选择</option>
									
									<option value="1" >教育</option>
									
									<option value="2" >金融</option>
									
									<option value="3" >汽车交通</option>
									
									<option value="4" >房产服务</option>
									
									<option value="5" >医疗健康</option>
									
									<option value="6" >本地生活</option>
									
									<option value="7" >游戏</option>
									
									<option value="8" >广告营销</option>
									
									<option value="9" >文化娱乐体育</option>
									
									<option value="10" >企业服务</option>
									
									<option value="11" >SNS社交网络</option>
									
									<option value="12" >电子商务</option>
									
									<option value="13" >工具软件</option>
									
									<option value="14" >移动互联网</option>
								</select>	
								<span class="text-danger" id="error4" style="display:none;">请选择公司规模</span>
								<span class="help-block" id="hint_industry"></span>
							</div>
							<div class="form-group">
								<h3 class="grey"><font color="red">*</font>公司LOGO</h3>
                                <asp:TextBox ID="logo_pic" runat="server" name="logo" onchange="modify_hide_logo(this)" type="file" accept="image/*" placeholder="公司LOGO"></asp:TextBox>
                                <asp:TextBox ID="logo_hide_id" runat="server" name="logo_hide" value="" type="hidden"></asp:TextBox>
								<span class="text-danger" id="error2" style="display:none;">请上传公司logo</span>
								<span class="help-block" id="hint_logo"></span>
							</div>
							<div class="form-group form-actions">
                                <asp:Button ID="confimCompany_btn" runat="server" Text="确认" type="submit" class="btn btn-primary btn-lg" style="border-radius: 3px;" OnClick="confimCompany_btn_Click"/>
							</div>
						</form>
					</div>
					<!-- /.row -->
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
	<script type="text/javascript" src="sys/js/libs/jquery.city.select.js"></script>
	<script src="sys/js/libs/bootstrapValidator.min.js"></script>
	<script src="sys/js/libs/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="dev/pluginJs/jquery.form.js"></script>
	
	<script src="dev/pluginJs/cityselect/jquery.cityselect.js"></script>
	
	<script type="text/javascript" src="dev/pluginJs/jquery-confirm/jquery-confirm.min.js"></script>
	
	<script src="dev/pluginJs/fileinput/fileinput.min.js"></script>
	<script src="dev/pluginJs/fileinput/fileinput_locale_zh.js"></script>
	
	<script src="dev/pluginJs/zmUtil.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        // 城市级联
	        var prov = "";
	        var city = "";
	        var dist = "";
	        if ($Util.isEmpty(prov)) {
	            $("#warp").citySelect({
	                url: "dev/pluginJs/cityselect/cc.json",
	                prov: "北京市"
	            });
	        } else {
	            $("#warp").citySelect({
	                url: "dev/pluginJs/cityselect/cc.json",
	                prov: prov,
	                city: city,
	                dist: dist
	            });
	        }
	        $("#corp-pic").fileinput({
	            showUpload: false,
	            browseLabel: "选择文件",
	            allowedFileExtensions: ["jpg", "jpeg", "gif", "png"]
	        });
	        $("#logo_pic").fileinput({
	            showUpload: false,
	            browseLabel: "选择文件",
	            allowedFileExtensions: ["jpg", "jpeg", "gif", "png"]
	        });
	        $("#cooper_info_form").bootstrapValidator({
	            message: "This value is not valid",
	            /* submitHandler: function(form) {
                	alert();
                   $(form).ajaxSubmit({
                        target: '#info',
                        success: function() {
                            $('#register-form').slideUp('fast');
                        }
                    });
                }, */
	            fields: {
	                name: {
	                    container: "#hint1",
	                    validators: {
	                        notEmpty: {
	                            message: "请输入公司在营业执照上的全称"
	                        },
	                        stringLength: {
	                            max: 30,
	                            message: "公司全称不能超过30个字符"
	                        }
	                    }
	                },
	                cooper_licence: {
	                    container: "#hint2",
	                    validators: {
	                        notEmpty: {
	                            message: "请上传公司营业执照、组织代码证、税务登记证或工牌等扫描文件"
	                        }
	                    }
	                },
	                logo: {
	                    container: "#hint_logo",
	                    validators: {
	                        notEmpty: {
	                            message: "请上传公司公司logo"
	                        }
	                    }
	                },
	                /*  phone: {
                         container: "#hint3",
                         validators: {
                             notEmpty: {
                                 message: "请填写招聘负责人联系方式!"
                             },
                             phone: {
                                 message: "请输入正确的联系方式",
                                 country: "CN"
                             }
                         }
                     }, */

	                province: {
	                    container: "hint_address",
	                    validators: {
	                        notEmpty: {
	                            message: "请选择所在地区"
	                        }
	                    }
	                },
	                city: {
	                    container: "hint_address",
	                    validators: {
	                        notEmpty: {
	                            message: "请选择所在地区"
	                        }
	                    }
	                },
	                region: {
	                    container: "hint_address",
	                    validators: {
	                        notEmpty: {
	                            message: "请选择所在地区"
	                        }
	                    }
	                },
	                industry: {
	                    container: "#hint_industry",
	                    validators: {
	                        notEmpty: {
	                            message: "请选择公司行业"
	                        }
	                    }
	                }
	            }
	        }).on("success.form.bv", function (e) {
	            e.preventDefault();
	            var $form = $(e.target);
	            $form.data("bootstrapValidator");
	            var phoneVal = $("#id_phone").val();
	            var telephoneVal = $("id_telephone").val();

	            /*  if((phoneVal==null||phoneVal=="")&&(telephoneVal==null||telephoneVal=="")){
                     var html = "<small class='help-block' data-bv-validator='notEmpty' data-bv-for='cooper_licence' data-bv-result='INVALID'>"+
                     +"企业固定电话和招聘负责人联系方式至少填写一个!"
                     +"</small>";
                     $("#" + data.view_error).html(html);
                     return ;
                 } */


	            $("#cooper_info_form").ajaxSubmit({
	                type: "post",
	                url: "save_cooper_info.html",
	                success: function (data) {
	                    data = eval('(' + data + ')');
	                    if (data.su) {
	                        location.href = data.url;
	                    } else {
	                        var html = "<small class='help-block' data-bv-validator='notEmpty' data-bv-for='cooper_licence' data-bv-result='INVALID'>" +
							data.msg
							+ "</small>";
	                        $("#" + data.view_error).html(html);
	                    }
	                }
	            });
	        });
	    });
    </script>
    <!-- 引入footer -->





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
			<li>该页面用来填写企业端用户的企业信息</li>
			<li>用红色星星标记的项目是必填项，如果有空缺则不能提交，页面会提示用户填写完整</li>
			<li>没有标记的项目是选填项，填或不填均可，当然填写完整更有利于企业信息的查看</li>
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
