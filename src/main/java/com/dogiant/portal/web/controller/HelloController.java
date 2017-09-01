package com.dogiant.portal.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dogiant.portal.service.DataIntegrationService;

@RestController
public class HelloController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private DataIntegrationService dataIntegrationService;

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String hello() {
		System.out.println(dataIntegrationService.hello());
		return "hello spring boot.";
	}

	@RequestMapping(value = "/ex", method = RequestMethod.GET)
	public String exception() throws Exception{
		throw new Exception("发生错误");
	}

}
