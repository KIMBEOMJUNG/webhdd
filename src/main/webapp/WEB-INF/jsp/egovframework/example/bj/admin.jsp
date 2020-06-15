<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="../img/favicon.png" rel="icon">
  <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">
  <link href="../css/table-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
    
  <script>
	        function fn_egov_link_page(pageNo){
	        	document.listForm.pageIndex.value = pageNo;
	        	document.listForm.action = "<c:url value='/bj/admin.do'/>";
	           	document.listForm.submit();
	        }
</script>
  
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <c:import url="/frame/admintop.do" />
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 관리자페이지 게시물목록</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i> 게시물</h4>
              <section id="unseen">
                <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th>제목</th>
                      <th>내용</th>
                      <th class="numeric">파일명</th>
                      <th class="numeric">유저 닉네임</th>
                      <th class="numeric">시간</th>
                      <th class="numeric">공개/비공개</th>
                      <th class="numeric">삭제</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="item" items="${resultList}">
                    <tr>
                      <td>${item.title}</td>
                      <td>
                      <a href="/webhdd/mcsad/${item.files}" download="${item.files}" >다운로드</a>
                      ${item.context}</td>
                      <td class="numeric">${item.files}</td>
                      <td class="numeric">${item.useridx}</td>
                      <td class="numeric">${item.date}</td>
                      <td class="numeric">
	                      <c:if test="${item.security eq 1}">공개</c:if>
	                      <c:if test="${item.security ne 1}">비공개</c:if>
                      </td>
                      <td class="numeric">
                      	<button class="btn btn-primary btn-xs" type="button">삭제하기</button>
                      </td>
                    </tr>
                    <%-- <img src="/webhdd/mcsad/${item.files}" width="100" height="auto"> --%>
                  </c:forEach>
                  </tbody>
                </table>
              </section>
              
                      <ui:pagination paginationInfo="${paginationInfo }" type="image" jsFunction="fn_egov_link_page"/>
<form action="/webhdd/bj/admin.do" name="listForm" id="listForm">
	<input type="hidden" name="pageIndex" value="1"/>	
</form>
              
            </div>
            <!-- /content-panel -->
            
          </div>
          <!-- /col-lg-4 -->
          
        </div>
        <!-- /row -->

        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; jsp와 서블릿 프로젝트<strong>A조</strong>. 웹하드
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
         팀명: 박물관이 살아있다. 
        </div>
        <a href="responsive_table.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="../lib/jquery/jquery.min.js"></script>
  <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="../lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../lib/jquery.scrollTo.min.js"></script>
  <script src="../lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <!--script for this page-->
</body>

</html>
