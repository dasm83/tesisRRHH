package com.pribantsa.rrhh.web.controller.maintenance;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pribantsa.web.form.maintenance.deptoMainForm;

@Controller
public class DepMainController {
	
	private static final String URL = "/maintenance/deptos.htm";
	private static final String JSP = "/maintenance/deptos";
	private static final String FORM = "deptosMainForm";
	
	@RequestMapping(method = RequestMethod.GET, value = URL)
	public ModelAndView get(HttpServletRequest request){
	
		request.setAttribute("title", "Mantenimiento de Departamentos");
		
		return new ModelAndView(JSP, FORM, new deptoMainForm());
		
	}

}
