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
 <title>나만의 웹하드</title>

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

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  
  <script>
           function fn_egov_link_page(pageNo){
              document.listForm.pageIndex.value = pageNo;
              document.listForm.action = "<c:url value='/park/park.do'/>";
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
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
       <section id="main-content">
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 회원 관리</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <!-- CHART PANELS -->

            <!-- /row - FIRST ROW OF PANELS -->
            <!--  SECOND ROW OF PANELS -->
            <div class="row">

              <c:forEach var="item" items="${resultList}">

               <div class="col-md-4 col-sm-4 mb">
               
               <c:if test="${item.grade==1}">
                <div class="darkblue-panel pn">                                 
                  <div class="darkblue-header">
                  </c:if > 
               <c:if test="${item.grade==0}">
                 <div class="green-panel pn">
                  <div class="green-header">
                  </c:if >                   
                    <h5><a href="/webhdd/park/user.do?idx=${item.idx }">${item.nickname}</a></h5>                    
                  </div>
                  
                  <h1 class="mt"><i class="fa fa-user fa-3x"></i></h1>
                  <c:if test="${item.grade==0}">
                  <h5><i class="fa fa-user" aria-hidden="true"></i> 일반 사용자</h5>
                 </c:if >
                  <c:if test="${item.grade==1}">
                     <h5><i class="fa fa-handshake-o" aria-hidden="true"></i> 관리자</h5>
                  </c:if>
                  
                  <footer>
                      <button type="button" onclick="location.href='/webhdd/park/user.do?idx=${item.idx }'" class="btn btn-success">정보 수정</button>
                    <div class="centered">

                    </div>
                  </footer>
                </div>
                <!--  /darkblue panel -->
               </div>

   			  </c:forEach>

              <!--  /col-md-4 -->
           
            </div>

           
			<ui:pagination paginationInfo="${paginationInfo }" type="image" jsFunction="fn_egov_link_page"/>
			<form action="/webhdd/park/park.do" name="listForm" id="listForm">
  			 <input type="hidden" name="pageIndex" value="1"/>   
			</form>


            <!--  END SIXTH ROW OF PANELS -->
          </div>
        </div>
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
  <script src="../lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="../lib/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../lib/jquery.scrollTo.min.js"></script>
  <script src="../lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <!--script for this page-->

</body>

</html>
