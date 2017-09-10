<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="header">
	<div class="container">
		<!-- Logo -->
		<a class="logo" href="index.html"> <img
			src="/assets/img/logo-opt.jpg" height="50" width="133" alt="Logo">
		</a>
		<!-- End Logo -->

		<!-- Topbar -->
			<%@ include file="top_bar.jsp" %>
		<!-- End Topbar -->

		<!-- Toggle get grouped for better mobile display 
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
         End Toggle -->
	</div>
	<!--/end container-->

	<!-- the navbar links -->
	<div
		class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
		<div class="container">
			<ul class="nav navbar-nav">
				<!-- Home -->
				<li class="active"><a href="/index.html"
					class="dropdown-toggle" data-toggle="dropdown"> 首页 </a></li>
				<!-- End Home -->

				<!-- Education -->
				<li class="dropdown mega-menu-fullwidth"><a
					href="javascript:void(0);" class="dropdown-toggle"
					data-toggle="dropdown"> 书画教育 </a>
					<ul class="dropdown-menu">
						<li>
							<div class="mega-menu-content disable-icons">
								<div class="container">
									<div class="row equal-height">
										<div class="col-md-3 equal-height-in">
											<ul class="list-unstyled equal-height-list">
												<li><h3>书法教材</h3></li>
												<li><a href="/author-team/"><i class="fa fa-sort-alpha-asc"></i> 作者团队</a></li>
												<li><a href="/teaching-video/"><i class="fa fa-magic"></i> 教材视频</a></li>
												<li><a href="/school/"><i class="fa fa-ellipsis-h"></i> 使用学校</a></li>
											</ul>
										</div>
										<div class="col-md-3 equal-height-in">
											<ul class="list-unstyled equal-height-list">
												<li><h3>视频教学</h3></li>
												<!-- 楷书 -->
												<li><a href="/regular/"><i class="fa fa-bars"></i> 楷书视频</a></li>
												<!-- End 楷书 -->
												<!-- Icons -->
												<li><a href="/jiuchenggong/"><i
														class="fa fa-chevron-circle-right"></i> 欧阳询《九成宫》90集</a></li>
												<li><a href="/yanqinglibei/"><i
														class="fa fa-chevron-circle-right"></i> 颜真卿《颜勤礼碑》90集</a></li>
												<li><a href="/duobaotabei/"><i
														class="fa fa-chevron-circle-right"></i> 颜真卿《多宝塔碑》90集</a></li>
												<li><a href="/xuanmitabei/"><i
														class="fa fa-chevron-circle-right"></i> 柳公权《玄密塔碑》90集</a></li>
												<li><a href="/sanmenji/"><i
														class="fa fa-chevron-circle-right"></i> 赵孟頫《三门记》90集</a></li>

												<!-- End Icons -->
												<!-- 直播时间 
                                                                                                                                                             <li><a href="#"><i class="fa fa-bars"></i> 直播时间</a></li>
                                                <!-- End 直播时间 -->

											</ul>
										</div>
										<div class="col-md-3 equal-height-in">
											<ul class="list-unstyled equal-height-list">
												<li><h3>十六宫格书画临摹</h3></li>
												<!-- 十六宫格书画临摹 -->
												<li><a href="/calligraphy/"><i class="fa fa-list-ol"></i> 书法临摹方法</a></li>
												<li><a href="/painting/"><i class="fa fa-image"></i> 绘画临摹方法</a></li>
												<li><a href="/tablet/"><i class="fa fa-dot-circle-o"></i> 整碑临摹方法</a></li>
												<li><a href="/picture/"><i class="fa fa-dot-circle-o"></i> 整画临摹方法</a></li>
												<!-- End 十六宫格书画临摹 -->
											</ul>
										</div>
										<div class="col-md-3 equal-height-in">
											<ul class="list-unstyled equal-height-list">
												<li><h3>书画学校</h3></li>
												<!-- campus -->
												<li><a href="/map/"><i class="fa fa-map-marker"></i> 学校地图</a></li>
												<li><a href="/team/"><i class="fa fa-bars"></i> 师资团队</a></li>
												<li><a href="/works/"><i class="fa fa-bars"></i> 学员作品</a></li>
												<!-- End campus -->
											</ul>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul></li>
				<!-- End Education -->


				<!-- Appreciation Pages-->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-toggle="dropdown"> 书画赏析 </a>
					<ul class="dropdown-menu">
						<li class="dropdown-submenu"><a href="javascript:void(0);">书法碑帖</a>
							<ul class="dropdown-menu">
								<li><a href="/mingbie/">历代名碑 </a></li>
								<li><a href="/mingtie/">历代名帖 </a></li>
							</ul>
						</li>
						<li class="dropdown-submenu"><a href="javascript:void(0);">书画</a>
							<ul class="dropdown-menu">
								<li><a href="/famous-paintings/">历代中外名画</a></li>
								<li><a href="/contemporary-painting/">当代书画</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<!-- End Appreciation Pages -->

				<!-- Mall Pages-->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-toggle="dropdown"> 书画商城 </a>
					<ul class="dropdown-menu">
						<li><a href="/supplies/">书画用品</a></li>
						<li><a href="/books/">图书</a></li>
						<li><a href="/stationery/">文化用品</a></li>
					</ul></li>
				<!-- End Mall Pages-->


				<!-- News Pages -->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-toggle="dropdown"> 新闻中心 </a>
					<ul class="dropdown-menu">
						<li><a href="/notice/">网站公告</a></li>
						<li><a href="/activity/">活动资讯</a></li>
						<li><a href="/report/">新闻报道</a></li>
					</ul></li>
				<!-- End News Pages-->
				
				<!-- About Pages -->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-toggle="dropdown"> 关于我们 </a>
					<ul class="dropdown-menu pull-right">
						<li><a href="/shiliugongge/">关于十六宫格</a></li>
						<li><a href="/join-us/">诚聘英才</a></li>

					</ul></li>
				<!-- End About Pages -->

				<!-- Search Block 
				<li><i class="search fa fa-search search-btn"></i>
					<div class="search-open">
						<div class="input-group animated fadeInDown">
							<input type="text" class="form-control" placeholder="关键字">
							<span class="input-group-btn">
								<button class="btn-u" type="button">检索</button>
							</span>
						</div>
					</div></li>
				<!-- End Search Block -->
			</ul>
		</div>
		<!--/end container-->
	</div>
	<!--/navbar-collapse-->
</div>
