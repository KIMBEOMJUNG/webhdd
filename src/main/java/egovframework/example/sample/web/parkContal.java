package egovframework.example.sample.web;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
@Controller

public class parkContal {
	@Resource(name = "sampleDAO")
	   private SampleDAO sampleDAO;
	   @Resource(name= "multipartResolver")
	   CommonsMultipartResolver multipartResolver;

	   @RequestMapping(value = "/park/park.do")
		public String park(HttpServletRequest request, ModelMap model) throws Exception {
			//페이징
			PaginationInfo paginationInfo = new PaginationInfo();
			if (request.getParameter("pageIndex") == null) {
				paginationInfo.setCurrentPageNo(1);
			} else {
				paginationInfo.setCurrentPageNo(Integer.parseInt("" + request.getParameter("pageIndex")));
			}
			paginationInfo.setRecordCountPerPage(10);
			paginationInfo.setPageSize(7);

			//인자생성
			EgovMap in = new EgovMap();
			in.put("firstindex", "" + paginationInfo.getFirstRecordIndex());
			in.put("recordperpage", "" + paginationInfo.getRecordCountPerPage());
			List<?> list = (List<?>) sampleDAO.list("userl", in);
			model.addAttribute("resultList", list);
			EgovMap count = (EgovMap) sampleDAO.select("usert", in);
			String total = "" + count.get("num");
			paginationInfo.setTotalRecordCount(Integer.parseInt(total));
			model.addAttribute("paginationInfo", paginationInfo);
			return "park/park";
		}
	   
	   @RequestMapping(value="/park/user.do")
		public String user(HttpServletRequest request, ModelMap model) throws Exception
		{
		   String idx = ""+request.getParameter("idx");
		   EgovMap in =new EgovMap();
		      in.put("idx", idx);
		      EgovMap m = (EgovMap)sampleDAO.select("selecta", idx );//DB에 질의 해서
		      model.addAttribute("data", m );
			return "park/user";
		}
	   
	   @RequestMapping(value="/park/board_detail.do")
		public String board_detail(HttpServletRequest request, ModelMap model) throws Exception
		{
		   String idx = ""+request.getParameter("idx");
		   EgovMap in =new EgovMap();
		      in.put("idx", idx);
		      EgovMap m = (EgovMap)sampleDAO.select("detail", idx );//DB에 질의 해서
		      model.addAttribute("item", m );
		      
		      List<?> list = (List<?>) sampleDAO.list("comment", in);
				model.addAttribute("comment", list);
		      
			return "park/board_detail";
		}

	   
}
