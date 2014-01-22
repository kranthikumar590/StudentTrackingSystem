package com.main.controller;

import java.security.Principal;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.admin.auth.Admin;
import com.admin.auth.AdminService;

@Controller
public class LoginController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model, Principal principal) {

		return getLoggedUserDetails();
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexLogin(ModelMap model) {

		return getLoggedUserDetails();

	}

	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {

		model.addAttribute("error", "true");
		return "login";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {

		return "login";

	}

	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String accessdenied(ModelMap model, Principal principal) {

		model.addAttribute("date", new Date());
		return "/404";
	}

	public String getLoggedUserDetails() {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String name = auth.getName();
		String ret = null;
		if (!(auth instanceof AnonymousAuthenticationToken)) {

			/* The user is logged in :) */

			Admin admin = adminService.getAdminDetails(name);
			String role = admin.getRole();
			if (role.equals("ROLE_JUNIORADMIN")) {
				ret = "redirect:/junior/homepage";
			}
			if (role.equals("ROLE_SENIORADMIN")) {
				ret = "redirect:/senior/homepage";
			}

			return ret;
		} else {
			return "login";
		}
	}
}