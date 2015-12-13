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

  <!-- <link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css">
  <link rel="stylesheet" href="${ctx}/assets/css/amazeui.swiper.min.css"/>
  <link rel="stylesheet" href="${ctx}/assets/css/app.css"> -->

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<style type="text/css">
  .spinner {
    width: 32px;
    height: 32px;
    position: absolute;
    z-index: 9998;
  }
  .cube1, .cube2 {
    width: 10px;
    height: 10px;
    position: absolute;
    top: 0;
    left: 0;
    -webkit-animation: cubemove 1.8s infinite ease-in-out;
    animation: cubemove 1.8s infinite ease-in-out;
  }
  .cube1 {
    -webkit-animation-delay: -1.8s;
    animation-delay: -1.8s;
  }
  .cube2 {
    -webkit-animation-delay: -0.9s;
    animation-delay: -0.9s;
  }
  @-webkit-keyframes cubemove {
    25% {
      -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5)
    }
    50% {
      -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg)
    }
    75% {
      -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5)
    }
    100% {
      -webkit-transform: rotate(-360deg)
    }
  }
  @keyframes cubemove {
    25% {
      transform: translateX(42px) rotate(-90deg) scale(0.5);
      -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
    }
    50% {
      transform: translateX(42px) translateY(42px) rotate(-179deg);
      -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
    }
    50.1% {
      transform: translateX(42px) translateY(42px) rotate(-180deg);
      -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
    }
    75% {
      transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
      -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
    }
    100% {
      transform: rotate(-360deg);
      -webkit-transform: rotate(-360deg);
    }
  }
</style>
<style>*{-webkit-tap-highlight-color:rgba(0,0,0,0)}html{-webkit-text-size-adjust:100%;-webkit-touch-callout:none;-webkit-user-select:none}html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,figcaption,figure,footer,header,hgroup,menu,nav,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;outline:0;vertical-align:baseline}audio,canvas,video{display:inline-block;*display:inline;*zoom:1}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}audio,canvas,video{display:inline-block;*display:inline;*zoom:1}body{font:16px/1.5 Helvetica,sans-serif}a:link{background:transparent}a:hover{text-decoration:underline}ins,a{text-decoration:none}ol,ul{list-style:none}fieldset,img{border:0}table{border-collapse:collapse;border-spacing:0}th{text-align:inherit}iframe{display:block}h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:500}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-.5em}sub{bottom:-.25em}.d-clear:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}.d-clear{zoom:1}.d-left,.d-right{display:inline}.d-left{float:left}.d-right{float:right}.d-text-overflow{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
body{color:#000}.timg{background-size:cover;background-repeat:no-repeat;background-position:center;width:100%;height:100%}.service{position:relative;margin-bottom:30px}.service .list{margin-top:10px;width:100%;border-bottom:1px solid #ccc}.service .list .date{font-size:1.4rem;padding:0 .5rem;word-break:break-word}.service .list .time{font-size:.8rem;font-variant:inherit;color:#ccc;text-indent:.7rem;height:30px;line-height:30px}.service .list .cover{width:100%;height:220px;overflow:hidden}.service .list .con{font-size:1rem;padding:18px 18px 0;margin-bottom:8px;line-height:22px;text-align:justify;height:auto;overflow:hidden;word-break:break-word}.service .list .touchbutton{text-align:right;font-size:.9rem;height:30px;line-height:30px;padding-right:10px}</style><style>.more{height:30px;line-height:30px;text-align:center;font-size:.8rem;bottom:34px;width:100%}</style><style>.copyright{height:33px;line-height:33px;background-color:#f8f8f8;width:100%;border:1px solid #e2e2e2;border-width:1px 0;text-align:center;color:#9f9f9f;font-size:.75rem;overflow:hidden;margin-top:60px}</style>
</head>
<body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${ctx}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<div id="backhidden" style="width:100%; height:100%; position:fixed; left:0; top:0; z-index:995; background:#FFF;"></div>

	<div class="spinner" style="left: 784px; top: 383.5px; display: none;">
		<div class="cube1" style="background-color: rgb(255, 82, 82);"></div>
		<div class="cube2" style="background-color: rgb(34, 235, 214);"></div>
	</div>

	<div data-view-cid="view-0">
		<div class="wrap">
			<div class="service">
				<c:forEach items="${result.data.news_list}" var="news">
					<div class="list">
						<div class="date">${news.title}</div>
						<div class="time">${news.time}</div>

						<div class="cover">
							<div class="timg" style="background-image: url(${news.pic})"></div>
						</div>

						<div class="con" style="height: 110px;"><p>${news.content}</p></div>
						<div class="touchbutton">展开</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div data-view-cid="view-1" class="more" style="display: none;">点击查看更多</div>
	<div data-view-cid="view-2" class="copyright">关注&nbsp;${store_name}&nbsp;微信号&nbsp;fbbstudio916</div>

	<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/jquery.dotdotdot.min.js"></script>
<!--<![endif]-->
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/amazeui.swiper.min.js"></script>
<script>
	$(".touchbutton").click(function(e) {
		var t = $(e.currentTarget), n = t.parent().find(".con");
		if (n.css("height") === "110px") {
			n.css("height","");
			t.text("收起");
			if (n.css("height") === "110px") {
				t.remove();
			}
		} else {
			n.css("height","110px");
			t.text("展开");
		}
	});
	$(document).ready(function(){
		$(".touchbutton").each(function(){
			$(this).click();
			$(this).click();
		});
		$("#backhidden").css("display","none");
	});
</script>
</body>
</html>
