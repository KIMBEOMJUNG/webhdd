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
  <script src="../lib/chart-master/Chart.js"></script>
    <script>
           function fn_egov_link_page(pageNo){
              document.listForm.pageIndex.value = pageNo;
              document.listForm.action = "<c:url value='/mg/mgtest.do'/>";
                 document.listForm.submit();
           }
</script>


  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
 
    <c:import url="/frame/top.do" />
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="row mt">
          <div class="col-sm-3">
 
            <section class="panel">
              <div class="panel-body"> 
              <div>               
                 <h3 > <i class="fa fa-align-justify"></i>  카테고리</h3>
               </div>
                <ul class="nav nav-pills nav-stacked mail-nav">
                  <li class="active"><a href="inbox.html"> <i class="fa fa-film"></i> 동영상  <!-- <span class="label label-theme pull-right inbox-notification">3</span> --></a></li>
                  <li><a href="#"> <i class="fa fa-camera"></i> 사진 </a></li>
                  <li><a href="#"> <i class="fa fa-file-text-o"></i> 문서 </a></li>
                  <li><a href="#"> <i class="fa fa-music"></i> 음악 <!-- <span class="label label-info pull-right inbox-notification">8</span> --></a></a>
                  </li>
                  <li><a href="#"> <i class="fa fa-inbox"></i> 모든 파일 </a></li>
                </ul>
              </div>
            </section>

          </div>  
          <div class="col-sm-9">
            <section class="panel">
              <header class="panel-heading wht-bg">
                <h4 class="gen-case">
                    	게시판
                </h4>                   
              </header>
<!------------------------------------------- 검색창 ----------------------------------------------------->
              <div class="panel-body minimal">
              	<div class="row">
              		  <div class="form-group ">
              		  <div style="width:100%">
              		  	<div style="width:2%;float: left;">
              		 	 &nbsp;
              		  	</div>
                     	<div id="input" style="width:97%;float: left;">
                       	 	<input class=" form-control"  id="cname" name="name" minlength="2" placeholder="검색어를 입력하세요." type="text" required />
                    	</div>

                      </div>
                      <div style="width:100%">
                        <br>
                     	<br>
                     	<div style="width:1%;float: right;">
                     	&nbsp;
                     	</div>
                     	<div id="submit" style="width:99%;float: right;">
                      			<button class="btn btn-theme"  style="float: right;" type="submit">검색</button>
                     	</div>
                      </div>

                      </div>
              	</div>
              </div>
<!--------------------------------------------검색창 끝---------------------------------------------------->
              	<!--  -->
              <div class="panel-body minimal">
                <div class="mail-option">
                  <div class="chk-all">
                    <div class="pull-left mail-checkbox">
                      <input type="checkbox" class="">
                    </div>
                    <div class="btn-group">
                      <a data-toggle="dropdown" href="#" class="btn mini all">
                        All
                        <i class="fa fa-angle-down "></i>
                        </a>
                      <ul class="dropdown-menu">
                        <li><a href="#"> None</a></li>
                        <li><a href="#"> Read</a></li>
                        <li><a href="#"> Unread</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="btn-group">
                    <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="#" class="btn mini tooltips">
                      <i class=" fa fa-refresh"></i>
                      </a>
                  </div>
                  <div class="btn-group hidden-phone">
                    <a data-toggle="dropdown" href="#" class="btn mini blue">
                      More
                      <i class="fa fa-angle-down "></i>
                      </a>
                    <ul class="dropdown-menu">
                      <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                      <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                      <li class="divider"></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                  </div>
                  <div class="btn-group">
                    <a data-toggle="dropdown" href="#" class="btn mini blue">
                      Move to
                      <i class="fa fa-angle-down "></i>
                      </a>
                    <ul class="dropdown-menu">
                      <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                      <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                      <li class="divider"></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                  </div>

                </div>
                <div class="table-inbox-wrap ">
                <!-- 게시글 목록  -->
                  <table class="table table-inbox table-hover">
                    <tbody>
                      
                      <c:forEach var="item" items="${resultList}">
                      
                      <tr class="">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="/webhdd/park/board_detail.do?idx=${item.idx}">작성자</a></td>
                        <td class="view-message"><a href="/webhdd/park/board_detail.do?idx=${item.idx}">${item.title}</a></td>
                        <td class="view-message inbox-small-cells" ></td>
                        <td class="view-message text-right">${item.date }</td> 
                      </tr>
                      
                      </c:forEach>

                      
                    </tbody>
                  </table>
                  <!-- 페이지 -->
   			<ui:pagination paginationInfo="${paginationInfo }" type="image" jsFunction="fn_egov_link_page"/>             
			<form action="/webhdd/park/park.do" name="listForm" id="listForm">
  			 <input type="hidden" name="pageIndex" value="1"/>
  			 <!-- 페이지 버튼 -->
  			 <ul class="unstyled inbox-pagination">
                <li><span>1-50 of 99</span></li>
                <li>
                   <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                </li>
                <li>
                   <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                </li>
             </ul>   
			</form>
                </div>
              </div>
            </section>
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
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="inbox.html#" class="go-top">
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
