<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>飞龙十六宫格 - 国学·书法 - ${title}</title>

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
<link rel="stylesheet"
	href="/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="/assets/css/headers/header-default.css">
<link rel="stylesheet" href="/assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="/assets/plugins/animate.css">
<link rel="stylesheet" href="/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet"
	href="/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="/assets/css/theme-colors/default.css"
	id="style_color">
<link rel="stylesheet" href="/assets/css/theme-skins/dark.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/pages/jPaginate-style.css" />
</head>

<body>

	<div class="wrapper">
		<!--=== Header ===-->
		<%@ include file="common/header.jsp"%>
		<!--=== End Header ===-->

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">${article.articleCatDTO.catName}</h1>
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
					<div class="row margin-bottom-20">
						<c:forEach items="${pagedResult.result}" var="obj">
							<div class="col-md-3 col-sm-6">
								<div class="thumbnails thumbnail-style thumbnail-kenburn">
									<div class="thumbnail-img">
										<div class="overflow-hidden">
											<img class="img-responsive" src="${obj.coverPicUrl}" alt="">
										</div>
										<a class="btn-more hover-effect" href="/article/${obj.id}.html">观看视频 +</a>
									</div>
									<div class="caption">
										<h3>
											<a class="hover-effect" href="/article/${obj.id}.html">${obj.title}</a>
										</h3>
										<p>${obj.content}</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<!-- End News Grid -->


					<!-- Pagination -->
					  <div class="text-center md-margin-bottom-30">
		                    <ul id="pagination">
		                    </ul>                                                            
		                </div>
					<!-- End Pagination -->

				</div>

				<!-- End Content -->
			</div>
		</div>
		<!--/container-->
		<!--=== End Content Part ===-->

		<!--=== Footer ===-->
		<%@ include file="common/footer.jsp"%>
		<!--=== End Footer ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<script type="text/javascript"
		src="/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="/assets/js/app.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/fancy-box.js"></script>
	<script type="text/javascript"
		src="/assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript"
		src="/assets/js/plugins/revolution-slider.js"></script>
	<script type="text/javascript" src="/assets/js/pages/jquery.paginate.js"></script>
		
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			FancyBox.initFancybox();
			StyleSwitcher.initStyleSwitcher();
			RevolutionSlider.initRSfullWidth();
			
			$("#pagination").paginate({
				count 		: ${pagedResult.allPage},
				start 		: ${pagedResult.pageNo},
				display     : 12,
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