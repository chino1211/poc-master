package com.tcs.web.configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Properties;

/**
 * Created by 864625 on 4/24/2015.
 */
@Configuration
@ComponentScan(basePackages = {"com.tcs.web"})
@EnableWebMvc
public class WebMvcConfiguration extends WebMvcConfigurerAdapter
{
    @Override
    public void addViewControllers(ViewControllerRegistry registry)
    {
        super.addViewControllers(registry);
        registry.addViewController("login").setViewName("login");
        registry.addViewController("user").setViewName("user");
        registry.addViewController("admin").setViewName("admin");
        registry.addViewController("register").setViewName("register");
        registry.addViewController("403").setViewName("403");
    }

    @Bean
    public ViewResolver resolver()
    {
        InternalResourceViewResolver url = new InternalResourceViewResolver();
        url.setPrefix("/WEB-INF/JSP/");
        url.setSuffix(".jsp");
        return url;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry)
    {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer)
    {
        configurer.enable();
    }

    @Bean(name = "messageSource")
    public MessageSource configureMessageSource()
    {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("classpath:messages");
        messageSource.setCacheSeconds(5);
        messageSource.setDefaultEncoding("UTF-8");
        return messageSource;
    }

    @Bean
    public SimpleMappingExceptionResolver simpleMappingExceptionResolver()
    {
        SimpleMappingExceptionResolver resolver = new SimpleMappingExceptionResolver();
        Properties mappings = new Properties();
        mappings.put("org.springframework.dao.DataAccessException", "error");
        resolver.setExceptionMappings(mappings);
        return resolver;
    }
}
