package com.dogiant.portal.web.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dogiant.portal.service.DataIntegrationService;

@Controller
public class IndexController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private DataIntegrationService dataIntegrationService;
	
	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public String index(Map<String, Object> model) {
		logger.info("/index.html");
		//栏目定义
		
		//版块定义
		
		//数据接口
		// 栏目下文章分页列表
		// 版块代码获取版块内容
		// 文章Id获取文章内容   文章栏目获取面包屑栏目列表  
		
		model.put("title", "首页");
        return "index";
    }
	
	@RequestMapping(value = "/{catCode}/", method = RequestMethod.GET)
    public String category(Map<String, Object> model,@PathVariable("catCode") String catCode) {
		logger.info(catCode);
		//获取栏目 ，判断栏目是否正文栏目
		
		model.put("title", "category");
        return "list-page";
    }
	
	
	@RequestMapping(value = "/article/{id}", method = RequestMethod.GET)
    public String text(Map<String, Object> model,@PathVariable("id") long id) {
		logger.info(id);
		//获取正文页
		
		model.put("title", "text");
        return "text-page";
    }

}
