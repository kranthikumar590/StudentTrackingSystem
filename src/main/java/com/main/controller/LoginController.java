package com.main.controller;
 
import java.security.Principal;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.admin.auth.Admin;

@Controller
public class LoginController {
 
	
	//private static final Logger logger = Logger.getLogger(LoginController.class);
	@RequestMapping(value="/dashboard", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal,HttpServletRequest request ) {
		
		model.addAttribute("date", new Date());
		
		return "dashboard";
 
	}
 
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model, Principal principal) {
		
			model.addAttribute("date", new Date());
			return "login";
	}
	@RequestMapping(value="/hello", method = RequestMethod.GET)
	public String hello(ModelMap model) {
 
		return "login";
 
	}
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String indexLogin(ModelMap model) {
		
		
		return "login";
 
	}
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
 
		model.addAttribute("error", "true");
		return "login";
 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout() {
		
		return "login";
 
	}
	
	@RequestMapping(value="/404", method = RequestMethod.GET)
	public String accessdenied(ModelMap model, Principal principal) {
		
			model.addAttribute("date", new Date());
			return "/404";
	}
}