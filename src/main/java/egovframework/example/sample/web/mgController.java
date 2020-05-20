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