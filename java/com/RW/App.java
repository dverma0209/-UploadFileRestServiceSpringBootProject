package com.classifieds;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.DispatcherServlet;

import com.classifieds.controller.HeaderController;

import org.springframework.context.ApplicationContext;

/**
 * Hello world!
 *
 */
@SpringBootApplication
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@ComponentScan
//@Component
//@ImportResource("classpath*:resource/SpringWeb.xml")
@EnableAutoConfiguration
@Configuration
public class App extends SpringBootServletInitializer
{
	
	/*@ResponseBody
	@RequestMapping("/")
	public String header(){
		return "homepage";
		
	}
	*/
	
	public static void main(String[] args) {
        SpringApplication.run(App.class, args);
		/*ApplicationContext ctx=SpringApplication.run(App.class, args);
		HeaderController headercontroller=ctx.getBean(HeaderController.class);
		headercontroller.header();*/
    }
    
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
		return application.sources(App.class);
	}
	
	
	/*@Bean
    public ServletRegistrationBean dispatcherRegistration(DispatcherServlet dispatcherServlet) {
        ServletRegistrationBean registration = new ServletRegistrationBean(dispatcherServlet);
        Map<String,String> params = new HashMap<String,String>();
        //params.put("org.atmosphere.servlet","org.springframework.web.servlet.DispatcherServlet");
        //params.put("contextClass","org.springframework.web.context.support.AnnotationConfigWebApplicationContext");
        params.put("contextConfigLocation","classpath://resource//springWeb.xml");
        registration.setInitParameters(params);
        return registration;
    }
    */
    
}
