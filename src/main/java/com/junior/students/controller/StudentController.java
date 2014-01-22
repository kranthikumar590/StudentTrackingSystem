package com.junior.students.controller;

import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {

	@RequestMapping(value = "/junior/students/list", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("date", new Date());

		return "/junior_admin/students/students_list";

	}

}
