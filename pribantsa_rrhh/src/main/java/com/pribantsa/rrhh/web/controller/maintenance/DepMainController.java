package com.pribantsa.rrhh.web.controller.maintenance;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pribantsa.rrhh.model.Departamento;
import com.pribantsa.rrhh.service.DepartamentoService;
import com.pribantsa.web.form.maintenance.deptoMainForm;

@Controller
public class DepMainController {
	
	private static final String URL = "/maintenance/deptos.htm";
	private static final String JSP = "/maintenance/deptos";
	private static final String FORM = "deptosMainForm";
	
	private DepartamentoService deptoService;
	
	@RequestMapping(method = RequestMethod.GET, value = URL)
	public ModelAndView get(HttpServletRequest request) throws JsonGenerationException, JsonMappingException, IOException{
	
		List<Departamento> deptos = deptoService.findAll();
		ObjectMapper mapper = new ObjectMapper();
		
		request.setAttribute("title", "Departamentos");
		
		request.setAttribute("deptosList", mapper.writeValueAsString(deptos));
		
		return new ModelAndView(JSP, FORM, new deptoMainForm());
		
	}

}
