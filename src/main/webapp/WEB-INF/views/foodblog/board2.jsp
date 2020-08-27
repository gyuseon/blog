<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

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
    
    <div style="height:800px">

   <div id="container_box">
   		<h2>레시피 등록</h2>
   
	 <form role="form" method="post" autocomplete="off" enctype="multipart/form-data"> 
 
	 <label>1차 분류</label>
	 <select class="custom-select category1">
	  <option value="">전체</option>
	 </select>
	 
	 <label>2차 분류</label>
	 <select class="custom-select category2" name="catecode">
	  <option value="">전체</option>
	 </select>
	
	 
	 <div class="inputArea">
	 <label for="gdswriter">글쓴이</label>
	 <input type="text" class="form-control" id="writer" name="writer" value="${auth.userid}" readonly/>
	</div>
	 
	  <div class="form-row">
	<div class="col-md-6 mb-3">
	 <label for="gdsName">음식이름</label>
	 <input type="text" class="form-control" id="bname" name="bname" />
	</div>
	
	<div class="col-md-6 mb-3">
	 <label for="gdscooktime">조리시간</label>
	 <input type="text" class="form-control" id="cooktime" name="cooktime" />
	</div>
	
	
	<div class="col-md-6 mb-3">
	 <label for="gdsserving">몇인분</label>
	 <input type="text" class="form-control" id="serving" name="serving" />
	</div>
	<div class="col-md-6 mb-3">
	 <label for="gdstemperature">조리온도</label>
	 <input type="text" class="form-control" id="temperature" name="temperature" />
	</div>
	<div class="col-md-6 mb-3">
	 <label for="gdsdifficult">난이도</label>
	 <input type="text" class="form-control" id="difficult" name="difficult" />
	</div>
	<div class="col-md-6 mb-3">
	 <label for="gdstitle">제목</label>
	 <input type="text" class="form-control" id="title" name="title" />
	</div>
	</div>
	<div class="col-md-6 mb-3">
	 <label for="gdsDes">음식소개</label>
	 <textarea rows="5" cols="50" id="bdes" name="bdes"></textarea>
	 
	 <script>
		 var ckeditor_config = {
		   resize_enaleb : false,
		   enterMode : CKEDITOR.ENTER_BR,
		   shiftEnterMode : CKEDITOR.ENTER_P,
		   filebrowserUploadUrl : "/foodblog/ckUpload"
		 };
		 
		 CKEDITOR.replace("bdes", ckeditor_config);
	</script>
	 
	  <%=request.getRealPath("/") %> 
	 
	 
	 <div class="custom-file">
	  <input type="file" class="custom-file-input" id="bimg" name="file">
	  <label class="custom-file-label" for="gdsimg">타이틀 이미지</label>
	  <div class="select_img"><img src="" /></div>
	
	 
	 <!-- <div class="inputArea">
	 <label for="gdsimg">타이틀 이미지</label>
	 <input type="file" id="bimg" name="file" />
	 <div class="select_img"><img src="" /></div> -->
	 
	 <script>
	  $("#bimg").change(function(){
	   if(this.files && this.files[0]) {
	    var reader = new FileReader;
	    reader.onload = function(data) {
	     $(".select_img img").attr("src", data.target.result).width(300);        
	    }
	    reader.readAsDataURL(this.files[0]);
	   }
	  });
	 </script>
	 
	</div>
	</div>
	<div class="col-md-6 mb-3">
	<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
	</div>
	 
	
	</form> 
	</div>

	<%-- 페이지번호를 누르면 동작하는 폼 --%>
    <form action="/foodblog/boardList" id="actionForm">
		<input type="hidden" name="pageNum" value="${PageVO.cri.pageNum}"/>
		<input type="hidden" name="amount" value="${PageVO.cri.amount}"/>
		<input type="hidden" name="cateCode" value="${PageVO.cri.cateCode}"/>
	</form>

 <script>
 
	// 컨트롤러에서 데이터 받기
	var jsonData = JSON.parse('${category}');
	console.log(jsonData);
	
	var cate1Arr = new Array();
	var cate1Obj = new Object();
	
	// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
	 
	 if(jsonData[i].level == "1") {
	  cate1Obj = new Object();  //초기화
	  cate1Obj.cateCode = jsonData[i].cateCode;
	  cate1Obj.cateName = jsonData[i].cateName;
	  cate1Arr.push(cate1Obj);
	 }
	}
	
	// 1차 분류 셀렉트 박스에 데이터 삽입
	var cate1Select = $("select.category1")
	
	for(var i = 0; i < cate1Arr.length; i++) {
	 cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
	      + cate1Arr[i].cateName + "</option>"); 
	}
	
	
    
    $(document).on("change", "select.category1", function(){

	 var cate2Arr = new Array();
	 var cate2Obj = new Object();
	 
	 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	 for(var i = 0; i < jsonData.length; i++) {
	  
	  if(jsonData[i].level == "2") {
	   cate2Obj = new Object();  //초기화
	   cate2Obj.cateCode = jsonData[i].cateCode;
	   cate2Obj.cateName = jsonData[i].cateName;
	   cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
	   
	   cate2Arr.push(cate2Obj);
	  }
	 }
	 
	 var cate2Select = $("select.category2");
	
	 
	 cate2Select.children().remove();

	 $("option:selected", this).each(function(){
	  
	  var selectVal = $(this).val();  
	  cate2Select.append("<option value='" + selectVal + "'>전체</option>");
	  
	  for(var i = 0; i < cate2Arr.length; i++) {
	   if(selectVal == cate2Arr[i].cateCodeRef) {
	    cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
	         + cate2Arr[i].cateName + "</option>");
	   }
	  }
	  
	 });
	 
	});
    
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

</div>

<%--   <%@include file="../includes/footer.jsp" %>      --%>