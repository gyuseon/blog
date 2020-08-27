<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<%@include file="../includes/header.jsp" %>

<link rel="stylesheet" href="/resources/css/mycss.css" />
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
    

    

    <!-- ##### Header Area End ##### -->

    <!-- ##### Treading Post Area Start ##### -->
    <div class="treading-post-area" id="treadingPost">
        <div class="close-icon">
            <i class="fa fa-times"></i>
        </div>

        <h4>Treading Post</h4>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/resources/img/bg-img/9.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/resources/img/bg-img/10.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Mushrooms with pork chop</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/resources/img/bg-img/11.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Birthday cake with chocolate</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/resources/img/bg-img/9.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/resources/img/bg-img/10.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Mushrooms with pork chop</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/resources/img/bg-img/11.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Birthday cake with chocolate</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Treading Post Area End ##### -->

   <!-- ##### Search Area Start ##### -->
    <div class="bueno-search-area section-padding-100-0 pb-70 bg-img" style="background-image: url(/resources/img/core-img/pattern.png);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="recipe">
                                      <option value="">Recipe</option>
                                      <option value="">Recipe 1</option>
                                      <option value="">Recipe 2</option>
                                      <option value="">Recipe 3</option>
                                      <option value="">Recipe 4</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="vegan">
                                      <option value="">Vegan</option>
                                      <option value="">Vegan 1</option>
                                      <option value="">Vegan 2</option>
                                      <option value="">Vegan 3</option>
                                      <option value="">Vegan 4</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="ingredients">
                                      <option value="">Ingredients</option>
                                      <option value="">Ingredients 1</option>
                                      <option value="">Ingredients 2</option>
                                      <option value="">Ingredients 3</option>
                                      <option value="">Ingredients 4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <button class="btn bueno-btn w-100">Search</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Search Area End ##### -->

    <!-- ##### Post Details Area Start ##### -->
    <section class="post-news-area section-padding-100-0 mb-70">
        <div class="container">
        
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <div class="col-12 col-lg-4 col-xl-5">
                    <div class="post-details-content mb-100">
                    <form role="form" method="post" autocomplete="off">
            		 <input type="hidden" name="n" value="${view.bnum}" />
                        <div class="blog-thumbnail mb-50">
                            <img src="${view.bimg}" alt="">
                            
                        </div>
                        <div class="blog-content">
                            <a href="#" class="post-tag">Healthy Food</a>
                            <h4 class="post-title">${view.bname}</h4>
                            <div class="post-meta mb-50">
                                <a href="#" class="post-date">${view.bdate}</a>
                                <a href="#" class="post-author">${view.writer}</a>
                            </div>
                            <h5 class="mb-30">Step 1</h5>
                            <p>${view.bdes}</p>
<!--                             <p class="mb-30">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac tincidunt nunc. Cras sed mollis erat. Quisque risus lorem, mattis nec nisl a, efficitur faucibus ligula. Nulla facilisi. Integer sodales, metus nec finibus lobortis, ex justo pharetra quam, vel vehicula urna turpis ut risus. Sed dignissim erat sapien, non malesuada justo cursus nec. Nunc porta pulvinar varius.</p> -->
                        </div>
                         <div class="inputArea">
                        	<c:if test="${auth.userid == view.writer}"> 
							<button type="button" id="modify_Btn" class="btn btn-warning">수정</button>
							<button type="button" id="delete_Btn" class="btn btn-danger">삭제</button>
							 </c:if> 
			
							 
								<script>
								 var formObj = $("form[role='form']");
								
								  
								  $("#modify_Btn").click(function(){
								   formObj.attr("action", "/foodblog/modify");
								   formObj.attr("method", "get")
								   formObj.submit();
								  });
								  
								  $("#delete_Btn").click(function(){    
									  var con = confirm("정말로 삭제하시겠습니까?");
									  
									  if(con) {      
									   formObj.attr("action", "/foodblog/delete");
									   formObj.submit();
									  }
									 });
								 </script>
						</div>
						</form>
                    </div>
                </div>

                <div class="col-12 col-lg-4 col-xl-4">
                    <!-- Info -->
                    <div class="recipe-info">
                        <h5>Info</h5>
                        <ul class="info-data">
                            <li><img src="/resources/img/core-img/eye.png" alt=""> <span>${view.readcount}</span></li>
                            <li><img src="/resources/img/core-img/alarm-clock.png" alt=""> <span>${view.cooktime}</span></li>
                            <li><img src="/resources/img/core-img/tray.png" alt=""> <span>${view.serving}</span></li>
                            <li><img src="/resources/img/core-img/sandwich.png" alt=""> <span>${view.difficult}</span></li>
                            <li><img src="/resources/img/core-img/compass.png" alt=""> <span>${view.temperature}</span></li>
                        </ul>
                    </div>

                     <!-- Ingredients -->
                   <!-- <div class="ingredients">
                        <h5>Ingredients</h5>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">4 Tbsp (57 gr) butter</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                            <label class="custom-control-label" for="customCheck2">2 large eggs</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                            <label class="custom-control-label" for="customCheck3">2 yogurt containers granulated sugar</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                            <label class="custom-control-label" for="customCheck4">1 vanilla or plain yogurt, 170g container</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck5">
                            <label class="custom-control-label" for="customCheck5">2 yogurt containers unbleached white flour</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck6">
                            <label class="custom-control-label" for="customCheck6">1.5 yogurt containers milk</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck7">
                            <label class="custom-control-label" for="customCheck7">1/4 tsp cinnamon</label>
                        </div>

                        Custom Checkbox
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck8">
                            <label class="custom-control-label" for="customCheck8">1 cup fresh blueberries </label>
                        </div>
                       
                    </div> -->
                </div>
                       

                <!-- Sidebar Widget -->
                 
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">

                        <!-- Single Widget Area -->
                        <div class="single-widget-area author-widget mb-30">
                            <div class="background-pattern bg-img" style="background-image: url(/resources/img/core-img/pattern2.png);">
                                <div class="author-thumbnail">
                                    <img src="/resources/img/bg-img/23.jpg" alt="">
                                </div>
                                <p>My name is <span>Jessica Smith</span>, I’m a passionate cook with a love for vegan food.</p>
                            </div>
                            <div class="social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget mb-30">
                            <img src="/resources/img/bg-img/add.png" alt="">
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area post-widget mb-30">
                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="/resources/img/bg-img/12.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Friend eggs with ham</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="/resources/img/bg-img/13.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Burger with fries</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="/resources/img/bg-img/14.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Avocado &amp; Oisters</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="/resources/img/bg-img/15.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Tortilla prawns</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="/resources/img/bg-img/16.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Burger with fries</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area newsletter-widget mb-30">
                            <h6>Subscribe to newsletter</h6>
                            <form action="#" method="post">
                                <input type="search" name="widget-search" id="widgetSearch" placeholder="E-mail">
                                <button type="submit" class="btn bueno-btn w-100">Subscribe</button>
                            </form>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 댓글 영역 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i>
				Reply
				
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">
						New Reply
					</button>
				
			</div>
			<div class="panel-body">
				<ul class="chat">
					<li class="left clearfix" data-rno='30'>
						<div>
							<div class="header">
								<strong class="primary-font">댓글러00</strong>
								<small class="pull-right text-muted">
									2020.07.15 12:14
								</small>
							</div>
							<p>Good Job!!!</p>
						</div>						
					</li>
				</ul>
			</div>
			<div class="panel-footer"><!-- 댓글 페이지 영역 -->
			
			</div>
		</div>
	</div>
</div>
<!-- 댓글 등록 모달 -->
<div class="modal" tabindex="-1" role="dialog" id="replyModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title">Reply</h5>
      </div>
      <div class="modal-body">
        <div class="form-group">
        	<label for="">댓글내용</label>
        	<input type="text" class="form-control" name="reply" value="댓글내용"/>
        </div>
        <div class="form-group">
        	<label for="">작성자</label>
        	<input type="text" class="form-control" name="replyer" value="작성자" />
        </div>
        <div class="form-group">
        	<label for="">작성일</label>
        	<input type="text" class="form-control" name="replydate" value="작성일"/>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" id="modalRegisterBtn">등록</button>
        <button type="button" class="btn btn-success" id="modalModifyBtn">수정</button>
        <button type="button" class="btn btn-danger" id="modalRemoveBtn">삭제</button>
        <button type="button" class="btn btn-primary" id="modalCloseBtn" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>        
        
    </section>
    <!-- ##### Post Details Area End ##### -->
    <%-- 페이지번호를 누르면 동작하는 폼 --%>
    <form action="boardList" id="actionForm">
    	<input type="hidden" name="bno" value="${view.bnum}"/>
		<input type="hidden" name="amount" value="${PageVO.cri.amount}"/>
		<input type="hidden" name="cateCode" value="${PageVO.cri.cateCode}"/>
	</form>




    <!-- ##### Instagram Area Start ##### -->
    <div class="instagram-feed-area d-flex flex-wrap">
        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta1.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta1.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta2.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta2.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta3.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta3.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta4.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta4.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta5.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta5.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta6.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta6.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta7.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta7.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta8.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta8.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta9.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta9.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        <!-- Single Instagram -->
        <div class="single-instagram">
            <img src="/resources/img/bg-img/insta10.jpg" alt="">
            <!-- Image Zoom -->
            <a href="/resources/img/bg-img/insta10.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>
    </div>
    <!-- ##### Instagram Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <p class="copywrite-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
    
    <script src="/resources/js/reply.js"></script>
    
    <script>
    

    $(function(){    
    	let bno = ${view.bnum};
    
    //댓글 영역 가져오기
	let replyUl = $(".chat");
	
	//댓글 영역 내용을 보여주는 함수 호출
	showList(1);
	
	//모달 영역 가져오기
	let modal = $(".modal");
	//모달 영역이 가지고 있는 input 영역 찾기
	let modalInputReply = modal.find("input[name='reply']");
	let modalInputReplyer = modal.find("input[name='replyer']");
	let modalInputReplyDate = modal.find("input[name='replydate']");
	//모달 영역이 가지고 있는 버튼 찾기
	let modalModBtn = $("#modalModifyBtn");
	let modalRemoveBtn = $("#modalRemoveBtn");
	let modalRegisterBtn = $("#modalRegisterBtn");
	
	//csrf 토큰 값 생성
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";	
	
	//ajax가 호출될 때는 무조건 이 부분이 따라가도록 설정
	/* $(document).ajaxSend(function(e,xhr,options){
		xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
	}) */
	
	
	//현재 로그인 사용자 값 가져오기
	let replyer = null;
	/* <sec:authorize access="isAuthenticated()">
	replyer = '<sec:authentication property="principal.userid"/>';
	</sec:authorize> */	
	
	$("#addReplyBtn").click(function(){
		//input 안에 들어있는 내용 없애주기
		modal.find("input").val("");
		
		//현재 로그인한 사용자 replyer 에 보여주기
		modalInputReplyer.val(replyer).attr("readonly","readonly");
		
		
		//작성날짜 영역 없애기
		modalInputReplyDate.closest("div").hide();
		// 닫기 버튼만 제외하고 모든 버튼을 숨기기
		modal.find("button[id!='modalCloseBtn']").hide();
		// 등록 버튼 다시 보이기
		modalRegisterBtn.show();
		
		modal.modal("show");
	})
	
	
	//댓글 작업 호출
	//댓글 등록하기
	// on("click", ~~~) : click 과 같은 역할인데, 동적 바인딩 기능이 추가됨
	//                    여러 이벤트를 동시에 추가할 수 있음
	
	//댓글 페이지 나누기로 추가
	let pageNum = 1;
	
	modalRegisterBtn.on("click",function(){
		
		var reply = {
				bno:bno,
				replyer: modalInputReplyer.val(),
				reply:modalInputReply.val()
		};		
		
		replyService.add(reply,function(result){
					alert(result);
					//modal 에 있은 댓글 내용과 관련된 내용 지우기
					modal.find("input").val("");
					//모달 창 종료
					modal.modal("hide");
					//전체 댓글 리스트 보기
					// -1 로 변경해서 맨 마지막 페이지를 보여주기
					showList(-1);
					
		});  //add 종료
		
	})
	
	
	//댓글 리스트 요청하기
function showList(page){
		
		replyService.getList({bno:bno,page:page},function(total,list){
			console.log(list); 
			
			if(page == -1){
				pageNum = Math.ceil(total / 10.0);
				showList(pageNum);
				return;
			}			
			
			if(list === null || list.length === 0){
				replyUl.html("");
				return;
			}
			
			let str = "";
			for(var i = 0,len=list.length||0;i<len;i++){
				str += "<li class='left clearfix' data-rno='"+list[i].rno+"'>";
				str += "<div><div class='header'>";
				str += "<strong class='primary-font'>"+list[i].replyer+"</strong>";
				str += "<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replydate)+"</small>";
				str += "</div><p>"+list[i].reply+"</p></div></li>";				
			}
			replyUl.html(str);
			showReplyPage(total);
		}) // getList 종료
	}
	
	//댓글 페이지 영역 가져오기
	let replyPageFooter = $(".panel-footer");
	
	function showReplyPage(total){
		
		//마지막 페이지 계산
		let endPage = Math.ceil(pageNum/10.0)*10;
		//시작 페이지 계산
		let startPage = endPage - 9;
		//이전버튼
		let prev = startPage != 1;
		//다음 버튼
		let next = false;
		
		//실제 마지막 페이지 계산
		if(endPage * 10 >= total){
			endPage = Math.ceil(total/10.0);
		}
		if(endPage * 10 < total){
			next = true;
		}
		
		//디자인 작성후 댓글 페이지 영역에 보여주기
		let str = "<ul class='pagination pull-right'>";
		if(prev){
			str += "<li class='page-item'><a class='page-link'";
			str += " href='"+(startPage - 1)+"'>Prev</a></li>";
		}
		for(var i = startPage; i<= endPage; i++){
			let active = pageNum == i ? "active":""; //pageNum = "2"
			str += "<li class='page-item "+active+"'>";
			str += "<a class='page-link' href='"+i+"'>"+i;
			str += "</a></li>";
		}
		if(next){
			str += "<li class='page-item'><a class='page-link'";
			str += " href='"+(endPage + 1)+"'>Next</a></li>";
		}
		str += "</ul></div>";
		replyPageFooter.html(str);
	}
	
	// 댓글 페이지 번호를 누르면 실행되는 스크립트
	replyPageFooter.on("click","li a",function(e){
		//href 때문에 움직이는 이벤트 제거
		e.preventDefault();
		
		pageNum = $(this).attr("href");
		showList(pageNum);
	})
	
	
	
	//$("#modalRemoveBtn").click(function())
	$(modalRemoveBtn).on("click",function(){		
		//댓글 삭제 버튼이 눌러지면 로그인 여부 확인하기
		if(!replyer){
			alert('로그인 후 삭제가 가능합니다.');
			modal.modal("hide");
			return;
		}
		//현재 모달창에 보이는 사용자와 로그인 사용자가 같은지 확인하기
		let originReplyer = modalInputReplyer.val();
		if(originReplyer != replyer){
			alert("자신의 댓글만 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}			
		//댓글 삭제  
		replyService.remove(modal.data("rno"),replyer,
				function(result){ 
					alert(result);
					//모달 창 종료
					modal.modal("hide");
					//전체 댓글 리스트 보기
					// showList(1);  페이지 나누기 전
					showList(pageNum); //페이지 나누기 후 : 현재 보던 페이지
				},
				function(msg){ 
					alert("삭제 실패");
		}) //remove 종료
	})
	
	//댓글 수정	
	$(modalModBtn).on("click",function(){
		//댓글 수정 버튼이 눌러지면 로그인 여부 확인하기
		if(!replyer){
			alert('로그인 후 수정이 가능합니다.');
			modal.modal("hide");
			return;
		}
		//현재 모달창에 보이는 사용자와 로그인 사용자가 같은지 확인하기
		let originReplyer = modalInputReplyer.val();
		if(originReplyer != replyer){
			alert("자신의 댓글만 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}			
		
		let reply = {
				rno:modal.data("rno"),
				reply:modalInputReply.val(),
				replyer : modalInputReplyer.val()
		}
		
		replyService.update(reply,function(result){
							alert(result);
							//모달 창 종료
							modal.modal("hide");
							//전체 댓글 리스트 보기
							// showList(1);  페이지 나누기 전
							showList(pageNum); //페이지 나누기 후 : 현재 보던 페이지
						},function(error){
							alert("수정 실패");
			
		})   //update 종료
	})
	
	// 댓글 하나 가져오기
	// 실제로는 li에 이벤트를 걸어야 하지만 댓글이 나중에 생기는 
	// 부분이기 때문에 존재하는 영역에 댓글을 걸고 나중에 생기는
	// li 태그에 위임하는 방식으로 작성
	$(".chat").on("click","li",function(){
		
		//현재 클릭된 댓글의 rno 가져오기
		var rno = $(this).data("rno");		
		
		replyService.get(rno,
				function(result){
						console.log(result);
						//도착한 데이터 모달창에 보여주기
						modalInputReply.val(result.reply);
						modalInputReplyer.val(result.replyer);
						modalInputReplyDate.val(replyService.displayTime(result.replydate))
						                   .attr("readonly","readonly");
						//현재 읽어온 rno 담아주기
						modal.data("rno",result.rno);
						
						//작성날짜 영역 보여주기
						modalInputReplyDate.closest("div").show();
						modal.find("button").show();
						modal.find("button[id='modalRegisterBtn']").hide();
						
						modal.modal("show");
						
						},function(error){
							alert("데이터 없음");
			
		})  //get 종료
		
	})

    })
     </script>
    
</body>

</html>