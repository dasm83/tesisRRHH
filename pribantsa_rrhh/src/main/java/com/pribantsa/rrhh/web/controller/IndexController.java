package com.pribantsa.rrhh.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	private static final String URL = "/index.htm";

	@RequestMapping(method = RequestMethod.GET, value = URL)
	public String get(){
		return "index";
	}
	
}
