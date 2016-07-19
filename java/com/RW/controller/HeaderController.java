package com.classifieds.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {
	
	@RequestMapping("/")
	public String header(){
		return "homepage";
		
	}
	
	@RequestMapping("/Greeting")
	public String greeting(){
		return "FirstJsp";
		
	}
	
	
	@RequestMapping("/ResetPassword")
	public String resetpassword(){
		return "forgetpassword";
		
	}
	
	@RequestMapping("/PostFreeAd")
	public String postfreead(){
		return "postfreead";
		
	}
	
	@RequestMapping("/SignIn")
	public String signin(){
		return "signin";
		
	}
	
	@RequestMapping("/Register")
	public String register(){
		return "register";
		
	}
	
	@RequestMapping("/Terms")
	public String terms(){
		return "terms";
		
	}
}
