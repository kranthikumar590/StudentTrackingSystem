package com.admin.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminController {

	  @Autowired
	    private AdminService adminService;
	  @RequestMapping(value = "/admin", method = RequestMethod.GET)  
	    public String getPersonList(ModelMap model) {  
	        model.addAttribute("admin", adminService.getAdminDetails());  
	        
	        return "admin";  
	    }  
}
