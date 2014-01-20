package com.senior.controllers;

import java.security.Principal;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePage {

	
	@RequestMapping(value="/senior/", method = RequestMethod.GET)
	public String senior(ModelMap model, Principal principal) {
		
			model.addAttribute("date", new Date());
			return "/senior_admin/homepage";
	}
	@RequestMapping(value="/senior/homepage", method = RequestMethod.GET)
	public String seniorHomepage(ModelMap model, Principal principal) {
		
			model.addAttribute("date", new Date());
			return "/senior_admin/homepage";
	}
}
