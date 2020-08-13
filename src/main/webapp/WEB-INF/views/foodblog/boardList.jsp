<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Bueno - Food Blog HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/resources/style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-content">
            <h3>Cooking in progress..</h3>
            <div id="cooking">
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div id="area">
                    <div id="sides">
                        <div id="pan"></div>
                        <div id="handle"></div>
                    </div>
                    <div id="pancake">
                        <div id="pastry"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area bg-img bg-overlay" style="background-image: url(/resources/img/bg-img/header.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <div class="col-12 col-sm-6">
                        <!-- Top Social Info -->
                        <div class="top-social-info">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                        <!-- Top Search Area -->
                        <div class="top-search-area">
                            <form action="#" method="post">
                                <input type="search" name="top-search" id="topSearch" placeholder="Search">
                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area">
            <a href="/"><img src="/resources/img/core-img/logo.png" alt=""></a>
        </div>

        <!-- Navbar Area -->
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="buenoNav">

                        <!-- Toggler -->
                        <div id="toggler"><img src="/resources/img/core-img/toggler.png" alt=""></div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="catagory.html">Catagory</a></li>
                                            <li><a href="boardList">boardList</a></li>
                                            <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="receipe.html">Recipe</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Recipes</a>
                                        <div class="megamenu">
                                             <ul class="single-mega cn-col-4">
                                                <li><a href="/foodblog/category?c=100&l=1">- 전체(인스턴트)</a></li>
                                                <li><a href="/foodblog/category?c=101&l=2">- 햄버거</a></li>
                                                <li><a href="/foodblog/category?c=102&l=2">- 피자</a></li>
                                                <li><a href="/foodblog/category?c=103&l=2">- 소세지</a></li>
                                                <li><a href="/foodblog/category?c=104&l=2">- 라면</a></li>
                                                <li><a href="/foodblog/category?c=105&l=2">- 떡볶이</a></li>
                                                <li><a href="/foodblog/category?c=106&l=2">- 치킨</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="/foodblog/category?c=200&l=1">- 전체(파스타)</a></li>
                                                <li><a href="/foodblog/category?c=201&l=2">- 까르보나라</a></li>
                                                <li><a href="/foodblog/category?c=202&l=2">- 토마토</a></li>
                                                <li><a href="/foodblog/category?c=203&l=2">- 알레 본골레</a></li>
                                                <li><a href="/foodblog/category?c=204&l=2">- 오일</a></li>
                                                <li><a href="/foodblog/category?c=205&l=2">- 크림</a></li>
                                                <li><a href="/foodblog/category?c=206&l=2">- 명란젓</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="/foodblog/category?c=300&l=1">- 전체(한식)</a></li>
                                                <li><a href="/foodblog/category?c=301&l=2">- 밥/죽/떡</a></li>
                                                <li><a href="/foodblog/category?c=302&l=2">- 찌개/국/탕</a></li>
                                                <li><a href="/foodblog/category?c=303&l=2">- 볶음/무침/구이</a></li>
                                                <li><a href="/foodblog/category?c=304&l=2">- 김치/젓갈</a></li>
                                                <li><a href="/foodblog/category?c=305&l=2">- 차</a></li>
                                                <li><a href="/foodblog/category?c=306&l=2">- 간식</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="/foodblog/category?c=400&l=1">- 전체(고기)</a></li>
                                                <li><a href="/foodblog/category?c=401&l=2">- 소고기</a></li>
                                                <li><a href="/foodblog/category?c=402&l=2">- 돼지고기</a></li>
                                                <li><a href="/foodblog/category?c=403&l=2">- 양고기</a></li>
                                                <li><a href="/foodblog/category?c=404&l=2">- 흑염소</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="single-post.html">Blog</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>

                                <!-- Login/Register -->
                                <div class="login-area">
                                <ul>
                                     <c:if test="${auth==null}">  
										  <a  href="/foodblog/login" >Login /</a>
										  <a  href="/foodblog/register" >Register</a>
									 </c:if>
									
                                    
									 <c:if test="${auth!=null}">
									   <a  href="/foodblog/board2" >Write /</a>
										  <a  href="/foodblog/logout" >Logout /</a>
										    <li><a href="#">Modify</a>
                                        		<ul class="dropdown">
										 			 <a  href="/foodblog/changePwd" >Password </a>
										 			 <a  href="/foodblog/leave">Leave</a>
                                        		</ul>
                                   			</li>
									 </c:if>
                                </ul>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
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

    <!-- ##### Catagory Post Area Start ##### -->
    <div class="catagory-post-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <!-- Single Blog Post -->
                        <c:forEach var ="list" items = "${list }" >
                         
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <img src="${list.thumbimg}" alt="">
                            
                        </div>
                        <!-- Blog Content -->
                        <div class="blog-content">
                            <a href="/foodblog/recipe?n=${list.bnum}" class="post-title">${list.bname}</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">${list.bdate}</a>
                                <a href="#" class="post-author">${list.writer}</a>
                            </div>
                            <p>${list.title}</p>
                        </div>
                    </div>
                    </c:forEach>
							
                    <!-- Single Blog Post -->
                    <!-- <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="/resources/img/bg-img/10.jpg" alt="">
                        </div>
                        Blog Content
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best</a>
                            <a href="#" class="post-title">Mushrooms with pork chop</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">July 11, 2018</a>
                                <a href="#" class="post-author">By Julia Stiles</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus.</p>
                        </div>
                    </div>

                    Single Blog Post
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="/resources/img/bg-img/11.jpg" alt="">
                        </div>
                        Blog Content
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best</a>
                            <a href="#" class="post-title">Birthday cake with chocolate</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">July 11, 2018</a>
                                <a href="#" class="post-author">By Julia Stiles</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus.</p>
                        </div>
                    </div>

                    Single Blog Post
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="/resources/img/bg-img/9.jpg" alt="">
                        </div>
                        Blog Content
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best</a>
                            <a href="#" class="post-title">Friend eggs with ham</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">July 11, 2018</a>
                                <a href="#" class="post-author">By Julia Stiles</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus.</p>
                        </div>
                    </div>

                    Single Blog Post
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="/resources/img/bg-img/10.jpg" alt="">
                        </div>
                        Blog Content
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best</a>
                            <a href="#" class="post-title">Mushrooms with pork chop</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">July 11, 2018</a>
                                <a href="#" class="post-author">By Julia Stiles</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus.</p>
                        </div>
                    </div>

                    Single Blog Post
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="/resources/img/bg-img/11.jpg" alt="">
                        </div>
                        Blog Content
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best</a>
                            <a href="#" class="post-title">Birthday cake with chocolate</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">July 11, 2018</a>
                                <a href="#" class="post-author">By Julia Stiles</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus.</p>
                        </div>
                    </div> -->
                </div>

                <!-- Sidebar Area -->
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
            <div class="row">
                <div class="col-12">
                    <div class="pagination-area mt-70">
                        <nav aria-label="Page navigation example">
                        <div class="text-center">
                             <ul class="pagination">
                            	<c:if test="${PageVO.prev}">
                                <li class="page-item"><a class="page-link" href="${PageVO.startPage-1}">Previous</a></li>
                                </c:if>
                                <c:forEach var="idx" begin="${PageVO.startPage}" end="${PageVO.endPage}">
                                <li class="page-item ${PageVO.cri.pageNum==idx?'active':''}"><a class="page-link" href="${idx}">${idx}</a></li>
                                </c:forEach>
                                <c:if test="${PageVO.next}">
                                <li class="page-item"><a class="page-link" href="${PageVO.endPage+1}">Next</a></li>
                                </c:if>
                            </ul> 
                          </div> 
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- 페이지번호를 누르면 동작하는 폼 --%>
    <form action="boardList" id="actionForm">
	<input type="hidden" name="pageNum" value="${PageVO.cri.pageNum}"/>
	<input type="hidden" name="amount" value="${PageVO.cri.amount}"/>
	</form>
    <!-- ##### Catagory Post Area End ##### -->

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
 })
    </script>
</body>

</html>