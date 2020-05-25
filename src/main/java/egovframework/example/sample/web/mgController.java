



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
public class mgController {
   @Resource(name = "sampleDAO")
   private SampleDAO sampleDAO;
   @Resource(name= "multipartResolver")
   CommonsMultipartResolver multipartResolver;

   @RequestMapping(value = "/mg/mgtest.do")
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
      List<?> list = (List<?>) sampleDAO.list("mlist", in);
      model.addAttribute("resultList", list);
      EgovMap count = (EgovMap) sampleDAO.select("mlistl", in);
      String total = "" + count.get("num");
      paginationInfo.setTotalRecordCount(Integer.parseInt(total));
      model.addAttribute("paginationInfo", paginationInfo);
      return "mg/mgtest";
   }
   
   @RequestMapping(value="/mg/test.do")
   public String test(HttpServletRequest request, ModelMap model) throws Exception
   {
   /*List<?> list = (List<?>) sampleDAO.list("selecta");   //Sample_sql.xml 파일 안에 select id 와 일치시켜주기!
   model.addAttribute("resultList", list);*/
      return "mg/test";
   }

   
   
   
}