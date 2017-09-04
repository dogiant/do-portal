package com.dogiant.portal.web.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	
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

}
