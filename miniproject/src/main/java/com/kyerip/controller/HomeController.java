package com.kyerip.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kyerip.service.TestService;

@Controller
public class HomeController {
	
	@Autowired private TestService testService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		
		String version = testService.getVersion();
		Date today = testService.selectSysdate();
		
		mav.addObject("version", version);
		mav.addObject("today", today);
		
		return mav;
	}
	
}
