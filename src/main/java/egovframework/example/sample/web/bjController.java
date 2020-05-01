package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;

@Controller
public class bjController {
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	@Resource(name= "multipartResolver")
	CommonsMultipartResolver multipartResolver;

	@RequestMapping(value="/bj/main.do")
	public String main(HttpServletRequest request, ModelMap model) throws Exception
	{
	/*List<?> list = (List<?>) sampleDAO.list("selecta");   //Sample_sql.xml 파일 안에 select id 와 일치시켜주기!
	model.addAttribute("resultList", list);*/
		return "bj/main";
	}

	
	
	
}
