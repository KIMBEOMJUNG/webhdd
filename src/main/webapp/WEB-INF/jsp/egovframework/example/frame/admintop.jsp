<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>

<header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>관리자페이지</b></a>
      <!--logo end-->
      
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="#" style="background:black">ID: ${id}</a></li>
          <li><a class="logout" href="/webhdd/logout/inputProcess.do">로그아웃</a></li>
        </ul>
      </div>
    </header>
    
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          
         
          <li class="mt">
            <a href="/webhdd/bj/admin.do">
              <i class="fa fa-list-ul"></i>
              <span>전체 게시물</span>
              </a>
              
              <a href="/webhdd/park/park.do">
              <i class="fa fa-users"></i> 
              <span>회원목록</span>
              </a>
          </li>
          
          
          
         
          
        
         
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    
    <!-- <script>
    var now = new Date();
    date = now.getDate(); 
    console.log(date);
    </script> -->
    
    </body>