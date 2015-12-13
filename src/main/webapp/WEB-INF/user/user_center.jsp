<!doctype html>
<html class="no-js">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>${store_name}</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <link rel="icon" type="image/png" href="${ctx}/assets/i/favicon.png">

  <!-- Add to homescreen for Chrome on Android -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="icon" sizes="192x192" href="${ctx}/assets/i/app-icon72x72@2x.png">

  <!-- Add to homescreen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  <link rel="apple-touch-icon-precomposed" href="${ctx}/assets/i/app-icon72x72@2x.png">

  <!-- Tile icon for Win8 (144x144 + tile color) -->
  <meta name="msapplication-TileImage" content="${ctx}/assets/i/app-icon72x72@2x.png">
  <meta name="msapplication-TileColor" content="#0e90d2">

  <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
  <!--
  <link rel="canonical" href="http://www.example.com/">
  -->

  <link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css">
  <link rel="stylesheet" href="${ctx}/assets/css/amazeui.swiper.min.css"/>
  <link rel="stylesheet" href="${ctx}/assets/css/app.css">

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
  
	<style type="text/css">

	</style>
</head>
<body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${ctx}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<div style="height:200px;background-image:url(http://s1.iambetter.cn/sns_app/2015/08/23/1440329334009.jpg);text-align:center;">
	<img class="am-circle" style="margin-top:20px" src="http://s1.iambetter.cn/sns_app/2015/08/23/1440329992104.jpg" width="80" height="80"></img>
	<p style="color:white;">${result.data.user_info.phone}</p>
</div>

<div data-am-widget="tabs" class="am-tabs am-tabs-d2">
    <ul class="am-tabs-nav am-cf">
        <li class="am-active"><a href="[data-tab-panel-0]">预约店员</a></li>
        <li class=""><a href="[data-tab-panel-1]">预约产品</a></li>
    </ul>
    <div class="am-tabs-bd">
        <div data-tab-panel-0 class="am-tab-panel am-active">
				<ul class="am-list">
					<c:forEach items="${result.data.pre_employee_list}" var="employee">
					<li class="am-list-item-desced am-list-item-thumbed list-li">
						<div class="am-g">
							<div class="am-u-sm-3">
								<a href="#"> <img class="am-radius am-img-thumbnail"
									style="width: 70px; height: 70px"
									src="${employee.avatar}">
								</a>
							</div>
							<div class="am-u-sm-9">
								<div class="am-g" style="height: 35px">
									<div class="am-u-sm-3" style="padding-left: 0">
										<a class="staff-name base-value-color">${employee.employee_name}</a>
									</div>
									<div class="am-u-sm-9" style="padding-left: 0">
										<span class="common-text">预约项目：</span><a>${employee.items}</a>
									</div>
								</div>
								<div class="am-g" style="height: 35px">
									<div class="am-u-sm-3" style="padding-left: 0">
									</div>
									<div class="am-u-sm-9" style="padding-left: 0">
										<span class="common-text">预约时间：</span><a>${employee.pre_time}</a>
									</div>
								</div>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
        <div data-tab-panel-1 class="am-tab-panel ">
        	<ul class="am-list">
			  <li><a href="#">产品1</a></li>
			  <li><a href="#">产品2</a></li>
			  <li><a href="#">产品3</a></li>
			  <li><a href="#">产品4</a></li>
			</ul>
        </div>
    </div>
</div>

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/amazeui.swiper.min.js"></script>
<script>
	$('#demo1').swiper({
	  pagination: '#demo1 .swiper-pagination',
	  paginationClickable: true
	});
</script>
</body>
</html>
