package com.tcs.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * Created by 864625 on 4/24/2015.
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter
{
    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception
    {
        auth
                .userDetailsService(customUserDetailsService);
    }

    @Override
    public void configure(WebSecurity web) throws Exception
    {
        web
                .ignoring()
                    .antMatchers("/resources/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception
    {
        //TODO: add/check rule to allow access to the register service for unauthenticated users
        http
                .csrf().disable()
                .authorizeRequests()
                    .antMatchers("/login","/register","/logout").permitAll()
                    .antMatchers("/admin").hasRole("ADMIN")
                    .anyRequest().authenticated()
                    .and()
                .formLogin()
                    .loginPage("/login")
                    .loginProcessingUrl("/login")
                    .failureUrl("/login?error")
                    .permitAll()
                    .and()
                .logout()
                    .logoutSuccessUrl("/login?logout")
                    .and()
                .exceptionHandling()
                    .accessDeniedPage("/403");
    }
}
