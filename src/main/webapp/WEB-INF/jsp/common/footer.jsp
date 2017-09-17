<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                    	${qr_code.content }
                       <!--  
                       <img id="logo-footer" src="/assets/img/qrcode_for_gh_50abe7c69081_430.jpg" alt="" width="226"> 
                       -->
                        
                    </div><!--/col-md-3-->
                    <!-- End About -->

                    <!-- Latest -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="posts">
                            <div class="headline"><h2>最新发布</h2></div>
                            <ul class="list-unstyled latest-list">
					        <c:forEach items="${latestPost}" var="obj">
					            <li>
                                    <a href="/article/${obj.id}.html">${obj.title }</a>
                                    <small><fmt:formatDate value="${obj.ctime }" pattern="yyyy-MM-dd"/></small>
                                </li>
                            </c:forEach>
                            </ul>
                        </div>
                    </div><!--/col-md-3-->  
                    <!-- End Latest --> 
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2>重点导航</h2></div>
                        ${key_navigation.content }
                        <!--  
                        <ul class="list-unstyled link-list">
                            <li><a href="#">书画教育</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">书画赏析</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">书画商城</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">新闻中心</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">关于我们</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                        -->
                    </div><!--/col-md-3-->
                    <!-- End Link List -->                    

                    <!-- Address -->
                    <div class="col-md-3 map-img md-margin-bottom-40">
                        <div class="headline"><h2>联系我们</h2></div>                         
                        <address class="md-margin-bottom-40">
                        ${contact_us.content }
                        <!-- 
                            北京朝阳安贞胜古家园A座17层 <br />
                            北京飞龙十六宫文化艺术发展有限公司 <br />
                            电话: 800 123 3456 <br />
                            传真: 800 123 3456 <br />
                            电子邮件: <a href="mailto:info@feilongshiliugongge.com" class="">info@feilongshiliugongge.com</a>
                        -->
                        </address>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div> 
        </div>
        <!--/footer-->

       <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            <script>document.write(new Date().getFullYear());</script> &copy;All Rights Reserved.北京飞龙十六宫文化发展艺术有限公司<!--<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备14016314号-3</a>-->
                        </p>
                    </div>
                </div>
            </div> 
        </div>
        <!--/copyright-->
    </div>
