package com.tcs.configuration;

import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCacheManager;
import org.springframework.context.annotation.*;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * Created by 864625 on 4/22/2015.
 */
@Configuration
@ComponentScan(basePackages = {"com.tcs"},
        excludeFilters=@ComponentScan.Filter(type= FilterType.REGEX, pattern={"com.tcs.web.*"}))
@EnableScheduling
@EnableAspectJAutoProxy
@EnableCaching
public class ApplicationConfiguration {

    @Bean
    public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer()
    {
        return new PropertySourcesPlaceholderConfigurer();
    }

    @Bean
    public CacheManager cacheManager()
    {
        return new ConcurrentMapCacheManager();
    }
}
