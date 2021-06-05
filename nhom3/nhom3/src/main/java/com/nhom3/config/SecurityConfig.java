package com.nhom3.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.nhom3.service.impl.UserDetailService;

@Configuration
@EnableWebSecurity
@ComponentScan("com.nhom3")
@Order(1)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailService userDetailsService;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		//lấy thông tin userinfo						//kiểm tra pw
		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
		.authorizeRequests()
		.antMatchers("/admin/**").hasAnyAuthority("ADMIN").and()
		.authorizeRequests()
		.antMatchers("/muahang/**").hasAnyAuthority("USER")
		.antMatchers("/home/**","/auth/**").permitAll()
		.and()
		.formLogin().loginPage("/auth/dangnhap")
		.loginProcessingUrl("/auth/dangnhap")
		.usernameParameter("email")
		.passwordParameter("password")
		.defaultSuccessUrl("/home/trangchu")
		.failureUrl("/auth/dangnhap")
		.and().exceptionHandling()
		.accessDeniedPage("/auth/dangnhap")
		;
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}

}
