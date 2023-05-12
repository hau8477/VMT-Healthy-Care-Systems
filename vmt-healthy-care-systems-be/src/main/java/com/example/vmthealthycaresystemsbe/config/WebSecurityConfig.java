package com.example.vmthealthycaresystemsbe.config;

import com.example.vmthealthycaresystemsbe.jwt.JwtFilter;
import com.example.vmthealthycaresystemsbe.service.impl.AccountDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private AccountDetailService accountService;
    @Autowired
    private JwtFilter jwtFilter;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(accountService);
    }

    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(12);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf()
                .disable()
                .cors()
                .and()
                .authorizeRequests()
                .antMatchers("/api/public/**", "/api/services/findAll/**", "/api/categories/public/details/**", "/api/services/public/details/**")
                .permitAll()
                .antMatchers("/api/doctors/**/**").hasRole("ADMIN")
                .antMatchers("/api/customers/**/**").hasRole("USER")
                .antMatchers("/api/customers/**").hasRole("USER")
                .antMatchers("/api/services/**/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/api/service-purchases/**/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/api/service-purchases/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/api/categories/**/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/api/carts/**/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/api/carts/**").hasAnyRole("USER", "ADMIN")
                .anyRequest()
                .authenticated()
                .and()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        http.addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);
    }
}

