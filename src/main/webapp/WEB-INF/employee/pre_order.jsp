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
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.swiper.min.css" />
<link rel="stylesheet" href="${ctx}/assets/css/app.css">
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.datetimepicker.css">

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

	<div
		style="height: 200px; background-image: url(http://s1.iambetter.cn/sns_app/2015/08/23/1440329334009.jpg); text-align: center;">
		<img class="am-circle" style="margin-top: 20px"
			src="${result.data.avatar}" width="80" height="80"></img>
		<p style="color: white;">${result.data.employeeName}</p>
	</div>

	<div data-am-widget="tabs" class="am-tabs am-tabs-d2">
		<form class="am-form" data-am-validator action="${ctx}/user/preOrderSubmit.html">
			<input type="hidden" name="employee_id" value="${result.data.id}" />
			<div class="am-form-group">
				<h3>预约服务项目</h3>
				<label class="am-checkbox-inline"> <input type="checkbox"
					value="洗头" name="items"/> 洗头
				</label> <label class="am-checkbox-inline"> <input
					type="checkbox" value="剪吹" name="items"/> 剪吹
				</label> <label class="am-checkbox-inline"> <input
					type="checkbox" value="护理" name="items"/> 护理
				</label> <label class="am-checkbox-inline"> <input
					type="checkbox" value="烫染" name="items"/> 烫染
				</label>
			</div>

			<div class="am-form-group">
				<h3>备注说明</h3>
				<textarea class="" rows="3" id="doc-ta-1" name="remark"></textarea>
			</div>

			<div class="am-form-group">
				<h3>预约时间</h3>
				<p>
					<input size="16" type="text" value="2015-02-14 14:45" readonly class="form-datetime-lang am-form-field" name="pre_time">
				</p>
			<div>

			<div>
				<button type="submit" class="am-btn am-btn-primary am-btn-block">提交</button>
			</div>
		</form>
	</div>

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/amazeui.swiper.min.js"></script>
<script src="${ctx}/assets/js/amazeui.datetimepicker.js"></script>
<script>
	(function($) {
		// 也可以在页面中引入 amazeui.datetimepicker.zh-CN.js
		$.fn.datetimepicker.dates['zh-CN'] = {
			days : [ "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日" ],
			daysShort : [ "周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日" ],
			daysMin : [ "日", "一", "二", "三", "四", "五", "六", "日" ],
			months : [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月",
					"十月", "十一月", "十二月" ],
			monthsShort : [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月",
					"九月", "十月", "十一月", "十二月" ],
			today : "今日",
			suffix : [],
			meridiem : [ "上午", "下午" ]
		};

		$('.form-datetime-lang').datetimepicker({
			language : 'zh-CN',
			format : 'yyyy-mm-dd hh:ii'
		});
	}(jQuery));
</script>
</body>
</html>
