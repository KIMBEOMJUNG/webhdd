



package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
      String title = request.getParameter("title");
      String type = request.getParameter("type");//카테고리 값
       EgovMap in = new EgovMap();
       in.put("title", title);
       in.put("type", type);
       in.put("firstindex", "" + paginationInfo.getFirstRecordIndex());
        in.put("recordperpage", "" + paginationInfo.getRecordCountPerPage());        
        List<?> list = (List<?>) sampleDAO.list("mlist", in);
        model.addAttribute("resultList", list);


      EgovMap count = (EgovMap) sampleDAO.select("mlistl", in);
      String total = "" + count.get("num");
      paginationInfo.setTotalRecordCount(Integer.parseInt(total));
      model.addAttribute("paginationInfo", paginationInfo);
      model.addAttribute("title", title);
      model.addAttribute("type", type);
      
     
      return "mg/mgtest";
   }
   /*@RequestMapping(value = "/mg/search.do")
   public String search(HttpServletRequest request, ModelMap model) throws Exception {
      //페이징

      String title = "%"+request.getParameter("title")+"%";
         
         EgovMap in = new EgovMap();
         in.put("title", title);
         
         EgovMap ed = (EgovMap) sampleDAO.select("search", title);
         if(ed ==null)
            return "redirect:/mg/mgtest.do"; 
            
         else{
            List<?> list = (List<?>) sampleDAO.list("search",ed);   //Sample_sql.xml 파일 안에 select id 와 일치시켜주기!
               model.addAttribute("resultList", list);
         }
            
//         model.addAttribute("resultList", ed);

      
      return "redirect:/mg/mgtest.do"; 
   }*/
   
   @RequestMapping(value="/mg/test.do")
   public String test(HttpServletRequest request, ModelMap model) throws Exception
   {
   /*List<?> list = (List<?>) sampleDAO.list("selecta");   //Sample_sql.xml 파일 안에 select id 와 일치시켜주기!
   model.addAttribute("resultList", list);*/
      return "mg/test";
   }
   
   @RequestMapping(value = "/mg/login.do")
   public String inputProcess(HttpServletRequest request, ModelMap model) throws Exception {
      String email = request.getParameter("id");
      String pw = request.getParameter("pw");
      
      EgovMap in = new EgovMap();
      in.put("email", email);
      in.put("pw", pw);
      
      EgovMap ed = (EgovMap) sampleDAO.select("getLogin", in);
      if(ed ==null)
         return "redirect:/mg/test.do"; 
      
      else{
         HttpSession session = request.getSession();
         session.setAttribute("id", ed.get("id"));
         session.setAttribute("uuidx", ed.get("idx"));
         session.setAttribute("ulevel", ed.get("grade"));
         String id = ""+session.getAttribute("id");
         String useridx = ""+session.getAttribute("idx");
         String ulevel = ""+session.getAttribute("ulevel");
         System.out.println("id:"+id);
      }
         
      model.addAttribute("item", ed);
      return "redirect:/mg/mgtest.do"; 
   }


   @RequestMapping(value = "/mg/myboard.do")
   public String myboard(HttpServletRequest request, ModelMap model) throws Exception {
      //페이징
      PaginationInfo paginationInfo = new PaginationInfo();
      if (request.getParameter("pageIndex") == null) {
         paginationInfo.setCurrentPageNo(1);
      } else {
         paginationInfo.setCurrentPageNo(Integer.parseInt("" + request.getParameter("pageIndex")));
      }
      paginationInfo.setRecordCountPerPage(10);
      paginationInfo.setPageSize(7);
      HttpSession session = request.getSession();

       String uuidx = ""+session.getAttribute("uuidx");
      //인자생성
      String title = request.getParameter("title");
      String type = request.getParameter("type");//카테고리 값
       EgovMap in = new EgovMap();
       in.put("uuidx", uuidx);
       in.put("title", title);
       in.put("type", type);
       in.put("firstindex", "" + paginationInfo.getFirstRecordIndex());
        in.put("recordperpage", "" + paginationInfo.getRecordCountPerPage());        
        List<?> list = (List<?>) sampleDAO.list("mlist", in);
        model.addAttribute("resultList", list);

      EgovMap count = (EgovMap) sampleDAO.select("mlistl", in);
      String total = "" + count.get("num");
      paginationInfo.setTotalRecordCount(Integer.parseInt(total));
      model.addAttribute("paginationInfo", paginationInfo);
      model.addAttribute("title", title);
      model.addAttribute("type", type);
      
     
      return "mg/myboard";
   }
   
   
}