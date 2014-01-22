package com.senior.controllers;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.auth.Admin;
import com.admin.auth.AdminService;

@Controller
public class SchoolsController {
	static Logger log = Logger.getLogger(SchoolsController.class.getName());
	@Autowired
    private AdminService adminService;
	@RequestMapping(value = "/senior/addschool", method = RequestMethod.GET)
	public String addNewSchoolPage(Model model){
		
		model.addAttribute("date", new Date());
		model.addAttribute("schollcreated", "no");
		return "/senior_admin/addschool";
	}
	@RequestMapping(value="/senior/newSchoolRegister", method = RequestMethod.POST)
	public String newSchoolRegister(HttpServletRequest request,Model model){
		
		Admin admin=new Admin();
		admin.setSchool_name( request.getParameter("school_name"));
		admin.setAdmin_name( request.getParameter("admin_name"));
		admin.setNo_of_buses( Integer.parseInt( request.getParameter("no_buses")));
		admin.setNo_of_schools( Integer.parseInt(request.getParameter("no_students")));
		admin.setEmail(request.getParameter("email"));
		admin.setPh_no(Long.parseLong(request.getParameter("phone_no")));
		admin.setAddress(  request.getParameter("address"));
		admin.setPassword(UUID.randomUUID().toString());
		admin.setAccess(true);
		admin.setRole("ROLE_JUNIORADMIN");
		admin.setSchool_id(UUID.randomUUID().toString());
		
		adminService.setAdminDetails(admin);
		log.info("Created new school --> "+admin);
		model.addAttribute("schollcreated", "yes");
		model.addAttribute("school",admin);
		return "/senior_admin/addschool";
	}
	
}
