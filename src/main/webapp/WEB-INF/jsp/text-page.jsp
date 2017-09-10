<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>飞龙十六宫格 - 国学·书法 - ${title} </title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="/assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/assets/plugins/animate.css">
    <link rel="stylesheet" href="/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/plugins/fancybox/source/jquery.fancybox.css"> 
    <link rel="stylesheet" href="/assets/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css" media="screen">
    <!--[if lt IE 9]><link rel="stylesheet" href="/assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen"><![endif]-->

    <!-- CSS Pages Style -->    
    <link rel="stylesheet" href="/assets/css/pages/page_one.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="/assets/css/theme-colors/blue.css" id="style_color">
    <link rel="stylesheet" href="/assets/css/theme-skins/dark.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/assets/css/custom.css">
</head>	

<body>
  
<div class="wrapper">
    <!--=== Header ===-->    
	<%@ include file="common/header.jsp" %>
    <!--=== End Header ===-->

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">新闻中心</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">首页</a></li>
                <li><a href="news.html#report">新闻中心</a></li>
                <li class="active"><a href="news.html#notice">网站公告</a></li>
            </ul>
        </div>
    </div>
    <!--=== End Breadcrumbs ===-->
    
    <!-- Container Part -->
	<div class="container content">
		<div class="row">
			<div class="col-md-9">
				<div class="blog-grid margin-bottom-30">
					<h2 class="blog-grid-title-lg">十六宫格简介</h2>
					<div class="overflow-h margin-bottom-10">
						<ul class="blog-grid-info pull-left">
							<li>宋一夫</li>
							<li>2017-07-12</li>
						</ul>
						<div class="pull-right">
							<div class="addthis_sharing_toolbox"></div>
						</div>
					</div>
                    <!--
					<img class="img-responsive" src="/assets/img/news/news2.jpg" alt="">
                    -->
				</div>
               <div id="video-container" class="blog-grid margin-bottom-30">
               
               </div>

				<p> “十六宫格”是在“田字格”“米字格”“九宫格”的基础上，创新的一种新型书写用格。使用“十六宫格”的长处，它将方块字进行最佳等距的分割，使书写者能在格中找到笔画及结构的准确位置，会对初学书法者起到事半功倍的效果。凡用过“十六宫格”的书写者，均认同“十六宫格”在书法学习中不可替代的作用。</p>
			</div>


			<div class="col-md-3">
            	<!-- Our Services -->
                <div class="who margin-bottom-30">
                    <div class="headline"><h2>我们的服务</h2></div>
                    <p>我们提供优质的国学书法教育服务.</p>
                    <ul class="list-unstyled">
                        <li><a href="#"><i class="fa fa-desktop"></i>优质高清的教学视频</a></li>
                        <li><a href="#"><i class="fa fa-bullhorn"></i>权威的教程教材</a></li>
                        <li><a href="#"><i class="fa fa-globe"></i>随时享用的互联网教学</a></li>
                        <li><a href="#"><i class="fa fa-group"></i>广泛分布的培训学校</a></li>
                    </ul>
                </div>


           </div>

		</div>
	</div>
	<!--=== End Container Part ===-->

    <!--=== Footer ===-->
 	<%@ include file="common/footer.jsp" %>
    <!--=== End Footer ===-->
</div><!--/wrapper-->


<!-- JS Global Compulsory -->			
<script type="text/javascript" src="/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="/assets/js/app.js"></script>
<script type="text/javascript" src="/assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript" src="/assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript" src="/assets/js/plugins/revolution-slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        FancyBox.initFancybox();
        StyleSwitcher.initStyleSwitcher();        
        RevolutionSlider.initRSfullWidth();
    });
</script>

<script src="http://imgcache.qq.com/open/qcloud/video/vcplayer/TcPlayer-2.2.0.js"></script>

<script>

    (function(){

        function getParams(name) {

            var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');

            var r = window.location.search.substr(1).match(reg);

            if (r != null) {

                return decodeURIComponent(r[2]);

            }

            return null;

        }

        var rtmp = getParams('rtmp'),

            flv  = getParams('flv'),

            m3u8 = getParams('m3u8'),

            mp4  = getParams('mp4'),

            live = (getParams('live') == 'true' ? true : false),

            coverpic = getParams('coverpic'),

            width = getParams('width'),

            height = getParams('height'),

            autoplay = (getParams('autoplay') == 'true' ? true : false);

        /**

         * 视频类型播放优先级

         * mobile ：m3u8>mp4

         * PC ：RTMP>flv>m3u8>mp4

         */

        var options = {

            rtmp: rtmp,

            flv: flv  ,

            flv_hd: flv ,

            flv_sd: flv ,

            mp4 : mp4 || 'http://1253949274.vod2.myqcloud.com/39b2d80dvodgzp1253949274/d3d8fb959031868223000025609/f0.mp4',

            mp4_hd :  'http://1253949274.vod2.myqcloud.com/39b2d80dvodgzp1253949274/d3d8fb959031868223000025609/f0.mp4',

            mp4_sd :  'http://1253949274.vod2.myqcloud.com/39b2d80dvodgzp1253949274/d3d8fb959031868223000025609/f0.f20.mp4',

            coverpic: coverpic ,

            autoplay: autoplay ? true : false,

            live: live,

            width : width || '383',

            height : height || '255'

        };

        var player = new TcPlayer('video-container', options);

        window.tcplayer  = player;

    })();

</script>


<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->


</body>
</html>