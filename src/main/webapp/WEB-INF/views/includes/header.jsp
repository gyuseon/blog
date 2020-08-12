<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Bueno - Food Blog HTML Template</title>
   <!--  
	 jQuery-2.2.4 js
  	<script src="/resources/js/jquery/jquery-2.2.4.min.js"></script>
 	Popper js
    <script src="/resources/js/bootstrap/popper.min.js"></script>
    Bootstrap js
    <script src="/resources/js/bootstrap/bootstrap.min.js"></script> 
    All Plugins js
    <script src="/resources/js/plugins/plugins.js"></script>
  	Active js
    <script src="/resources/js/active.js"></script>  --> 
   
    

    <!-- Favicon -->
    <!-- <link rel="icon" href="/resources/img/core-img/favicon.ico"> -->

	<script src="/resources/ckeditor/ckeditor.js"></script>
    
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
                                    <li><a href="/foodblog/index">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="/foodblog/index">Home</a></li>
                                            <li><a href="catagory.html">Catagory</a></li>
                                            <li><a href="catagory-post.html">Catagory Post</a></li>
                                            <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="receipe.html">Recipe</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Recipes</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="/foodblog/category?c=100&l=2">- 인스턴트</a></li>
                                                <li><a href="/foodblog/category?c=101&l=2">- 햄버거</a></li>
                                                <li><a href="/foodblog/category?c=102&l=2">- 피자</a></li>
                                                <li><a href="/foodblog/category?c=103&l=2">- 소세지</a></li>
                                                <li><a href="/foodblog/category?c=100&l=2">- Fastfood</a></li>
                                                <li><a href="/foodblog/category?c=100&l=2">- Salad</a></li>
                                                <li><a href="/foodblog/category?c=100&l=2">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
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