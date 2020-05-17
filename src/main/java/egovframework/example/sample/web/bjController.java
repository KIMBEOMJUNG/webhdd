package egovframework.example.sample.web;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

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
	
	
	@RequestMapping(value="/bj/filein.do")
	public String filein(HttpServletRequest request, ModelMap model) throws Exception
	{
	/*List<?> list = (List<?>) sampleDAO.list("selecta");   //Sample_sql.xml 파일 안에 select id 와 일치시켜주기!
	model.addAttribute("resultList", list);*/
		return "bj/filein";
	}
	
	@RequestMapping(value="/bj/fileup.do")
	public String fileup(HttpServletRequest request, ModelMap model) throws Exception
	{
		String title = ""+request.getParameter("title");
		String context = ""+request.getParameter("context");
		String se = ""+request.getParameter("se");
		String fileName = FileUpload(request);
		EgovMap in =new EgovMap();
		in.put("title", title);
		in.put("context", context);
		in.put("se", se);
		in.put("img", fileName);
		sampleDAO.insert("inputimg",in);
		return "redirect:/bj/admin.do";
}
	


	@RequestMapping(value = "/bj/admin.do")
	public String admin(HttpServletRequest request, ModelMap model) throws Exception {
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
		List<?> list = (List<?>) sampleDAO.list("adfilel", in);
		model.addAttribute("resultList", list);
		EgovMap count = (EgovMap) sampleDAO.select("adfilet", in);
		String total = "" + count.get("num");
		paginationInfo.setTotalRecordCount(Integer.parseInt(total));
		model.addAttribute("paginationInfo", paginationInfo);
		return "bj/admin";
	}
	
	
	
	String FileUpload(HttpServletRequest request )throws Exception{
	     System.out.println("FileUpload");
	       final MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request; // 1. 리퀘스트를 멀티파트리퀘스트로 형변환 
	       System.out.println("FileUpload10");  
	       final Map<String, MultipartFile> files = multiRequest.getFileMap(); //2.파일정보들 배열화
	       System.out.println("FileUpload11");   
//	           Assert.notNull(files, "files is null"); //에러체크   , 파일이 무조건 있다 가정하고 에러체크 패스함..
//	           Assert.state(files.size() > 0, "0 files exist");
	        
//	           String uploadPath = "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\SC";    
//	           String uploadPath = "./down";     //3. 파일이 저장될 서버 폴더 경로
	       
	       ServletContext sct = request.getSession().getServletContext();
	       System.out.println("FileUpload12");
	       String rootPath = sct.getRealPath("/");
	       System.out.println("FileUpload13");
	       File pt = new File(rootPath+"..");
	       System.out.println("FileUpload14");
	       String uploadPath = pt.getCanonicalPath()+"\\webhdd\\mcsad";
	       System.out.println("FileUpload15");
	       File saveFolder = new File(uploadPath); //파일업로드폴더지정
	       
	       System.out.println("FileUpload2");
	       
	       // 디렉토리 생성
	       if (!saveFolder.exists() || saveFolder.isFile()) { //4.  해당 경로 파일이 서버에 폴더가 없으면 폴더 생성
	          saveFolder.mkdirs();
	          System.out.println("FileUpload3");
	       }
	       
	       System.out.println("FileUpload4");
	       Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator(); //5. 파일목록을 액세스하기 편하게 이터레이터로 변환
	       MultipartFile file;
	       String filePath;
	       String fn="";
	       while (itr.hasNext()) { // 6. 파일갯수만큼 반복 작업 .
	          Entry<String, MultipartFile> entry = itr.next();//7. 파일목록중에서 현제 차례 파일 한개 가져옴
	          System.out.println("FileUpload5");
	          file = entry.getValue(); // 8.파일 이름 데이타 얻기
	          System.out.println("dbg 1 test file :"+file);
	          if (!"".equals(file.getOriginalFilename())) { //빈파일인지 체크
	        	  System.out.println("빈파일");
	             filePath = uploadPath + "\\"+System.currentTimeMillis() + file.getOriginalFilename(); // 9.파일이름에 경로디렉토리를 추가하여 풀패스 설정
	             System.out.println("dbg 2 빈파일 filepath:"+filePath);    
	             fn = System.currentTimeMillis()+file.getOriginalFilename() ; // 파일이름을 나중에 엑세스 하기 위하여 저장, DB에 저장하거나 디버깅용으로 출력해보거너 할때 사용하면됨.
	             
	             File af = new File(filePath);
	             System.out.println("dbg 3 빈파일");
	                 file.transferTo(af);  // 10. 임시로 업로드된 파일을 실제 서버로 이동
	             System.out.println("dbg 4 FileUpload6");
	                  
	             System.out.println("dbg 5 FileUpload7 fn:"+fn);
	          }
	       }
	      return fn;
	   }


	
	
	
}
