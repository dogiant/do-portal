package com.dogiant.portal.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dogiant.api.dto.ArticleCatDTO;
import com.dogiant.api.dto.ArticleItemDTO;
import com.dogiant.api.dto.PagedResult;
import com.dogiant.api.dto.SectionDTO;
import com.dogiant.portal.service.DataIntegrationService;

@Controller
public class ViewController {

	protected final Log logger = LogFactory.getLog(getClass());

	@Autowired
	private DataIntegrationService dataIntegrationService;

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String index(Map<String, Object> model) {
		logger.info("/index.html");

		// 首页版块定义
		// slider_1,slider_2,slider_3
		// brief_intro
		// video_tutorials_1,video_tutorials_2,video_tutorials_3,video_tutorials_4
		// news_report,news_activity,news_notice
		// appreciation
		// cooperative_partner
		// qr_code
		// key_navigation
		// contact_us

		try {
			SectionDTO slider_1 = dataIntegrationService.getSectionByCode("slider_1");
			SectionDTO slider_2 = dataIntegrationService.getSectionByCode("slider_2");
			SectionDTO slider_3 = dataIntegrationService.getSectionByCode("slider_3");

			SectionDTO brief_intro = dataIntegrationService.getSectionByCode("brief_intro");

			SectionDTO news_report = dataIntegrationService.getSectionByCode("news_report");
			SectionDTO news_activity = dataIntegrationService.getSectionByCode("news_activity");
			SectionDTO news_notice = dataIntegrationService.getSectionByCode("news_notice");

			SectionDTO appreciation = dataIntegrationService.getSectionByCode("appreciation");
			SectionDTO cooperative_partner = dataIntegrationService.getSectionByCode("cooperative_partner");
			

			model.put("slider_1", slider_1);
			model.put("slider_2", slider_2);
			model.put("slider_3", slider_3);
			
			model.put("brief_intro", brief_intro);

			
			model.put("news_report", news_report);
			model.put("news_activity", news_activity);
			model.put("news_notice", news_notice);
			
			model.put("appreciation", appreciation);
			model.put("cooperative_partner", cooperative_partner);
			
			SectionDTO qr_code = dataIntegrationService.getSectionByCode("qr_code");
			SectionDTO key_navigation = dataIntegrationService.getSectionByCode("key_navigation");
			SectionDTO contact_us = dataIntegrationService.getSectionByCode("contact_us");
			SectionDTO our_services = dataIntegrationService.getSectionByCode("our_services");
			
			model.put("qr_code", qr_code);
			model.put("key_navigation", key_navigation);
			model.put("contact_us", contact_us);
			model.put("our_services", our_services);
			// 暂时先动态获取，后续考虑静态化处理
			List<ArticleItemDTO> latestPost = getLatestPost();
			model.put("latestPost", latestPost);
			
			List<String> videoCatCodes = new ArrayList<String>();
			videoCatCodes.add("grade7");
			videoCatCodes.add("regular");
			videoCatCodes.add("jiuchenggong");
			videoCatCodes.add("yanqinglibei");
			videoCatCodes.add("duobaotabei");
			videoCatCodes.add("xuanmitabei");
			videoCatCodes.add("sanmenji");
			videoCatCodes.add("calligraphy");
			videoCatCodes.add("painting");
			videoCatCodes.add("tablet");
			videoCatCodes.add("picture");
			
			List<ArticleItemDTO> recommendVideoItems = dataIntegrationService.getRecommendItems(videoCatCodes,4);
			model.put("recommendVideoItems", recommendVideoItems);
			
			
			List<String> teacherCatCodes = new ArrayList<String>();
			teacherCatCodes.add("teacher");

			List<ArticleItemDTO> recommendTeacherItems = dataIntegrationService.getRecommendItems(teacherCatCodes,4);
			model.put("recommendTeacherItems", recommendTeacherItems);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.put("title", "首页");
		return "index";
	}

	/**
	 * 从新闻中心获取最新三条发布的新闻
	 * @return
	 */
	private List<ArticleItemDTO> getLatestPost() {
		List<String> newsCatCodes = new ArrayList<String>();
		newsCatCodes.add("notice");
		newsCatCodes.add("report");
		newsCatCodes.add("activity");
		List<ArticleItemDTO> latestPost = dataIntegrationService.getLatestPost(newsCatCodes,3);
		return latestPost;
	}

	@RequestMapping(value = "/video/{catCode}/", method = RequestMethod.GET)
	public String videoCategory(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
			@PathVariable("catCode") String catCode, @RequestParam(value = "pageNo", required = false) String pageNo) {
		logger.info("catCode==" + catCode);

		SectionDTO qr_code = dataIntegrationService.getSectionByCode("qr_code");
		SectionDTO key_navigation = dataIntegrationService.getSectionByCode("key_navigation");
		SectionDTO contact_us = dataIntegrationService.getSectionByCode("contact_us");
		SectionDTO our_services = dataIntegrationService.getSectionByCode("our_services");
		
		model.put("qr_code", qr_code);
		model.put("key_navigation", key_navigation);
		model.put("contact_us", contact_us);
		model.put("our_services", our_services);
		// 暂时先动态获取，后续考虑静态化处理
		List<ArticleItemDTO> latestPost = getLatestPost();
		model.put("latestPost", latestPost);

		// 获取栏目
		ArticleCatDTO articleCat = null;
		try {
			articleCat = dataIntegrationService.getArticleCatByCode(catCode);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if (articleCat == null) {
			try {
				response.sendRedirect("/404.html");
				return null;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		// 获取面包屑导航
		List<ArticleCatDTO> articleCatList = null;
		try {
			articleCatList = dataIntegrationService.getCrumbsArticleCats(articleCat.getCatCode());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (articleCatList != null && articleCatList.size() > 0) {
			model.put("crumbs", articleCatList);
		} else {
			model.put("crumbs", "");
		}

		// 判断栏目是否正文栏目
		if (articleCat.getIsTextCat()) {
			ArticleItemDTO articleItem = null;
			try {
				articleItem = dataIntegrationService.getArticleItemByCatCode(catCode);
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.put("article", articleItem);
			return "text-page";
		}
		// 分页列表
		if (StringUtils.isBlank(pageNo)) {
			pageNo = "1";
		} else if (Integer.parseInt(pageNo) < 1) {
			pageNo = "1";
		}
		// Integer pageNo = request.getParameter("pageNo") == null ? 1 :
		// Integer.parseInt(request.getParameter("pageNo"));
		Integer pageRows = request.getParameter("pageRows") == null ? 12
				: Integer.parseInt(request.getParameter("pageRows"));
		PagedResult<ArticleItemDTO> pagedResult = null;
		try {
			pagedResult = dataIntegrationService.getArticleItemsByCatCode(catCode, Integer.parseInt(pageNo), pageRows);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.put("pagedResult", pagedResult);
		return "list-page-video";
	}
	
	/**
	 * 七年级上册视频
	 * @param request
	 * @param response
	 * @param model
	 * @param catCode
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value = "/book/{catCode}/", method = RequestMethod.GET)
	public String bookCategory(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
			@PathVariable("catCode") String catCode, @RequestParam(value = "pageNo", required = false) String pageNo) {
		logger.info("catCode==" + catCode);
		
		// 获取面包屑导航
		List<ArticleCatDTO> articleCatList = null;
		try {
			articleCatList = dataIntegrationService.getCrumbsArticleCats(catCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.put("crumbs", articleCatList);

		
		SectionDTO qr_code = dataIntegrationService.getSectionByCode("qr_code");
		SectionDTO key_navigation = dataIntegrationService.getSectionByCode("key_navigation");
		SectionDTO contact_us = dataIntegrationService.getSectionByCode("contact_us");
		
		model.put("qr_code", qr_code);
		model.put("key_navigation", key_navigation);
		model.put("contact_us", contact_us);
		// 暂时先动态获取，后续考虑静态化处理
		List<ArticleItemDTO> latestPost = getLatestPost();
		model.put("latestPost", latestPost);
		return "list-page-book";
	}

	@RequestMapping(value = "/{catCode}/", method = RequestMethod.GET)
	public String category(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
			@PathVariable("catCode") String catCode,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") int pageNo,
			@RequestParam(value = "pageRows", required = false, defaultValue = "10") int pageRows) {
		logger.info("catCode==" + catCode);

		SectionDTO qr_code = dataIntegrationService.getSectionByCode("qr_code");
		SectionDTO key_navigation = dataIntegrationService.getSectionByCode("key_navigation");
		SectionDTO contact_us = dataIntegrationService.getSectionByCode("contact_us");
		SectionDTO our_services = dataIntegrationService.getSectionByCode("our_services");
		
		model.put("qr_code", qr_code);
		model.put("key_navigation", key_navigation);
		model.put("contact_us", contact_us);
		model.put("our_services", our_services);
		// 暂时先动态获取，后续考虑静态化处理
		List<ArticleItemDTO> latestPost = getLatestPost();
		model.put("latestPost", latestPost);

		// 获取栏目
		ArticleCatDTO articleCat = null;
		try {
			articleCat = dataIntegrationService.getArticleCatByCode(catCode);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if (articleCat == null) {
			try {
				response.sendRedirect("/404.html");
				return null;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.put("articleCat", articleCat);
		// 获取面包屑导航
		List<ArticleCatDTO> articleCatList = null;
		try {
			articleCatList = dataIntegrationService.getCrumbsArticleCats(articleCat.getCatCode());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.put("crumbs", articleCatList);

		// 判断栏目是否正文栏目
		if (articleCat.getIsTextCat()) {
			ArticleItemDTO articleItem = null;
			try {
				articleItem = dataIntegrationService.getArticleItemByCatCode(catCode);
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.put("article", articleItem);
			return "text-page";
		}
		
		// 分页列表
		PagedResult<ArticleItemDTO> pagedResult = null;
		try {
			pagedResult = dataIntegrationService.getArticleItemsByCatCode(catCode, pageNo, pageRows);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.put("pagedResult", pagedResult);
		return "list-page";
	}

	@RequestMapping(value = "/article/{id}.html", method = RequestMethod.GET)
	public String text(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
			@PathVariable("id") long id) {
		logger.info("param,id==" + id);

		SectionDTO qr_code = dataIntegrationService.getSectionByCode("qr_code");
		SectionDTO key_navigation = dataIntegrationService.getSectionByCode("key_navigation");
		SectionDTO contact_us = dataIntegrationService.getSectionByCode("contact_us");
		SectionDTO our_services = dataIntegrationService.getSectionByCode("our_services");
		
		model.put("qr_code", qr_code);
		model.put("key_navigation", key_navigation);
		model.put("contact_us", contact_us);
		model.put("our_services", our_services);
		// 暂时先动态获取，后续考虑静态化处理
		List<ArticleItemDTO> latestPost = getLatestPost();
		model.put("latestPost", latestPost);

		// 获取正文页
		ArticleItemDTO articleItem = null;
		try {
			articleItem = dataIntegrationService.getArticleItemById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (articleItem == null) {
			try {
				response.sendRedirect("/404.html");
				return null;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		ArticleCatDTO articleCat = articleItem.getArticleCatDTO();
		if (articleCat != null) {
			List<ArticleCatDTO> articleCatList = null;
			try {
				articleCatList = dataIntegrationService.getCrumbsArticleCats(articleCat.getCatCode());
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(articleCatList.size());
			model.put("crumbs", articleCatList);
		}
		model.put("articleCat", articleCat);
		model.put("article", articleItem);
		return "text-page";
	}

}
