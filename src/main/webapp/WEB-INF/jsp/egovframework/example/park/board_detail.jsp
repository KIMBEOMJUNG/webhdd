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

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  <!-- Go to www.addthis.com/dashboard to customize your tools --> 
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5ea192341afbb203"></script>
  
  
</head>
<script type="text/javascript">
 $(input)(){
	 var input = document.getElementById("input").value;
	 temp = input;


 }
</script>
<body>
  <section id="container">
   <c:import url="/frame/top.do" />
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
      <section id="main-content">
      <section class="wrapper">
        <div class="col-lg-12 mt">
          <div class="row content-panel">
            <div class="col-lg-10 col-lg-offset-1">
              <div class="invoice-body">
                <div class="pull-left">
                  <h1>${item.title}</h1><br>
                  <address>
                    <h4><i class="fa fa-user-circle-o" aria-hidden="true"></i>&emsp;<strong>${item.nickname}</strong></h4>
					
                  </address>
                </div>
                <!-- /pull-left -->

                <!-- /pull-right -->
                <div class="clearfix"></div>
                <br>
                <br>
                <a href="/webhdd/webhdd/mcsad/${item.files}" download >서버용 임시다운로드버튼</a>
                <br>
                <br>
                <a href="/webhdd/mcsad/${item.files}" download ><button type="button"  class="btn btn-primary btn-lg">다운로드</button></a>
                <p><div > <strong>업로드 날짜 :${item.date}</strong></div><br><br>
                <div class="row">
                  <div class="col-md-9">
           
                
                
                 
                  <br>
                  <br>
                  <h4>파일 설명 : <button type="button" onclick="location.href='/webhdd/bj/goodup.do?idx=${item.idx}'" class="btn btn-success"><i class="fa fa-thumbs-o-up"></i> ${item.good }</button>
                  <br><br> <pre>${item.context}</pre></h4>
                 	  
                  	  <br>
                 
               <!-- Go to www.addthis.com/dashboard to customize your tools --> <div class="addthis_inline_share_toolbox_ian5"></div>
                  </div>
                  <!-- /col-md-9 -->
                  <div class="col-md-3">
                    <br>
                    <!-- /row -->
                    <br>
                  
                  </div>
                  <!-- /invoice-body -->
                </div>
                <br>
                <br>
                <%int i = 0;
                  int j = 0;%>
                 <c:forEach var="result" items="${comment}">
                  <%i++; %>
                 </c:forEach>
                 <div class="well well-small green">
                      <div > 댓글 : <%=i %> 개</div>
                      <div class="clearfix"></div>
                    </div>
                <!-- /col-lg-10 -->
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width:10%" class="text-center">순서</th>
                      <th style="width:60%"class="text-left">내용</th>
                      <th style="width:15%" class="text-right">등급</th>
                      <th style="width:15%" class="text-right">이름</th>
                    </tr>
                  </thead>
                  <tbody>
 					
                    <c:forEach var="result" items="${comment}">
                    <%j++; %>
                    <tr>
                      <td class="text-center"><%=j %></td>
                      <td class="text-left">${result.comment}</td>
                       <c:if test="${result.grade==0}">
                  		 <td class="text-right">일반 사용자</td>
                 	   </c:if >
                 	    <c:if test="${result.grade==1}">
                  		 <td class="text-right">관리자</td>
                 	   </c:if >
                      
                      <td class="text-right">${result.nickname}</td>
                    </tr>
                   
					</c:forEach>
                  </tbody>
                </table>
              <div class=" form">
             
                  <form class="cmxform form-horizontal style-form" id="commentForm" method="get" action="/webhdd/park/commentinsert.do">
                 
                
                    <div class="form-group ">
                     
                      
                        <input class=" form-control"  id="cname" name="name" minlength="2" type="text" required />
                        <input  type="hidden"  id="bordidx" name="bordidx" value="${item.idx }"   required />
               
                      <button class="btn btn-theme"  style="float: right;margin-top:10px" type="submit">등록</button>
                    </div>
                    
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        
                      </div>
                    </div>
                  </form>
                </div>
               
                <br>
                <br>
              </div>
              <!--/col-lg-12 mt -->
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
  <!-- MAP SCRIPT - ALL CONFIGURATION IS PLACED HERE - VIEW OUR DOCUMENTATION FOR FURTHER INFORMATION -->
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&sensor=false"></script>
  <script>
    $('.contact-map').click(function() {

      //google map in tab click initialize
      function initialize() {
        var myLatlng = new google.maps.LatLng(40.6700, -73.9400);
        var mapOptions = {
          zoom: 11,
          scrollwheel: false,
          center: myLatlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(document.getElementById('map'), mapOptions);
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Dashio Admin Theme!'
        });
      }
      google.maps.event.addDomListener(window, 'click', initialize);
    });
  </script>
</body>

</html>
