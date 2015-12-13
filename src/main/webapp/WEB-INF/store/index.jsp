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
.module-ct {
	position: absolute;
	left: 5%;
	width: 150px;
	display: none;
}

.module-ct>table {
	width: 100%;
}

.module-ct .module {
	width: 100%;
	height: 55px;
	background: rgba(13, 13, 13, 0.5);
	font-size: 13px;
	text-align: center;
	color: white;
	padding-top: 10px;
	line-height: 20px;
}

.module-vt {
	position: absolute;
	right: 5%;
	width: 150px;
	display: none;
}

.module-vt>table {
	width: 100%;
}

.module-vt .module {
	width: 100%;
	height: 55px;
	background: rgba(13, 13, 13, 0.5);
	font-size: 13px;
	text-align: center;
	color: white;
	padding-top: 10px;
	line-height: 20px;
}

.module-img {
	position: absolute;
	width: 120px;
	height: 120px;
	display: none;
	background-image: url(${ctx}/images/valenticons-11-512.png);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	text-align: center;
	padding-top: 80px;
	font-size: 18px;
}

.module-icon {
	font-size: 18px;
}
</style>
</head>
<body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${ctx}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<div class="swiper-container demo" id="demo1"
		style="width: 100%; height: 100%; position: absolute; z-index: -1;">
		<div class="swiper-wrapper">
			<c:forEach items="${result.data.banner_list}" var="banner">
				<div class="swiper-slide"
					style="background-image:url(${banner.pic});background-repeat:no-repeat;background-size:100% 100%;"></div>
			</c:forEach>
		</div>
	</div>

	<div class="module-ct">
		<table>
			<tbody>
				<tr>
					<td><a href="${ctx}/store/newsList.html">
							<div class="module" style="border-right: 1px solid; border-bottom: 1px solid;">
								<div>
									<span class="am-icon-clock-o module-icon"></span>
								</div>
								<div>个人资讯</div>
							</div>
					</a></td>
					<td><a href="${ctx}/album/albumList.html">
							<div class="module" style="border-bottom: 1px solid;">
								<div>
									<span class="am-icon-heart-o module-icon"></span>
								</div>
								<div>作品展示</div>
							</div>
					</a></td>
				</tr>
				<tr>
					<td><a href="${ctx}/employee/employeeList.html">
							<div class="module" style="border-right: 1px solid;">
								<div>
									<span class="am-icon-cubes module-icon"></span>
								</div>
								<div>我要预约</div>
							</div>
					</a></td>
					<td><a href="${ctx}/product/productMain.html">
							<div class="module">
								<div>
									<span class="am-icon-user module-icon"></span>
								</div>
								<div>产品中心</div>
							</div>
					</a></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="module-vt">
		<table>
			<tbody>
				<tr>
					<td>
						<div url="list.html" class="module"
							style="border-bottom: 1px solid;">
							<div>
								<span class="am-icon-clock-o module-icon"></span>人气魅力
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div url="list.html" class="module"
							style="border-bottom: 1px solid;">
							<div>
								<span class="am-icon-cubes module-icon"></span>店长推荐
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div url="list.html" class="module"
							style="border-bottom: 1px solid;">
							<div>
								<span class="am-icon-clock-o module-icon"></span>积分好礼
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div url="list.html" class="module"
							style="border-bottom: 1px solid;">
							<div>
								<span class="am-icon-user module-icon"></span>粉丝福利
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="module-img">活动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;抽奖</div>

	<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/amazeui.swiper.min.js"></script>
<script>
	$('#demo1').swiper();
	var win_height = $(document).height();
	var win_width = $(document).width();
	var vt_height = $(".module-vt").height();
	var vt_top = 0.55 * win_height;
	var ct_height = $(".module-ct").height();
	var ct_top = vt_top + vt_height - ct_height;
	var img_height = $(".module-img").height();
	var img_top = vt_top - img_height - 80 - 5;
	var img_right = win_width * 0.05 + 15;
    $('.swiper-container').css("height", win_height+"px").css("width", win_width+"px").show();
    $(".module-ct").css("top", ct_top+"px").show();
</script>
</body>
</html>
