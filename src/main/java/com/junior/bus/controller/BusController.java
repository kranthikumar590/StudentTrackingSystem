package com.junior.bus.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BusController {

	@RequestMapping(value="/junior/buses/list",method=RequestMethod.GET)
	public String getBusesList(Model model){
		
		model.addAttribute("date", new Date());
		return "/junior_admin/buses/buses_list";
	}
}
