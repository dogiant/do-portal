package com.dogiant.portal.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.alibaba.dubbo.config.spring.ReferenceBean;
import com.dogiant.api.CmsDataService;

@Configuration
public class ReferenceConfig extends DubboBaseConfig {

    @Bean
    public ReferenceBean<CmsDataService> getCMSDataService() {
        ReferenceBean<CmsDataService> ref = new ReferenceBean<CmsDataService>();
        ref.setVersion("cms-1.0");
        ref.setInterface(CmsDataService.class);
        ref.setTimeout(5000);
        ref.setRetries(3);
        ref.setCheck(false);
        return ref;
    }
    
}
