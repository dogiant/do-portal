package com.dogiant.portal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogiant.api.CmsDataService;
import com.dogiant.api.dto.ArticleCatDTO;
import com.dogiant.api.dto.ArticleItemDTO;
import com.dogiant.api.dto.PagedResult;
import com.dogiant.api.dto.SectionDTO;
import com.dogiant.portal.service.DataIntegrationService;

@Service("dataIntegrationService")
public class DataIntegrationServiceImpl implements DataIntegrationService {
	
	@Autowired
	private CmsDataService cmsDataService;

	@Override
	public String hello() {
		return cmsDataService.hello("aa");
	}

	@Override
	public SectionDTO getSectionByCode(String code) {
		return cmsDataService.getSectionByCode(code);
	}

	@Override
	public ArticleCatDTO getArticleCatByCode(String code) {
		return cmsDataService.getArticleCatByCode(code);
	}

	@Override
	public List<ArticleCatDTO> getCrumbsArticleCats(String code) {
		return cmsDataService.getCrumbsArticleCats(code);
	}

	@Override
	public ArticleItemDTO getArticleItemByCatCode(String code) {
		return cmsDataService.getArticleItemByCatCode(code);
	}

	@Override
	public List<ArticleItemDTO> getLatestPost(List<String> catCodes, int size) {
		return cmsDataService.getLatestPost(catCodes, size);
	}

	@Override
	public PagedResult<ArticleItemDTO> getArticleItemsByCatCode(String code, Integer pageNo, Integer pageRows) {
		return cmsDataService.getArticleItemsByCatCode(code, pageNo, pageRows);
	}

	@Override
	public ArticleItemDTO getArticleItemById(Long id){
		return cmsDataService.getArticleItemById(id);
	}
	
	@Override
	public List<ArticleItemDTO> getRecommendItems(List<String> catCodes, int size){
		return cmsDataService.getRecommendItems(catCodes, size);
	}
	
}
