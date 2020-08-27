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
			<form id="regist" action="" method="post" class="login100-form validate-form">
				<span class="login100-form-title p-b-37">
					회원가입
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="아이디를 다시 입력하세요">
					<input class="input100" type="text" name="userid" id="userid" placeholder="아이디를 입력하세요"  value="${vo.userid}">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "비밀번호를 다시 입력하세요">
					<input class="input100" type="password" name="password" id="password" placeholder="비밀번호를 입력하세요" value="${vo.password}">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input m-b-25" data-validate = "비밀번호를 다시 입력하세요">
					<input class="input100" type="password" name="confirm_password" id="confirm_password" placeholder="비밀번호를 다시 입력하세요">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input m-b-25" data-validate = "이름을 다시 입력하세요">
					<input class="input100" type="text" name="username" id="username" placeholder="이름을 입력하세요" value="${vo.username}">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input m-b-25" data-validate = "이메일을 다시 입력하세요">
					<input class="input100" type="email" name="email" id="email" placeholder="이메일을 입력하세요" value="${vo.email}">
					<span class="focus-input100"></span>
				</div>
				<!-- <div class="container-login100-form-btn"> -->
				<div class="p-r-70  p-t-10" >
					<button type ="submit" class="login100-form-btn" >
						입력
					</button>
					<button type ="button" class="login100-form-btn" onclick="location.href='/foodblog/login'"  >
						돌아가기
					</button>
				</div>
				<div class="p-l-120">
					
					
				
				</div>
			</form>		
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
	<script>
		$("#userid").on("change",function(){
		  $.ajax({
			url : 'dupId',
			type : 'get' ,
			data : {
				userid : $("#userid").val()
			},
			  
		success:function(data){
			if(data==='fail'){
				alert("중복된 아이디 입니다.")
			}	
		},
		error:function(xhr,txtStauts,error){
			alert(xhr.responseText);
			}
		  })
	})
	</script>

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

</body>

</html>