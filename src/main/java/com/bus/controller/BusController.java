package com.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BusController {

	@RequestMapping(value="/buses/list",method=RequestMethod.GET)
	public String getBusesList(){
		
		
		return "/buses/buses_list";
	}
}
