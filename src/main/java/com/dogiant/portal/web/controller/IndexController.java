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
    public String articleCatInput(Map<String, Object> model) {
		logger.info("/index.html");
		
		model.put("title", "首页");
        return "index";
    }

}
