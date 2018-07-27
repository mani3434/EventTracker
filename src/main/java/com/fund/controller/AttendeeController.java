package com.fund.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fund.model.Attendee;

@Controller
public class AttendeeController {

	@RequestMapping(value="/attendee", method = RequestMethod.GET)
	public String displayAttendee(Model model) {
		Attendee attendee = new Attendee();
//		attendee.setName("mani");
//		attendee.setEmail("mani.earla@gmail.com");
		
		model.addAttribute("attendee", attendee);
		
		return "attendee";
	}
	
	//@ModelAttribute("attendee") Attendee attendee
	@RequestMapping(value="/attendee", method = RequestMethod.POST)
	public String processAttendeee(@Valid Attendee attendee, BindingResult result, Model model ) {
		
		System.out.println(attendee);
		
		if(result.hasErrors()) {
			return "attendee";
		}
		
		
		return "redirect:index.html";
		
	}
}
