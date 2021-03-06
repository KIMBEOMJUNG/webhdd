package egovframework.example.sample.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@RequestMapping(value = "/ig/joinprocess.do")
	public String inputprocess(HttpServletRequest request, ModelMap model) throws Exception {
		String Username = "" + request.getParameter("Username");
		String password = "" + request.getParameter("password");
		String Nickname = "" + request.getParameter("Nickname");

		EgovMap in = new EgovMap();
		in.put("Username", Username);
		in.put("password", password);
		in.put("Nickname", Nickname);
		sampleDAO.insert("join", in);
		return "redirect:/mg/test.do";
	}

	@ResponseBody
	@RequestMapping(value = "/ig/checkemail.do")
	public String checkid(HttpServletRequest request, ModelMap model) throws Exception {
		String ckid = request.getParameter("ckemail");
		EgovMap in = new EgovMap();
		in.put("ckid", ckid);
		EgovMap ed = (EgovMap) sampleDAO.select("selectCkid", in);
		if (ed == null)// 중복되지 않은 값
			return "ok";
		else// 중복됨 사용못하는 값
			return "fail";
	}
}