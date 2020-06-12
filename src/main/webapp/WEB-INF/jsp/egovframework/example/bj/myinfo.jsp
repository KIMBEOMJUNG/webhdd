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
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-datetimepicker/datertimepicker.css" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">

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
        <h3><i class="fa fa-angle-right"></i> 내정보</h3>
        <!-- SIMPLE TO DO LIST -->
        
        <!--  row -->
        <!-- COMPLEX TO DO LIST -->
        
        <!-- /row -->
        <!-- SORTABLE TO DO LIST -->
        <div class="row mt mb">
          <div class="col-md-12">
            <section class="task-panel tasks-widget">
              <div class="panel-heading">
                <div class="pull-left">
                  <h5><i class="fa fa-tasks"></i> 내 상세정보</h5>
                </div>
                <br>
              </div>
              <div class="panel-body">
                <div class="task-content">
                  <ul id="sortable" class="task-list">
                    <li class="list-primary">
                      
                      
                      <div class="task-title">
                        <span class="task-title-sp">동영상 파일 업로드 횟수</span>
                        <span class="badge bg-theme">${item.dsum }</span>
                        <div class="pull-right hidden-phone">
                          <!-- <button class="btn btn-success btn-xs fa fa-check"></button>
                          <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                          <button class="btn btn-danger btn-xs fa fa-trash-o"></button> -->
                        </div>
                      </div>
                    </li>
                    <li class="list-danger">
                      
                      
                      <div class="task-title">
                        <span class="task-title-sp">사진 파일 업로드 횟수</span>
                        <span class="badge bg-warning">${item.ssum }</span>
                        <div class="pull-right hidden-phone">
                          <!-- <button class="btn btn-success btn-xs fa fa-check"></button>
                          <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                          <button class="btn btn-danger btn-xs fa fa-trash-o"></button> -->
                        </div>
                      </div>
                    </li>
                    <li class="list-success">
                      
                      
                      <div class="task-title">
                        <span class="task-title-sp">문서 파일 업로드 횟수</span>
                        <span class="badge bg-success">${item.msum }</span>
                        <div class="pull-right hidden-phone">
                          <!-- <button class="btn btn-success btn-xs fa fa-check"></button>
                          <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                          <button class="btn btn-danger btn-xs fa fa-trash-o"></button> -->
                        </div>
                      </div>
                    </li>
                    <li class="list-warning">
                      
                      <div class="task-title">
                        <span class="task-title-sp">음악 파일 업로드 횟수</span>
                        <span class="badge bg-info">${item.musum }</span>
                        <div class="pull-right hidden-phone">
                          <!-- <button class="btn btn-success btn-xs fa fa-check"></button>
                          <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                          <button class="btn btn-danger btn-xs fa fa-trash-o"></button> -->
                        </div>
                      </div>
                    </li>
                     <li class="list-info">
                      
                      <div class="task-title">
                        <span class="task-title-sp">받은 좋아요 횟수</span>
                        <span class="badge bg-important">${item.good }</span>
                        <div class="pull-right hidden-phone">
                          <!-- <button class="btn btn-success btn-xs fa fa-check"></button>
                          <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                          <button class="btn btn-danger btn-xs fa fa-trash-o"></button> -->
                        </div>
                      </div>
                    </li> 
                  </ul>
                </div>
                <!-- <div class=" add-task-row">
                  <a class="btn btn-success btn-sm pull-left" href="todo_list.html#">Add New Tasks</a>
                  <a class="btn btn-default btn-sm pull-right" href="todo_list.html#">See All Tasks</a>
                </div> -->
              </div>
            </section>
          </div>
          <!--/col-md-12 -->
        </div>
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
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <script src="../lib/tasks.js" type="text/javascript"></script>
  <script>
    jQuery(document).ready(function() {
      TaskList.initTaskWidget();
    });

    $(function() {
      $("#sortable").sortable();
      $("#sortable").disableSelection();
    });
  </script>

</body>

</html>
