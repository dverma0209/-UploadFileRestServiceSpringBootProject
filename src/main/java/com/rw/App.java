package com.rw;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@ComponentScan
@EnableAutoConfiguration
@Configuration
public class App extends SpringBootServletInitializer
{
	
	public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }
    
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
		return application.sources(App.class);
	}
	
	
}
