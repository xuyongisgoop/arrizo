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
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="icon" type="image/png" href="${ctx}/assets/i/favicon.png">

<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">
<link rel="icon" sizes="192x192" href="${ctx}/assets/i/app-icon72x72@2x.png">

<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="apple-touch-icon-precomposed" href="${ctx}/assets/i/app-icon72x72@2x.png">

<!-- Tile icon for Win8 (144x144 + tile color) -->
<meta name="msapplication-TileImage" content="${ctx}/assets/i/app-icon72x72@2x.png">
<meta name="msapplication-TileColor" content="#0e90d2">

<!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
<!--
  <link rel="canonical" href="http://www.example.com/">
  -->
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css">
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.swiper.min.css" />
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
	<div class="am-g">
		<div class="am-u-sm-12">
			<div class="am-thumbnail">
				<div class="am-thumbnail-caption">
					<h3>${result.data.album_info.title}</h3>
					<p>${result.data.album_info.introduction}</p>
				</div>
				<ul data-am-widget="gallery"
					class="am-gallery am-avg-sm-2
  am-avg-md-3 am-avg-lg-4 am-gallery-overlay"
					data-am-gallery="{ pureview: true }">
					<c:forEach items="${result.data.pic_list}" var="pic">
						<li>
							<div class="am-gallery-item">
								<a href="http://s.amazeui.org/media/i/demos/bing-1.jpg" class="">
									<img src="${pic.pic}" alt="${pic.content}" />
									<h3 class="am-gallery-title">${pic.content}</h3>
								</a>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	
	<div data-am-widget="duoshuo" class="am-duoshuo am-duoshuo-default" data-ds-short-name="arrizo">
	    <div class="ds-thread" >
	    </div>
	</div>

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="${ctx}/assets/js/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="${ctx}/assets/js/amazeui.min.js"></script>
	<script src="${ctx}/assets/js/amazeui.swiper.min.js"></script>
</body>
</html>
