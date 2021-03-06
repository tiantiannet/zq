﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OxcodeWeb.aspx.cs" Inherits="Web.OxcodeWeb" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/summernote.css">
<link rel="stylesheet" type="text/css" href="css/style_new.css">
<link rel="stylesheet" type="text/css" href="css/carousel.css">

<style type="text/css">
		body {
			padding-bottom: 0;
		}
        @media (max-width: 960px) {
          .video-rp {
            height: 240px;
          }
        }
        @media (min-width: 960px) {
          .video-rp {
            height: 400px;
          }
        }
        .carousel-inner > .item > img {
          height: initial;
        }
        .carousel {
          height: initial;
        }
        .corp-num {
          text-align: center;
          margin-top: -20px;
          padding: 30px 0;
          background-color: aliceblue;
        }
        .corp-comment {
          margin-top: 50px;
        }
        .carousel-inner{
          /*text-align: center;*/
        }
        /*.carousel-indicators   { top:200px;}*/
        .carousel-inner .item  { background-color: #fff;height: auto;}
        .carousel-inner dt     { width:120px; height:160px; float:left; font-weight:normal; text-align: center;}
        .carousel-inner dt img {
                                                        }
        .carousel-inner dt span { display:block; line-height:30px;  text-align:center;}
        .carousel-inner dd      { margin-left: 160px;-webkit-transition: all .2s ease-in-out;
     -o-transition: all .2s ease-in-out;
        transition: all .2s ease-in-out; }
        .carousel-inner dd i          { display:block; width:39px; height:34px; }
        .carousel-inner dd .leftMark  { float:left; background:url(images/icons.png) no-repeat -17px -25px; }
        .carousel-inner dd .rightMark { float:right; background:url(images/icons.png) no-repeat -58px -25px; margin-top:100px; }
        .carousel-inner dd p          { margin:0 70px; line-height:36px; font-size:18px;
       -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
               transition: all .2s ease-in-out;}

        .carousel-indicators .active {
          background-color: #333;
        }
        .carousel-indicators li{
          border-color: #333;
        }
        .index-content{
          margin: 100px 0;
        }
        @media screen and (max-width:1024px){
          .corp-num h1{
            font-size: 30px;
          }
          #carousel1 img{
            height: 100%;
          }
          #carousel2 .carousel-inner dd {
            margin-left: 0;
          }
          .carousel-inner dd p {
            margin: 0;
          }
          .carousel-indicators {
              bottom: -20px;
          }
        }
</style>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
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
			<a class="navbar-brand hidden-sm" href="index.html" style="padding: 0;">
				<img src="img/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="index.html">首页</a>
				</li>
				
				<li class="">
					<a href="#">产品介绍</a>
				</li>
				
				<li class="">
					<a href="#">客户案例</a>
				</li>
				<li class="">
					<a href="#">常见问题</a>
				</li>
				<li class="">
					<a href="#">了解我们</a>
				</li>
				<li class="">
					<a href="#">编程大赛</a>
				</li>
				
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="LoginWeb.aspx">登录</a>
				</li>
				<li>
					<a href="RegisterWeb.aspx">注册</a>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div id="carousel1" class="carousel slide" data-ride="carousel" style="margin: 30px 0 20px 0;">
		<div class="carousel-inner">
			<div class="item active">
				<img src="img/indexbg.png">
				<div class="container">
					<div class="col-md-12 index-content">
						<div class="col-md-7">
			                  <h1 style="-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;color:#fff;">极速，高效的技术测评解决方案</h1>
			                  <p class="hidden-xs hidden-md" style="-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;color:#fff;font-size:18px;">快速识别优秀的技术人才</p>
			                  <p class="hidden-xs hidden-md" style="-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;color:#fff;font-size:18px;">全球领先的技术能力测评工具</p>
			                  <p class="hidden-xs hidden-md" style="-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;color:#fff;font-size:18px;">精准推荐技术人才</p>
			                  <a href="signup.html" target="_blank"><button class="btn btn-lg btn-success">开通免费版</button></a>
			                  <a href="#" style="margin-left:10px;" target="_blank"><button class="btn btn-lg btn-primary">测评解决方案</button></a>
			                  <div class="clearfix"></div>
		          	    </div>
						<div class="col-md-5 hidden-xs hidden-md">
							<img src="img/indexicon.png">
						</div>
					</div>
				</div>
			</div>
			<!-- /.carousel-inner -->
		</div>
		<!-- /.carousel -->
	</div>
	<div class="corp-num">
		<div class="container">
			<h1>
				超过<b>1000</b>个企业通过猿圈在测评技术人才
			</h1>
			<div>
				<a href="customer_case.html"><button class="btn btn-lg btn-info">看看谁在用猿圈</button></a>
			</div>
		</div>
	</div>
	<div id="carousel2" class="container carousel slide corp-comment"
		data-ride="carousel">

		<ol class="carousel-indicators">
			<li data-target="#carousel2" data-slide-to="0" class="active"></li>
			<li data-target="#carousel2" data-slide-to="1"></li>
			<li data-target="#carousel2" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<dl>
					<dt>
						<img src="img/51shebaohr.png" width="80px" height="80px">
						<span>51社保HR</span>
					</dt>
					<dd>
						<p>51社保每天都收到特别多的技术简历，现在的虚假简历很多，筛选起来耗时耗力，猿圈让我从筛选海量简历的工作中解脱</p>
					</dd>
				</dl>
			</div>
			<div class="item">
				<dl>
					<dt>
						<img src="img/huanxinhr.png" width="80px" height="80px">
						<span>环信HR</span>
					</dt>
					<dd>
						<p>猿圈的人才推荐功能特别实用，在着急招聘技术人才时，可以直接找到优秀的技术人才并联系上，完美的解决了我们的用人需求</p>
					</dd>
				</dl>
			</div>
			<div class="item">
				<dl>
					<dt>
						<img src="img/kaiyuanhr.png" width="80px" height="80px"><span>开源中国HR</span>
					</dt>
					<dd>
						<p>2015开源中国和猿圈合作的非常愉快，2016我们将一起进步~</p>
					</dd>
				</dl>
			</div>
		</div>

	</div>
	<!-- /.carousel -->
	</div>
	
	<script src="sys/js/libs/jquery-1.11.0.min.js"></script>
	<script src="sys/bootstrap/js/bootstrap.min.js?v=3.1.1"></script>
	<script src="sys/js/libs/jquery.sparkline.min.js"></script>
	<script src="sys/js/libs/bootstrap-switch.min.js?v=3.0.0"></script>
	<script src="sys/js/libs/bootstrap-select.min.js"></script>
	<script src="sys/js/libs/bootstrap-filestyle.js"></script>
	<script src="sys/js/libs/summernote.min.js"></script>
	<!-- 引入footer -->
	




<div class="afooter" style="">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="img/weixin.jpg" style="max-width:200px;">
			</div>
			<div class="col-md-4">
				<h3>联系我们</h3>
				<p>客服电话：010-57407961</p>
				<p>客服邮箱：zyh@oxcoder.com</p>
				<p>客服微信：oxcoder_com（或者扫描左侧二维码）</p>
				<p>
					<a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank" style="border:none;padding-left:0;margin-left:0;">QQ交流群：77590762</a>
				</p>
			</div>
			<div class="col-md-4">
				<h3>关于我们</h3>
				<ul style="margin-left:-25px;">
					<li>
						<a href="#" style="border:none;padding-left:0;margin-left:0;">公司简介</a>
					</li>
					<li>
						<a href="#" style="border:none;padding-left:0;margin-left:0;">了解我们</a>
					</li>
					<li>
						<a href="#" style="border:none;padding-left:0;margin-left:0;">客户案例</a>
					</li>
				</ul>
				<p>
					© 2016 oxcoder.com
					<a href="http://form.mikecrm.com/f.php?t=rJmyZe" target="_blank">意见反馈</a>
					<script type="text/javascript">
					    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
					    document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
					</script>
				</p>
			</div>
		</div>

	</div>
</div>
<script type="text/javascript">
    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    if (($(document.body).height() + 50) < $(window).height()) {
        $(".afooter").addClass("navbar-fixed-bottom");
    };
</script>
<script type='text/javascript' src='http://tb.53kf.com/kf.php?arg=10124917&style=1'></script>
</body>
</html>
