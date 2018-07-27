package com.fund.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fund.model.Test;

@Controller
public class TestController {

	
	
	@RequestMapping(value="/test", method =  RequestMethod.GET)
	public String displayEvent(Model model) {
		
		Test test = new Test();
		
		test.setName("mani");
		
		model.addAttribute("test", test);
		
		return "test";
		
	}
}
