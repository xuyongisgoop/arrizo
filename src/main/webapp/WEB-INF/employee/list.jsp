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
  
<style>.copyright{height:33px;line-height:33px;background-color:#f8f8f8;width:100%;border:1px solid #e2e2e2;border-width:1px 0;text-align:center;color:#9f9f9f;font-size:.75rem;overflow:hidden;margin-top:60px}</style>
</head>
<body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${ctx}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<div class="swiper-container demo" id="demo1" style="height: 300px;">
		<div class="swiper-wrapper">
			<c:forEach items="${result.data.banner_list}" var="banner">
				<div class="swiper-slide"
					style="background-image: url(${banner.pic}); background-repeat: no-repeat; background-size: 100% 100%;">
				</div>
			</c:forEach>
		</div>
		<div class="swiper-pagination"></div>
	</div>

	<ul class="am-list">
	<c:forEach items="${result.data.employee_list}" var="employee">
		<li class="am-list-item-desced am-list-item-thumbed list-li">
			<div class="am-g">
		    <div class="am-u-sm-3">
	        <a href="#">
	        	<img class="am-radius" style="width:70px;height:70px" src="${employee.avatar}">
	        </a>
		    </div>
		    <div class="am-u-sm-9">
	        <div class="am-g" style="height:35px">
	          <div class="am-u-sm-3" style="padding-left:0">
	              <a class="staff-name base-value-color">${employee.employee_name}</a>
	          </div>
	          <div class="am-u-sm-9" style="padding-left:0">
	              <div>
	              	星级：${employee.star_str}
	              </div>
	          </div>
	        </div>
	        <div class="am-g" style="height:35px">
	          <div class="am-u-sm-8" style="padding-left:0">
	              <span class="common-text">粉丝数：</span><a>${employee.attention_num}</a>
	          </div>
	          <div class="am-u-sm-4" style="padding-left:0">
	          	<a href="#">
	              <!-- <div class="order-btn">
	              	预约
	                <span class="am-icon-chevron-right base-color"></span>
	                <span class="am-icon-chevron-right base-color"></span>
	              </div> -->
					<a class="am-btn am-btn-primary" href="${ctx}/employee/preOrder.html?employee_id=${employee.employee_id}">
						预约 <i class="am-icon-clock-o"></i>
					</a>
				</a>
	          </div>
	        </div>
		    </div>
			</div>
		</li>
	</c:forEach>
</ul>

<div data-view-cid="view-2" class="copyright">关注&nbsp;${store_name}&nbsp;微信号&nbsp;fbbstudio916</div>
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
