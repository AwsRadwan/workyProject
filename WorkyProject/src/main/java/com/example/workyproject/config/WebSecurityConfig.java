package com.example.workyproject.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/*
 * This Class is Used To configure The Spring Boot WEB Security Addon
 *  This Class is a @Configuration class
 * This Class Enables WebSecurity
 * */

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    //Defined a User Service to be used in data retrieval and checks
    private UserDetailsService userDetailsService;

    public WebSecurityConfig(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    // add Bcyrpt bean , This @Bean annotation is used in dependency injection
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    //This is One of the methods we have to Override when implementing a WebSecurity Config Class
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.
                authorizeRequests()
                .antMatchers("/css/**", "/js/**", "/line-awesome/**", "/images/**", "/font-awesome/**", "/bootstrap4/**",
                        "/registration" , "/").permitAll() // Permit all paths and access to css and js files
                .antMatchers("/admin/**").access("hasRole('ADMIN')")    // permit access to admin path or certain files only if has role admin
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login") // The Login Page
                .permitAll()
                .and()
                .logout() // Could Have a logout Page here
                .permitAll();
    }

    // This dependency injection is user to encode the passwords using Bcrypt
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
    }


}
