<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_index.aspx.cs" Inherits="Web.user_index" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 首页</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<link href="dev/pluginJs/fileinput/fileinput.min.css" rel="stylesheet" />
<link href="css/summernote.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style_new.css" rel="stylesheet">
<style type="text/css">
.companyTags li {
	margin: 5px 10px 0 0;
}
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
				<li class="active">
					<a href="user_index.html">首页</a>
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
					<a href="user_center.html">个人中心</a>
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
							
								
								
								
									张倩
								
								
							
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">帐号设置</a>
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

	<div class="" style="margin:-20px 0 20px 0;">
		<section id="middle">
			<div>
				<div id="carousel1" class="carousel carousel-style-3 slide" data-ride="carousel">
					<!-- Indicators -->
					
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="img/code22.png" alt="First slide">
							<div class="container">
								<div class="carousel-caption">
									<h1>hire.through(code)</h1>
									<h2>= 招到优秀程序员的最佳方式</h2>
									<br>
									<p>让人才更快地脱颖而出，让企业做出更明智的招聘决策</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.carousel -->
			</div>
		</section>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12" id="cplb_main">
				<div id="ele" runat="server">

				</div>
					
				
			</div>
		</div>
		<!-- /.row -->
	</div>
	<div class="text-center" id="sl_more"></div>


	<script src="sys/js/libs/jquery-1.11.0.min.js"></script>
	<script src="sys/bootstrap/js/bootstrap.min.js?v=3.1.1"></script>
	<script src="sys/js/libs/all.min.js"></script>
	<script src="dev/pluginJs/autobrowse/scrollpagination.js"></script>
	
	<script src="dev/pluginJs/cityselect/jquery.cityselect.js"></script>
	
	<script src="dev/pluginJs/zmUtil.js"></script>
	
	<input type="hidden" id="hid_directions_id">
	<input type="hidden" id="hid_level_id">
	<input type="hidden" id="hid_province_id">
	<input type="hidden" id="hid_keyWords_id">
	<input type="hidden" id="order_orderWord_id" value="-1">
	<input type="hidden" id="order_desc_id" value="false">
	<input type="hidden" id="order_desc_id_auto" value="true">
	<script type="text/javascript">
	    function getRootPath() {
	        var basePaths = "http://www.oxcoder.com:80/";
	        return basePaths.substring(0, basePaths.lastIndexOf('/'));
	    }
	    function onSelectChange(o, obj) {
	        // 将不能连续点击
	        $(o).attr("disabled", true);
	        if ($("#order_orderWord_id").val() != obj) {
	            $("#order_desc_id").val("true");
	        }
	        if (!$Util.isEmpty(obj)) {
	            $("#order_orderWord_id").val(obj);
	        }
	        window.location.href = getRootPath() + "/user/index.html?pageCode=1&direction=" + $("#directions_id").val()
					+ "&level=" + $("#level_id").val()
					+ "&province=" + $("#province_id").val()
					+ "&keyWords=" + $("#keyWords_id").val()
					+ "&orderWord=" + $("#order_orderWord_id").val()
					+ "&isDesc=" + $("#order_desc_id").val();
	    }
	    var page = 1;
	    function getWhereData() {
	        data = {};
	        data["pageCode"] = function () { return page; };
	        data["direction"] = function () { return $("#directions_id").val(); };
	        data["level"] = function () { return $("#level_id").val(); };
	        data["province"] = function () { return $("#province_id").val(); };
	        data["keyWords"] = function () { return $("#keyWords_id").val(); };
	        data["orderWord"] = function () { return $("#order_orderWord_id").val(); };
	        data["isDesc"] = function () { return $("#order_desc_id_auto").val(); };
	        data["rdm"] = function () { return $Util.rdm(); };
	        return data;
	    }
	    $(document).ready(function () {
	        var pr = "";
	        if ($Util.isEmpty(pr)) {
	            $("#warp").citySelect({
	                url: "dev/pluginJs/cityselect/cc.json",
	                required: false,
	                defaultValue: "全部地区"
	            });
	        } else {
	            $("#warp").citySelect({
	                url: "dev/pluginJs/cityselect/cc.json",
	                prov: pr,
	                required: false,
	                defaultValue: "全部地区"
	            });
	        }

	        $("#cplb_main").scrollPagination({
	            "contentPage": "user/load_index.html", // the url you are fetching the results
	            "contentData": getWhereData(), // these are the variables you can pass to the request, for example: children().size() to know which page you are
	            "scrollTarget": $(window), // who gonna scroll? in this example, the full window
	            "heightOffset": 10, // it gonna request when scroll is 10 pixels before the page ends
	            "beforeLoad": function () { // before load function, you can display a preloader div
	                $("#sl_more").fadeIn();
	                page = page + 1;
	            },
	            "afterLoad": function (elementsLoaded) { // after loading content, you can use this function to animate your new elements
	                //$("#loading").fadeOut();
	                $(elementsLoaded).fadeInWithDelay();
	                if (elementsLoaded.length <= 0) {
	                    $("#sl_more").html("没有更多了");
	                    $("#cplb_main").stopScrollPagination();
	                } else {
	                    $("#sl_more").html("正在加载...");
	                }
	            }
	        });
	        $.fn.fadeInWithDelay = function () {
	            var delay = 0;
	            return this.each(function () {
	                $(this).delay(delay).animate({
	                    opacity: 1
	                }, 200);
	                delay += 100;
	            });
	        };
	    });
	    function fdisabled(obj) {
	        $(obj).attr("disabled", true);
	    }

	</script>

</body>
</html>



