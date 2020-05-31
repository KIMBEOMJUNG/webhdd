package egovframework.example.sample.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class igContor {
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	@Resource(name = "multipartResolver")
	CommonsMultipartResolver multipartResolver;

	@RequestMapping(value = "/ig/igfn.do")
	public String main(HttpServletRequest request, ModelMap model) throws Exception {
		/*
		 * List<?> list = (List<?>) sampleDAO.list("selecta"); //Sample_sql.xml
		 * 파일 안에 select id 와 일치시켜주기! model.addAttribute("resultList", list);
		 */
		return "ig/igfn";
	}

	@RequestMapping(value = "/ig/igfn2.do")
	public String main2(HttpServletRequest request, ModelMap model) throws Exception {
		/*
		 * List<?> list = (List<?>) sampleDAO.list("selecta"); //Sample_sql.xml
		 * 파일 안에 select id 와 일치시켜주기! model.addAttribute("resultList", list);
		 */
		return "ig/igfn2";
	}

	 @RequestMapping(value="/ig/joinprocess.do")
	   public String inputprocess(HttpServletRequest request, ModelMap model) throws Exception
	   {
	      String Username = ""+request.getParameter("Username");
	      String password = ""+request.getParameter("password");
	      String Nickname = ""+request.getParameter("Nickname");
	      
	      EgovMap in =new EgovMap();
	      in.put("Username", Username);
	      in.put("password", password);
	      in.put("Nickname", Nickname);
	      sampleDAO.insert("join",in);
	      return "redirect:/ig/igfn.do";
	   }
}