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

<header data-am-widget="header"
	class="am-header am-header-default base-header-color am-no-layout">
	<div class="am-header-left am-header-nav">
		<a href="javascript:history.go(-1);" class="back-btn"> <i
			class="am-header-icon am-icon-angle-left"></i>
		</a>
	</div>
	<h1 class="am-header-title">
		<a class="">会员登录</a>
	</h1>
	<div class="am-header-right am-header-nav"></div>
</header>
<div class="am-g">
	<div class="error-top-tip"></div>
	<div class="am-u-sm-10 am-u-sm-centered">
		<form id="login_form" class="am-form"
			action="${ctx}/user/loginSubmit.html"
			method="post">

			<fieldset>
				<br>
				<br>
				<div class="am-form-group">
					<label for="doc-ds-ipt-1">手机号</label> <input type="text"
						name="phone" id="doc-ds-ipt-1" class="am-form-field"
						placeholder="输入手机号">
				</div>

				<div class="am-form-group">
					<label for="doc-ds-ipt-2">登录密码</label> <input type="password"
						name="password" id="doc-ds-ipt-2" class="am-form-field"
						placeholder="输入登录密码">
				</div>

				<div class="am-checkbox">
					<!--<label>-->
					<!--<input type="checkbox" checked> 绑定微信登录-->
					<!--</label>-->
				</div>
				<input type="hidden" name="store_id" value="${store_id}">
				<button type="submit" class="am-btn base-ok-color am-icon-sign-in">
					登录</button>
				<br>
				<br>
				<br>
				<div class="am-text-right">
					<a class="am-btn am-btn-default am-btn-xs btn-01"
						href="${ctx}/user/register.html">注册会员</a>&nbsp;&nbsp;
					<a class="am-btn am-btn-default am-btn-xs btn-01"
						href="${ctx}/user/register.html">忘记密码?</a>
				</div>
			</fieldset>

		</form>
	</div>
</div>

	<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/amazeui.swiper.min.js"></script>
<script>

</script>
</body>
</html>
