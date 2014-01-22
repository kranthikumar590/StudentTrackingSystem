package com.junior.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.auth.Admin;
import com.admin.auth.AdminService;
@Controller
public class JuniorController {
	@Autowired
    private AdminService adminService;
	//private static final Logger logger = Logger.getLogger(LoginController.class);
		@RequestMapping(value="/junior/homepage", method = RequestMethod.GET)
		public String homepage(ModelMap model) {
			
			model.addAttribute("date", new Date());
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        String name = auth.getName(); //get logged in username
	        String pass=(String) auth.getCredentials();
	   
	        System.out.println(name);
	        System.out.println(pass);
	        String admin_name=null;
	     
	        try{
	        	Admin admin=adminService.getAdminDetails(name);
	        	admin_name=admin.getAdmin_name();
	            model.addAttribute("admin_name", admin_name);
	         }
	        catch(NullPointerException e){
	        	
	        	System.out.println("User Name [ "+name+"  ] doesnot exists....");
	        }
	        
			return "/junior_admin/homepage";
	 
		}
}
