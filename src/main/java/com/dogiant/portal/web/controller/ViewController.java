package com.dogiant.portal.web.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dogiant.api.dto.ArticleCatDTO;
import com.dogiant.api.dto.ArticleItemDTO;
import com.dogiant.api.dto.PagedResult;
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

		model.put("title", "首页");
		return "index";
	}

	@RequestMapping(value = "/{catCode}/", method = RequestMethod.GET)
	public String category(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
			@PathVariable("catCode") String catCode) {
		logger.info("catCode==" + catCode);
		// 获取栏目
		ArticleCatDTO articleCat = dataIntegrationService.getArticleCatByCode(catCode);
		if (articleCat == null) {
			try {
				response.sendRedirect("/404.html");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		// 获取面包屑导航
		List<ArticleCatDTO> articleCatList = dataIntegrationService.getCrumbsArticleCats(articleCat.getCatCode());
		model.put("crumbs", articleCatList);

		// 判断栏目是否正文栏目
		if (articleCat.getIsTextCat()) {
			ArticleItemDTO articleItem = dataIntegrationService.getArticleItemByCatCode(catCode);
			model.put("article", articleItem);
			return "text-page";
		}
		// 分页列表
		Integer pageNo = request.getParameter("pageNo") == null ? 1 : Integer.parseInt(request.getParameter("pageNo"));
		Integer pageRows = request.getParameter("pageRows") == null ? 10
				: Integer.parseInt(request.getParameter("pageRows"));
		PagedResult<ArticleItemDTO> pagedResult = dataIntegrationService.getArticleItemsByCatCode(catCode, pageNo,
				pageRows);
		model.put("pagedResult", pagedResult);
		return "list-page";
	}

	@RequestMapping(value = "/article/{id}.html", method = RequestMethod.GET)
	public String text(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
			@PathVariable("id") long id) {
		logger.info("param,id==" + id);
		// 获取正文页

		ArticleItemDTO articleItem = dataIntegrationService.getArticleItemById(id);
		if (articleItem == null) {
			try {
				response.sendRedirect("/404.html");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		ArticleCatDTO articleCat = articleItem.getArticleCatDTO();
		if (articleCat != null) {
			List<ArticleCatDTO> articleCatList = dataIntegrationService.getCrumbsArticleCats(articleCat.getCatCode());
			model.put("crumbs", articleCatList);
		}

		model.put("article", articleItem);
		return "text-page";
	}

}
