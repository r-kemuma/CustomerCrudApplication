package com.example;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class CustomerConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver bn = new InternalResourceViewResolver();
        bn.setPrefix("/WEB-INF/jsp/");
        bn.setSuffix(".jsp");
        bn.setOrder(0);
        return bn;
    }
}
