package com.dogiant.portal.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackages = "com.dogiant.portal.dao")
@EntityScan(basePackages = "com.dogiant.portal.domain")
public class JPAConfig {

}
