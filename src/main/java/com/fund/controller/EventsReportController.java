package com.fund.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fund.model.Event;

@RestController
public class EventsReportController {

	@RequestMapping(value="/events")
	public List<Event> getEvents(){
		
		List<Event> events = new ArrayList<Event>();
		Event event1 = new Event();
		event1.setName("Java user group");
		events.add(event1);
		Event event2 = new Event();
		event2.setName("Angular user group");
		events.add(event2);
		Event event3 = new Event();
		event3.setName("Web service user group");
		events.add(event3);
	//binds this collection to json response and produce json collection
		return events;
	}
	
}
