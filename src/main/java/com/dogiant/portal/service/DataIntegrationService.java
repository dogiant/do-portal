package com.dogiant.portal.service;

import java.util.List;

import com.dogiant.api.dto.ArticleCatDTO;
import com.dogiant.api.dto.ArticleItemDTO;
import com.dogiant.api.dto.PagedResult;
import com.dogiant.api.dto.SectionDTO;

public interface DataIntegrationService {

	public String hello();
	
	public SectionDTO getSectionByCode(String code);
	
	public ArticleCatDTO getArticleCatByCode(String code);
	
	public List<ArticleCatDTO> getCrumbsArticleCats(String code);
	
	public ArticleItemDTO getArticleItemByCatCode(String code);

	public List<ArticleItemDTO> getLatestPost(int number);
	
	public PagedResult<ArticleItemDTO> getArticleItemsByCatCode(String code,Integer pageNo,Integer pageRows);

	public ArticleItemDTO getArticleItemById(Long id);
}
