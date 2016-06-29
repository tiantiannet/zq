<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_user_info.aspx.cs" Inherits="Web.Edit_user_info" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="BootstrapStyler">
	<title>猿圈 填写简历</title>

	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/bootstrapValidator.css" rel="stylesheet">
	<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="css/summernote.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/style_new.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
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
    	<div class="navbar navbar-default navbar-fixed-top" id="navbar">
    		<div class="container">
    			<div class="navbar-header">
    				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
    					<span class="icon-bar"></span>
    					<span class="icon-bar"></span>
    					<span class="icon-bar"></span>
    				</button>
    				<a class="navbar-brand hidden-sm" href="user/index.html" style="padding: 0;">
    					<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
    				</a>
    			</div>
    			<div class="navbar-collapse collapse" role="navigation">
    				<ul class="nav navbar-nav">
    					<li class="">
    						<a href="#">首页</a>
    					</li>
    					<li class="">
    						<a href="#">挑战</a>
    					</li>
    					<li class="">		
    						<a href="#">练习场</a>
    					</li>
    					<li class="">
    						<a href="#">学习日历</a>	
    					</li>
    					<li class="">
    						<a href="#">个人中心</a>
    					</li>
    					<li class="">
    						<a href="#">个人简历</a>
    					</li>
    					<li class="">
    						<a href="#">编程大赛</a>
    					</li>
    				</ul>
    				<ul class="nav navbar-nav navbar-right">
    					<li class="dropdown" id="drop_down_nav">
    						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
    							<span class="text">
    								lo9808ve@qq.com																				
    							</span>
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
    			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
    				<div class="alert alert-info">完善信息后才可以接受挑战或者查看练习项目呦~</div>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
    				<section id="middle">
    					<form id="defaultForm" runat="server" method="post" class="form-vertical"  enctype="multipart/form-data">
    						<input type="hidden" value="Bzj4THeNbvu6E29YFZj2HZlpEIfpFPuJGcYanZuYEc1=" name="callback">
    						<div class="form-group">
    							<h3 class="grey">真实姓名</h3>
                                <asp:TextBox ID="corp_name" runat="server" name="name" value="" type="text" class="form-control" placeholder="真实姓名"></asp:TextBox>
    						</div>
    						<div class="form-group">
    							<h3 class="grey">年龄</h3>
                                <asp:TextBox ID="corp_sname" runat="server" name="age" value="" type="text" class="form-control" placeholder="年龄"></asp:TextBox>
    							<span class="text-danger" id="error1" style="display: none;"></span> 
    							<span class="help-block" id="hint1"></span>
    						</div>
    						<div class="form-group">
    							<h3 class="grey">性别</h3>
    							<div>
    								<label class="radio-inline" for="example-inline-radio1">
                                         <select id="select_sex" runat="server" name="province" class="form-control prov" style="width: 172px;">
                                            <option value="1">男</option>
									
                                            <option value="2">女</option>
    								    </select>
    							</label>
    						</div>
    					</div>
    					
    					<div class="form-group">
    						<h3 class="grey">技术方向</h3>
    						<div>
    							<label class="radio-inline"> 
                                    <asp:CheckBox id="Java" Text="Java" runat  ="server" type="checkbox" name="directions" value="1"/>
    							</label>

    							<label class="radio-inline"> 
                                    <asp:CheckBox id="Android" Text="Android" runat  ="server" type="checkbox" name="directions" value="2"/>
    							</label>

    							<label class="radio-inline"> 
                                    <asp:CheckBox id="iOS" Text="iOS" runat  ="server" type="checkbox" name="directions" value="3"/>
    							</label>
    							
    							<label class="radio-inline"> 
                                    <asp:CheckBox id="C" Text="C语言(beta)" runat  ="server" type="checkbox" name="directions" value="4"/>
    							</label>
    							
    							<label class="radio-inline"> 
                                    <asp:CheckBox id="Cjiajia" Text="C++(beta)" runat  ="server" type="checkbox" name="directions" value="5"/>
    							</label>
    							
    							<br>
    							<label class="radio-inline"> 
                                    <asp:CheckBox id="php" Text="php(beta)" runat  ="server" type="checkbox" name="directions" value="6"/>
    							</label>
    							
    							<label class="radio-inline"> 
                                    <asp:CheckBox id="Python" Text="Python(beta)" runat  ="server" type="checkbox" name="directions" value="7"/>
    							</label>
    							
    						</div>
    						<span class="help-block" id="hint_directions"></span>
    					</div>
    					<div class="form-group">
    						<h3 class="grey">现在是否求职</h3>
    						<p style="color: #777;">若选择求职状态，企业就可以看到你的联系方式及报告详情，同时猿圈会将您推荐到更多企业，助你极速入职。
    						</p>
    						<div>
                                    <select id="wantWork_state" runat="server" name="province" class="form-control prov" style="width: 172px;">
                                            <option  value="1">是</option>
									
                                            <option value="2">否</option>
    							    </select>
    							<input type="hidden" value="1" id="jobstate_id_hide">
    						</div>
    					</div>
    					<div class="form-group" id="resume_loc_div_id" style="display: block;">
    						<h3 class="grey">期望工作地点</h3>
    						<div id="warp">
    							<div id="Div1" class="form-inline">
    								<div class="form-group">
    									<label class="sr-only" for="exampleInputEmail3">省</label> 
                                        <select id="select_prov" runat="server" name="province" class="form-control prov" style="width: 172px;">
                                            <option value="1">山东</option>
									
                                            <option value="2">河南</option>
									
                                            <option value="3">河北</option>
                                         </select>
    								</div>
    							</div>
    						</div>
    						<span id="hint_work_add"></span>
    					</div>
    					<div class="form-group" id="resume_file_div_id" style="display: block;">
    						<h3 class="grey">附件简历</h3>
    						<span>请上传pdf格式的简历(50kb-3mb)</span> 
    						<input type="file" name="resumeFile" onchange="modify_hide_resume(this)" id="corp-pic" accept="application/pdf"> 
    						<input value="" id="resume_hide_id" type="hidden"> 
    						<span class="help-block" id="hint2"></span>
    						<span class="text-danger" id="error2" style="display: none;">请上传简历</span>
    					</div>
    					<div class="form-group">
    						<span id="view_error" class="help-block"></span>
    					</div>
    					<div class="form-group form-actions pull-right">
                            <asp:Button ID="Button1" runat="server" Text="保存" class="btn btn-new1 btn-lg" OnClick="Button1_Click"/>
    					</div>
    				</form>
    			</section>
    		</div>
    	</div>
    	<!-- /.row -->
    </div>
    <!-- /.container -->
    <footer id="footer"></footer>

    <div class="container">
        <h4>页面说明：</h4>
        <ol>
            <li>该页面中的所有表单均需要填写，如有空缺则无法提交表单，页面会跳出提示要求完善表单</li>
            <li>在“现在是否求职”选项中，如果选择否，则不会显示“期望工作地点”和“上传啊附件简历”的表单；选择是则需要继续填写表单</li>
            <li>只有完善个人信息之后才可以接受挑战</li>
            <li>点击“保存”按钮后页面表单会被提交到后台，页面跳转至个人中心</li>
        </ol>   
    </div> 

    <script src="js/jquery-2.1.1.js"></script></script>
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/npm.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <script src="sys/js/libs/jquery.sparkline.min.js"></script>
    <script src="sys/js/libs/bootstrap-switch.min.js?v=3.0.0"></script>
    <script src="sys/js/libs/bootstrap-select.min.js"></script>
    <script src="sys/js/libs/bootstrap-filestyle.js"></script>

    <script type="text/javascript" src="dev/pluginJs/jquery.form.js"></script>
    
    <script src="dev/pluginJs/cityselect/jquery.cityselect.js"></script>
    
    <script src="dev/pluginJs/fileinput/fileinput.min.js"></script>
    <script src="dev/pluginJs/fileinput/fileinput_locale_zh.js"></script>
    
    <script src="dev/pluginJs/zmUtil.js"></script>
    <script type="text/javascript">
        function hideResumeFile(obj) {
            if (obj) {
                $("#jobstate_id_hide").val(1);
                $("#resume_file_div_id").show();
                $("#resume_loc_div_id").show();
            } else {
                $("#resume_file_div_id").hide();
                $("#resume_loc_div_id").hide();
                $("#jobstate_id_hide").val(0);
            }
        }
        function modify_hide_resume(obj) {
            $("#resume_hide_id").val($(obj).val());
            $("#error2").hide();
            $("#sub_btn_id").attr("disabled", false);
        }
        $(document)
    	.ready(
    		function () {
    		    var province = "";
    		    var city = "";
    		    var region = "";
    		    if ($Util.isEmpty(province)) {
    		        province = "北京市";
    		        city = "北京市";
    		        region = "海淀区";
    		    }
    		    $("#warp").citySelect({
    		        url: "dev/pluginJs/cityselect/cc.json",
    		        prov: province,
    		        city: city,
    		        dist: region

    		    });
    		    var resume_file_path = "";
    		    var initalPreview = "";
    		    if (!$Util.isEmpty(resume_file_path)) {
    		        initalPreview = "<object data='" + resume_file_path + "' type='application/pdf' width='160px' id='resume_file_old' height='160px'>";
    		    }
    		    $("#corp-pic")
    			.fileinput(
    			{
    			    showUpload: false,
    			    showRemove: false,
    			    browseLabel: "选择文件",
    			    previewFileIcon: "<i class='fa fa-file'></i>",
    			    allowedPreviewTypes: null,
    			    allowedFileExtensions: ["pdf"],
    			    maxFileSize: 3072,
    			    previewFileIconSettings: {
    			        "pdf": "<i class='fa fa-file-pdf-o text-danger'></i>"
    			    },
    			    elErrorContainer: "#hint2",
    			    initialPreview: initalPreview
    			});
    		    $("#defaultForm")
    			.bootstrapValidator(
    			{
    			    message: "This value is not valid",
    			    fields: {
    			        name: {
    			            validators: {
    			                notEmpty: {
    			                    message: "请输入姓名"
    			                },
    			                stringLength: {
    			                    min: 2,
    			                    max: 6,
    			                    message: "真实姓名只可以是2到6个字符"
    			                },
    			                regexp: {
    			                    regexp: /^[\u4E00-\u9FA5]+$/,
    			                    message: "请输入中文"
    			                }
    			            }
    			        },
    			        sex: {
    			            validators: {
    			                notEmpty: {
    			                    message: "请选择性别"
    			                }
    			            }
    			        },
    			        age: {
    			            validators: {
    			                notEmpty: {
    			                    message: "请输入年龄"
    			                },
    			                regexp: {
    			                    regexp: /^[0-9]+$/,
    			                    message: "请输入数字"
    			                },
    			                between: {
    			                    min: 1,
    			                    max: 100,
    			                    message: "年龄应在1到100之间"
    			                }
    			            }
    			        },
    			        phone: {
    			            validators: {
    			                notEmpty: {
    			                    message: "请输入手机"
    			                },
    			                phone: {
    			                    message: "请输入正确的联系方式",
    			                    country: "CN"
    			                }
    			            }
    			        },
    			        directions: {
    			            container: "#hint_directions",
    			            validators: {
    			                notEmpty: {
    			                    message: "请选择技术方向"
    			                }
    			            }
    			        },
    			        jobstate: {
    			            validators: {
    			                notEmpty: {
    			                    message: "是否求职？"
    			                }
    			            }
    			        },
    			        province: {
    			            container: "#hint_work_add",
    			            validators: {
    			                notEmpty: {
    			                    message: "请选择工作地点"
    			                }
    			            }
    			        },
    			        city: {
    			            container: "#hint_work_add",
    			            validators: {
    			                notEmpty: {
    			                    message: "请选择工作地点"
    			                }
    			            }
    			        },
    			        region: {
    			            container: "#hint_work_add",
    			            validators: {
    			                notEmpty: {
    			                    message: "请选择工作地点"
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
    				    if ($Util.isEmpty($(
    						"#resume_hide_id")
    						.val())
    						&& $(
    							"#jobstate_id_hide")
    						.val() == "1") {
    				        $("#error2").show();
    				        return false;
    				    }
    				    if (!$Util.isEmpty($("#hint2")
                            .html())) {
    				        $("#sub_btn_id").attr(
                                "disabled", true);
    				        return false;
    				    }
    				    $("#defaultForm")
                        .ajaxSubmit(
                        {
                            type: "post",
                            url: "user/info/save_user_info.html",
                            success: function (
                                data) {
                                data = eval('('
                                    + data
                                    + ')');
                                if (data.su) {
                                    location.href = "user/info/user_center.html";
                                } else if (data.error) {
                                    $
                                    .alert({
                                        title: "网络错误!",
                                        content: data.msg,
                                        confirm: function () {
                                            location.href = "user/info/user_center.html";
                                        }
                                    });
                                } else {
                                    var html = "<small class='help-block' style='color:red;' data-bv-validator='notEmpty' data-bv-for='cooper_licence' data-bv-result='INVALID'>"
                                    + data.msg
                                    + "</small>";
                                    $(
                                        "#view_error")
                                    .html(
                                        html);
                                }
                            }
                        });
    				});
    		});
    	</script>
    </body>
    </html>

