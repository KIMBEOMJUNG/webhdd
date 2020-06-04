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
        <h3><i class="fa fa-angle-right"></i> 파일업로드</h3>
        <div class="row mt">
          <!--  DATE PICKERS -->
          <div class="col-lg-12">
            <div class="form-panel">
              <form method="post"  role="form" action="/webhdd/bj/fileup.do" id="joinform" enctype="multipart/form-data" class="form-horizontal style-form">
              <div class="form-group" style="padding-bottom: 0px;margin-bottom: 0px;">
                  <label class="col-sm-2 col-sm-2 control-label">파일제목</label>
                  <div class="col-sm-10">
                    <input type="text" name="title" id="title" class="form-control">
                    <span class="help-block">파일의 제목을 입력해주세요</span>
                  </div>
                </div>
                
                  
                 <div class="form-group">
                  <label class="control-label col-md-3">전체공개</label>
                  <label class="control-label col-md-3">
                   
                <input type="checkbox" id="inlineCheckbox3" value="1" name="se">
                   </label>
                  
                </div> 
                 
                <div class="form-group " style="padding-bottom: 0px;">
                    <label for="ccomment" class="control-label col-lg-2">상세설명</label>
                    <div class="col-lg-10">
                      <textarea  rows=5 style="width:100%;" id="context" name="context" required=""></textarea>
                    </div>
                  </div>
                
                 <div class="form-group">
                  <label class="control-label col-md-3">카테고리</label>
                  <div class="col-md-4">
                    
                <select class="form-control" name="type">
                  <option value="0" selected="selected">동영상</option>
                  <option value="1">사진</option>
                  <option value="2">문서</option>
                  <option value="3">음악</option>
                </select>
              
                
                  </div>
                </div>
                <div class="form-group" style="padding-bottom: 0px;">
                  <label class="control-label col-md-3">업로드 파일 선택<br>(30MB이하의 파일만 업로드 가능합니다.)</label>
                  <div class="controls col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload" >
                      <span class="btn btn-theme02 btn-file">
                        <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select file</span>
                      <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                      <input type="file" onchange="checkFile(this)" name="files" id="files" class="default" />
                      </span>
                      <span class="fileupload-preview" style="margin-left:5px;"></span>
                      <a href="advanced_form_components.html#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none; margin-left:5px;"></a>
                    </div>
                  </div>
                </div>
                
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10" style="float: right" >
                      <button class="btn btn-theme" type="button" onclick="submits();" >
        				<i class="fa fa-folder-open"></i>              
                    		  업로드하기</button>
                      
                    </div>
                  </div>
                
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
        <!-- DATE TIME PICKERS -->
        <div class="row mt">
                    <!-- /col-lg-12 -->
        </div>
        <!-- row -->
        <!--  TIME PICKERS -->
        
        <!-- row -->
        <!--ADVANCED FILE INPUT-->
        
        <!-- row -->
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
        <a href="advanced_form_components.html#" class="go-top">
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
  <script src="../lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="../lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="../lib/advanced-form-components.js"></script>

<script>
var filech = 0;

	function submits(){
		var title = document.getElementById("title").value;
		var context = document.getElementById("context").value;
		var filess= document.getElementById("files").value;
		
		
		if(title.length == 0){
			console.log("title:"+title);
			alert('제목을 입력해주세요.');
			return;
		}
		if(context.length == 0){
			console.log("context:"+context);
			alert('설명을 입력해주세요.');
			return;
		}
		if(filess.length == 0){
			console.log("filess:"+filess);
			alert('파일을 선택해주세요.');
			return;
		}
		if(filech == 0){
			console.log("filess:"+filess);
			alert('용량을 초과하는 파일입니다.');
			return;
		}
		

		var obj = document.getElementById('joinform');
		obj.submit();

		
	}
	
	function checkFile(el){

		// files 로 해당 파일 정보 얻기.
		var file = el.files;

		// file[0].size 는 파일 용량 정보입니다.
		if(file[0].size > 1024 * 1024 * 30){
			// 용량 초과시 경고후 해당 파일의 용량도 보여줌
			alert('30MB 이하 파일만 등록할 수 있습니다.\n\n' + '현재파일 용량 : ' + (Math.round(file[0].size / 1024 / 1024 * 100) / 100) + 'MB');
		}
		
		// 체크를 통과했다면 종료.
		else{
			filech = 1;
			console.log("용량체크:"+filech)
			return;
		} 

		// 체크에 걸리면 선택된 내용 취소 처리를 해야함.
		// 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
		// 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
		// 이렇게 하면 간단 !?
		
	}
	
	
	
</script>



</body>

</html>
