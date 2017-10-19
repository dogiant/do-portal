<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <!-- Web Fonts 
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
    <link rel="stylesheet" href="/assets/css/pages/jPaginate-style.css" />
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
    
      <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">${articleCat.catName}</h1>
            <ul class="pull-right breadcrumb">
           
                <li><a href="/index.html">首页</a></li>
                <c:forEach items="${crumbs}" var="articleCat" varStatus="stat">
                
	                <c:choose> 
					   <c:when test="${stat.last}">
							<li class="active"><a href="/${articleCat.catCode }/">${articleCat.catName }</a></li>
					   </c:when>  
					     
					   <c:otherwise>
					   		<li><a href="javascript:void(0)">${articleCat.catName }</a></li>
					   </c:otherwise>  
					</c:choose>
                	
                </c:forEach>
    
            </ul>
        </div>
    </div>
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
        
            <!-- Begin Content -->
            <div class="col-md-12 md-margin-bottom-50">

				<!-- News Grid -->
				<c:forEach items="${pagedResult.result}" var="article" varStatus="stat">
					<div class="row margin-bottom-50 box">
						<div class="col-sm-4 sm-margin-bottom-20">
							<a href="/article/${article.id }.html"><img class="img-responsive" src="http://file.feilongshiliugongge.com/${article.coverPicUrl }" alt="${article.title }"></a>
						</div>
						<div class="col-sm-8">
							<div class="blog-grid">
								<h3><a href="/article/${article.id }.html">${article.title }</a></h3>
								<ul class="blog-grid-info">
									<li>${article.author }</li>
									<li><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm"  value="${article.ctime }" /></li>
								</ul>
								<p>
								　　${article.digest }
								</p>                  
								<a class="r-more" href="/article/${article.id }.html">详细</a>
							</div>
						</div>
					</div>
				</c:forEach>
				
				<!--  
				<div class="row margin-bottom-50 box">
					<div class="col-sm-4 sm-margin-bottom-20">
						<img class="img-responsive" src="/assets/img/news/news1.jpg" alt="">
					</div>
					<div class="col-sm-8">
						<div class="blog-grid">
							<h3><a href="article.html">诗书画印重识启功</a></h3>
							<ul class="blog-grid-info">
								<li>小宋</li>
								<li>2017-07-12</li>
							</ul>
							<p>　　今年的7月26日，是启功先生百年诞辰，由北京师范大学主办的“启功遗墨——启功先生书画作品展览”同日于国家博物馆开幕。同时，《启功全集》也于26日举行了首发式。本次北师大将活动定义为重新认识启功，意欲展示诗书画印全才的多面启功。</p>                  
							<a class="r-more" href="#">详细</a>
						</div>
					</div>
				</div>
				-->
				
				<!-- End News Grid -->
                
                <div class="row">
                	<div class="col-md-4">
                	</div>
                	<div class="col-md-8">
                	    <!-- Pagination -->
		                <div class="text-center md-margin-bottom-30">
		                    <ul id="pagination">
		                    </ul>                                                            
		                </div>
		                <!-- End Pagination -->
                	</div>
                </div>
			</div>
			
            <!-- End Content -->
        </div>          
    </div><!--/container-->     
    <!--=== End Content Part ===-->

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
<script type="text/javascript" src="/assets/js/pages/jquery.paginate.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
		FancyBox.initFancybox();
		StyleSwitcher.initStyleSwitcher();        
		RevolutionSlider.initRSfullWidth();
		
		$("#pagination").paginate({
			count 		: ${pagedResult.allRows},
			start 		: ${pagedResult.pageNo},
			display     : 10,
			border					: true,
			border_color			: '#BEF8B8',
			text_color  			: '#68BA64',
			background_color    	: '#E3F2E1',	
			border_hover_color		: '#68BA64',
			text_hover_color  		: 'black',
			background_hover_color	: '#CAE6C6', 
			rotate      : false,
			images		: false,
			mouse		: 'press',
			onChange    : function(page){
				location.href="/${articleCat.catCode }/?pageNo="+page;
			 }
		});

    });
</script>
<!--[if lt IE 9]>
    <script src="/assets/plugins/respond.js"></script>
    <script src="/assets/plugins/html5shiv.js"></script>
    <script src="/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>