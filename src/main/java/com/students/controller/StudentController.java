package com.students.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class StudentController {

	@RequestMapping(value="/students/list", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("date", new Date());
		
		return "/students/students_list";
 
	}
	
}