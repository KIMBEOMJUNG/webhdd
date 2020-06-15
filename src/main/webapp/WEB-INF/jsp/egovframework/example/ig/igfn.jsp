<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
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
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<!--logo start-->
			<a href="../mg/test.do" class="logo"><b>웹<span>하드</span></b></a>
			<!--logo end-->
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i>회원가입하기
				</h3>
				<div class="row mt">
					<div class="col-lg-9">
						<h4>
							<i class="fa fa-angle-right"></i> 빠르고 쉽습니다.
						</h4>
						<div class="form-panel">
							<div class="form">
								<form class="cmxform form-horizontal style-form" id="signupForm"
									action="/webhdd/ig/joinprocess.do"
									onsubmit='return checkValue()'>
									<div class="form-group ">
										<label for="Username" class="control-label col-lg-2">User ID</label>
										<div class="col-lg-10">
											<input class="form-control " id="Username" name="Username"
												type="text" /> <input class="btn btn-theme"
												style="margin-top: 12px;" id="bubu" type="button"
												value="중복 확인" onclick="checkemailfunc()">
										</div>
									</div>
									<div class="form-group ">
										<label for="Nickname" class="control-label col-lg-2">Nickname</label>
										<div class="col-lg-10">
											<input class="form-control " id="Nickname" name="Nickname"
												type="text" />
										</div>
									</div>
									<div class="form-group ">
										<label for="password" class="control-label col-lg-2">Password</label>
										<div class="col-lg-10">
											<input class="form-control " id="password" name="password"
												type="password" />
										</div>
									</div>
									<div class="form-group ">
										<label for="confirm_password" class="control-label col-lg-2">Confirm
											Password</label>
										<div class="col-lg-10">
											<input class="form-control " id="confirm_password"
												name="confirm_password" type="password" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-10">
											<button class="btn btn-theme" type="button" onclick="join()">가입</button>
											<button class="btn btn-theme04" type="button"
												onclick="location.href='../mg/test.do'">취소</button>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- /form-panel -->
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<p>
					&copy; jsp와 서블릿 프로젝트<strong>Dashio</strong>. 웹하드
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
				<a href="responsive_table.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="../lib/jquery/jquery.min.js"></script>
	<script src="../lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="../lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="../lib/jquery.scrollTo.min.js"></script>
	<script src="../lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="../lib/common-scripts.js"></script>
	<!--script for this page-->
	<script src="../lib/form-validation-script.js"></script>

	<script>
		var formckemail = 0;
		$("#Username").on("change keyup paste", function() {
			console.log("formckemail:" + formckemail);
			if (formckemail == 1)//중복처리된상태
			{
				formckemail = 0;
				//$(".joincheckbtn").attr('class','btn btn-success');//클래스 변경
				$("#bubu").val("중복체크");//글자변경
			}
		});

		function join() {
			var password = document.getElementById("password").value;
			var confirm_password = document.getElementById("confirm_password").value;
			var nickname = document.getElementById("Nickname").value;

			if (formckemail == 0) {
				alert('중복 확인 버튼을 눌러주세요.');
				return;
			}

			if (nickname < 1) {
				alert('닉네임을 입력해주세요.');
				return;
			}

			if (password.length < 1) {
				alert('비밀번호를 입력해주세요.');
				return;
			}

			if (password != confirm_password) {
				alert('비밀번호가 일치하지 않습니다.');
				return;
			}

			alert('회원 가입을 완료했습니다.');
			var obj = document.getElementById('signupForm');
			obj.submit();
		}

		function checkemailfunc() {
			console.log("ckemail!");
			var ckemail = $("#Username").val();
			if (ckemail.length < 1) {
				alert("아이디를 입력해주세요.");
				return;
			}

			jQuery.ajax({
				type : "GET",
				url : "/webhdd/ig/checkemail.do?ckemail=" + ckemail,
				success : function(data) {
					console.log("data:" + data);
					if (data == "ok") //사용해도됨
					{
						formckemail = 1;
						/* $(".joinoverlapbtn").attr('class','joincheckbtn w-button');//클래스 변경 */
						alert("사용 가능한 아이디입니다.")
						$("#bubu").val("중복 확인 완료");//글자변경
					} else {
						formckemail = 0;
						alert("이미 있는 아이디 입니다.");
						/* $(".joincheckbtn").attr('class','joinoverlapbtn w-button');//클래스 변경 */
						$("#bubu").val("중복 확인");//글자변경
					}
					console.log("formckemail:" + formckemail);

				},
				complete : function(data) {
				},
				error : function(xhr, status, error) {
					console.log("ajax ERROR!!! : ");
				}
			});

		}
	</script>

</body>

</html>

