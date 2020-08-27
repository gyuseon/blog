<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/header.jsp" %>    


    <!-- Favicon -->
    <link rel="icon" href="/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/resources/style.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
    <script src="/resources/login/js/join.js"></script>
    <!-- validation 사용자 작성 코드 삽입-->
    <!-- 전제조건 1. jquery.min.js, 2. jquery.validate.js-->
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/resources/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="/resources/login/css/main.css">
<!--===============================================================================================-->


    <!-- ##### Header Area End ##### -->
 <div class="container-center">
	<div class="container-login100" style="background-image: url('/resources/login/images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form id="leave" action="" method="post" class="login100-form validate-form">
				<span class="login100-form-title p-b-37">
					회원탈퇴
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="아이디를 다시 입력하세요">
					<input class="input100" type="text" name="userid" id="userid" placeholder="아이디를 입력하세요"   value="${auth.userid}" readonly>
					<span class="focus-input100"></span>
				</div>  

				<div class="wrap-input100 validate-input m-b-25" data-validate = "비밀번호를 다시 입력하세요">
					<input class="input100" type="password" name="current_password" id="current_password" placeholder="비밀번호를 입력하세요" autofocus="autofocus">
					<span class="focus-input100"></span>
				</div>
		
				
				<!-- <div class="container-login100-form-btn"> -->
				<div class="p-r-70  p-t-10" >
					<button type ="submit" class="login100-form-btn btn-leave"  >
						탈퇴하기
					</button>
					<button type ="button" class="login100-form-btn" onclick="location.href='/foodblog/index'"  >
						돌아가기
					</button>
				</div>
				<div class="p-l-120">
					
					
				
				</div>
			</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){
	//userid 와 password를 서버로 보내서 회원탈퇴
	//json 형태로 보낸 후 성공하면 index 로 이동하기

	//http://localhost:8080/leave + delete
	$(".btn-leave").click(function(e){
		e.preventDefault();
		
		let userid= $("#userid").val();
		let password= $("#current_password").val();
		 
		let param = {
				userid : userid,
				password : password
		};
		
		//폼안의 데이터를 json 형태로 서버로 보내기
		// 입력 후 결과를 받아 출력하기
		$.ajax({
			url : 'leave',
			type : 'delete',
			contentType : 'application/json',
			data : JSON.stringify(param),
			success:function(data){
				alert(data);
				location.href='/';
			},
			error:function(xhr,txtStatus,error){
				//alert(xhr,responseText);
				let msg = xhr.responseText;
				if(msg === 'fail'){
					alert('현재 비밀번호를 확인해 주세요');
					$("#current_password").val("");
					$("#current_password").focus();
				}
			}
		})
	})
})	
</script>		
		</div>
	</div>
</div>	

 <%-- 페이지번호를 누르면 동작하는 폼 --%>
    <form action="boardList" id="actionForm">
		<input type="hidden" name="pageNum" value="${PageVO.cri.pageNum}"/>
		<input type="hidden" name="amount" value="${PageVO.cri.amount}"/>
		<input type="hidden" name="cateCode" value="${PageVO.cri.cateCode}"/>
	</form>


    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <p class="copywrite-text"><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
                <div class="col-12 col-sm-7">
                    <!-- Footer Nav -->
                    <div class="footer-nav">
                        <ul>
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Recipes</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->
    
    <script>
 $(function(){
     //사용자가 페이지 번호를 누르면 생기는 스크립트
	 	// 전송해야 할 폼 가져온 후
	 	let actionForm = $("#actionForm");
	 //사용자가 페이지 번호를 누르면 동작하는 스크립트
	 $(".page-item a").click(function(e){
	 // a 태그의 동작 막기
		e.preventDefault();	 
	 // (전송해야 할 폼 가져온 후) pageNum 의 값을 변경한 후
	 	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	 // 폼 전송하기
	 	actionForm.submit();
	 })
	 
	 $(".instance-menu").on("click","li a",function(e){
		 e.preventDefault();
		 console.log($(this).attr("href"));
		 actionForm.find("input[name='cateCode']").val($(this).attr("href"));
		 actionForm.find("input[name='pageNum']").val("1");
		 actionForm.find("input[name='amount']").val("10");
		 actionForm.submit();
	 })
	 
 })
    </script>
    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="/resources/js/active.js"></script>
    
<!--===============================================================================================-->

<!--===============================================================================================-->
	<script src="/resources/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/login/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="/resources/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/resources/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/resources/login/js/main.js"></script>
     <script src="/resources/js/modify.js"></script>

</body>

</html>