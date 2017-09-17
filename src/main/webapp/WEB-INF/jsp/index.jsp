<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    <link rel="shortcut icon" href="/favicon.ico">

    <!--
     Web Fonts 
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>
	-->
	
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
    <link rel="stylesheet" href="/assets/plugins/parallax-slider/css/parallax-slider.css">
    <link rel="stylesheet" href="/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio-index.min.css">    
    <link rel="stylesheet" href="/assets/plugins/cube-portfolio/cubeportfolio/custom/custom-index-cubeportfolio.css">

    <!-- CSS Theme -->
    <link rel="stylesheet" href="/assets/css/theme-colors/default.css" id="style_color">
    <link rel="stylesheet" href="/assets/css/theme-skins/dark.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/assets/css/custom.css">
</head>	

<body>
  
<div class="wrapper">
    <!--=== Header ===-->    
	<%@ include file="common/header.jsp" %>
    <!--=== End Header ===-->

    <!--=== Slider ===-->
    <div class="slider-inner">
        <div id="da-slider" class="da-slider">

            <div class="da-slide">
                <h2><i>《书法练习指导》</i> <br /> <i>全套书法教材</i> <br />  </h2>
                <p><i>《中小学书法教育指导纲要》</i> <br /> <i>权威教育部门推荐使用</i> <br /> <i>吉林美术出版社出版</i></p>
                <div class="da-img"><img class="img-responsive" src="/assets/plugins/parallax-slider/img/shufajiaocai.png" alt=""></div>
            </div>

            <div class="da-slide">
                <h2><i>传承经典</i> <br /> <i>弘扬中华优秀传统文化</i> <br /> </h2>
                <p><i>国学启蒙读本</i> <br /> <i>中国国学基础读本</i><br /> <i>现代教育出版社出版</i></p>
                <div class="da-img"><img src="/assets/plugins/parallax-slider/img/guoxueandguoxue.png" alt="image01" /></div>
            </div>
            
			<div class="da-slide">
                <h2><i>宋一夫老师讲书法</i> <br /> </h2>
                <p><i>给同学们讲解十六宫格的使用方法</i></p>
                <div class="da-img">
                    <iframe src="http://playvideo.qcloud.com/vod/9031868223000025609/iplayer.html?appid=1253949274&fileid=9031868223000025609&autoplay=0&sw=1920&sh=1080" frameborder="0" width="530" height="300" scrolling="no"></iframe>	<!-- 页面内多处使用iframe代码，后面的JS代码只需要使用一次(作用是调整iframe的高度) -->	<script src="//imgcache.qq.com/open/qcloud/video/h5/fixifmheight.js" charset="utf-8"></script>
                </div>
            </div>
            <div class="da-arrows">
                <span class="da-arrows-prev"></span>
                <span class="da-arrows-next"></span>        
            </div>
        </div>
    </div><!--/slider-->
    <!--=== End Slider ===-->

    <!--=== Purchase Block ===-->
    <div class="purchase">
        <div class="container">
            <div class="row">
                <div class="col-md-9 animated fadeInLeft">
                    <span>十六宫格简介</span>
                    <p>${brief_intro.content }</p>
                </div>            
                <div class="col-md-3 btn-buy animated fadeInRight">
                    <a href="/shiliugongge/" class="btn-u btn-u-lg"><i class="fa "></i> 点击了解十六宫格</a>
                </div>
            </div>
        </div>
    </div><!--/row-->
    <!-- End Purchase Block -->

    <!--=== Content Part ===-->
    <div class="container content-sm">

    	<!-- Recent Works -->
        <div class="headline"><h2>视频教程</h2></div>
        <div class="row margin-bottom-20">
			<c:forEach items="${recommendVideoItems}" var="obj">
            
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                	<div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="http://file.feilongshiliugongge.com/${obj.coverPicUrl }" alt="" >
                        </div>
                        <a class="btn-more hover-effect" href="/article/${obj.id}.html">观看视频 +</a>					
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="/article/${obj.id}.html">${obj.title }</a></h3>
                        <p>${obj.digest }</p>
                    </div>
                </div>
            </div>
            
            </c:forEach>
         </div>
            <!-- 
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                	<div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="/assets/img/screenshot/2017-07-02_16_1.png" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="index.html#">观看视频 +</a>					
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="index.html#">前言</a></h3>
                        <p>为了使广大师生用好本套教材，我们特别制作了教学视频。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                    <div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="/assets/img/screenshot/2017-07-02_16_2.png" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="article.html">观看视频 +</a>                   
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="index.html#">宋一夫老师讲书法</a></h3>
                        <p>主编的中小学教材主要有《中学历史》（中华书局）、《国学》（现代教育出版社）、《书法》（现代教育出版社）等</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                    <div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="/assets/img/screenshot/2017-07-02_16_3.png" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="index.html#">观看视频 +</a>                   
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="index.html#">颜勤礼碑</a></h3>
                        <p>此碑是颜真卿晚年精品，已完全脱去了初唐楷法的体态。此碑结字端庄，宽润疏朗，气势雄强，骨架开阔，方形外拓，横细竖粗非常鲜明，方圆转折的笔法清晰。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                    <div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="/assets/img/screenshot/2017-07-02_16_4.png" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="index.html#">观看视频 +</a>                   
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="index.html#">笔法讲解</a></h3>
                        <p>其用笔横细竖粗，藏头护尾，方圆并用，雄健有力。竖画取“相向”之势，捺画粗壮且雁尾分叉，钩如鸟嘴，点画间气势连贯。</p>
                    </div>
                </div>
            </div>
        </div>
         -->
    	<!-- End Recent Works -->

        <!--名师风采 start -->
        <div class="headline"><h2>名师风采</h2></div>
        <div class="row margin-bottom-20">
			<c:forEach items="${recommendTeacherItems}" var="obj">
            
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                	<div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="http://file.feilongshiliugongge.com/${obj.coverPicUrl }" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="/article/${obj.id}.html">查看详情</a>					
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="/article/${obj.id}.html">${obj.title }</a></h3>
                        <p>${obj.digest }</p>
                    </div>
                </div>
            </div>
            
            </c:forEach>
        </div>
        <!-- 名师风采 end -->
    	<!-- Info Blokcs -->
    	<div class="row margin-bottom-30">
        	<!-- Welcome Block -->
    		<div class="col-md-8 md-margin-bottom-40">
                <div class="headline"><h2>新闻中心</h2></div> 

                <div id="filters-container" class="cbp-l-filters-text content-xs">
                    <div data-filter=".report" class="cbp-filter-item-active cbp-filter-item" id="news_init"> 新闻报道 </div> |
                    <div data-filter=".activity" class="cbp-filter-item"> 活动资讯 </div> |
                    <div data-filter=".notice" class="cbp-filter-item"> 网站公告 </div> 
                </div>

                <div id="grid-container" >
                	<div class="cbp-item report">
                    	<div class="row">
                    		${news_report.content }
                    		<!-- 
	                        <div class="col-md-4">
	                            <img src="/assets/img/news/news1.jpg" class="img-responsive img-tab-space" alt="大法师的">                                
	                        </div>
	                        <div class="col-md-8">
	                            <h4>诗书画印重识启功</h4>
	                            <p>　　今年的7月26日，是启功先生百年诞辰，由北京师范大学主办的“启功遗墨——启功先生书画作品展览”同日于国家博物馆开幕。同时，《启功全集》也于26日举行了首发式。本次北师大将活动定义为重新认识启功，意欲展示诗书画印全才的多面启功。</p>                        
	                        </div>
	                         -->
                    	</div>
                  	</div>
                  
					<div class="cbp-item activity">
	                    <div class="row">
	                    	${news_activity.content }
	                    	<!-- 
	                        <div class="col-md-12">
	                            <h4>第六届中国书坛新人作品展览征稿启事</h4>
	                            <p>　　为贯彻落实党的十七大精神，推动书法艺术大发展大繁荣，适应书法新人发展的需要，经申办和协商，中国书法家协会决定举办第六届中国书坛新人作品展览。</p>                        
	                        </div>
	                         -->
	                    </div>
	                </div>
	
	                        
	                <div class="cbp-item notice">
	                    <div class="row">
	                    	${news_notice.content }
	                    	<!-- 
	                        <div class="col-md-12">
	                            <h4>飞龙十六宫格网站升级公告</h4>
	                            <p>　　本网自开通以来，受到了广大学生、书法爱好者的广泛关注。即日起，网站将更加及时的发布信息、让更加丰富的内容呈现给大家。 </p>
	                            <p>　　升级后的网站，在活动资讯栏目中，我们将为您呈现业界重大活动。在新闻报道栏目中，我们将及时报道动态书法信息，反映当代书坛。</p>                        
	                        </div>
	                         -->
	                    </div>
	                </div>  
                  
              	</div>  
						
            </div>
            <!--/col-md-8-->        

            <!-- Latest Shots -->
            <div class="col-md-4">
    			<div class="headline"><h2>书画欣赏</h2></div>
    			<div id="myCarousel" class="carousel slide carousel-v1">
                    <div class="carousel-inner">
                    	${appreciation.content }
                    	<!--  
                        <div class="item active">
                            <img src="/assets/img/works/img1.jpg" alt="">
                            <div class="carousel-caption">

                            </div>
                        </div>
                        <div class="item">
                            <img src="/assets/img/works/img2.jpg" alt="">
                            <div class="carousel-caption">

                            </div>
                            </div>
                        <div class="item">
                            <img src="/assets/img/works/img3.jpg" alt="">
                            <div class="carousel-caption">

                            </div>
                        </div>
                        -->
                    </div>
                    
                    <div class="carousel-arrow">
                        <a class="left carousel-control" href="index.html#myCarousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right carousel-control" href="index.html#myCarousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
    			</div>
            </div><!--/col-md-4-->
    	</div>	
    	<!-- End Info Blokcs -->

        <!-- Owl Clients v1 -->
        <div class="headline"><h2>合作伙伴</h2></div>        
        <div class="owl-clients-v1">
        	${cooperative_partner.content }
        	<!-- 
            <div class="item">
                <img src="/assets/img/partner/partner3.png" alt="">
            </div>
            <div class="item">
                <img src="/assets/img/partner/partner1.png" alt="">
            </div>
            <div class="item">
                <img src="/assets/img/partner/partner2.png" alt="">
            </div>
             -->
        </div>
        <!-- End Owl Clients v1 -->
    </div><!--/container-->
    <!-- End Content Part -->

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
<script type="text/javascript" src="/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="/assets/js/app.js"></script>
<script type="text/javascript" src="/assets/js/plugins/cube-portfolio/cube-portfolio-index.js"></script>
<script type="text/javascript" src="/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="/assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript" src="/assets/js/plugins/parallax-slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        OwlCarousel.initOwlCarousel();        
        StyleSwitcher.initStyleSwitcher();      
        ParallaxSlider.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
    <script src="/assets/plugins/respond.js"></script>
    <script src="/assets/plugins/html5shiv.js"></script>
    <script src="/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>