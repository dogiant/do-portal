package com.dogiant.portal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogiant.api.CmsDataService;
import com.dogiant.portal.service.DataIntegrationService;

@Service("dataIntegrationService")
public class DataIntegrationServiceImpl implements DataIntegrationService {
	
	@Autowired
	private CmsDataService cmsDataService;

	@Override
	public String hello() {
		return cmsDataService.hello("aa");
	}

}
