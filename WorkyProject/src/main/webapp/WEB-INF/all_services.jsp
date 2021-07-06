<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>All Ads</title>
<!-- Bootstrap stylesheet -->
<link href="/bootstrap4/css/bootstrap.min.css" rel="stylesheet">
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900" rel="stylesheet"> 
<!-- stylesheet -->
<link href="/css/style.css" rel="stylesheet" type="text/css"/>
<link href="/css/style_orange.css" title="style_orange" rel="alternate stylesheet" type="text/css"/>
<link href="/css/style_blue.css" title="style_blue" rel="alternate stylesheet" type="text/css"/>
<link href="/css/responsive.css" rel="stylesheet" type="text/css"/>
<link href="/css/ele-style.css" rel="stylesheet" type="text/css"/>
<!-- font-awesome -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- line-awesome -->
<link href="/line-awesome/css/line-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- crousel css -->
<link href="/js/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css" />
<!--bootstrap select-->
<link href="/js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--top start here -->
<div class="top">
	<div class="container">
		<div class="row">
			<div class="col-sm-5 col-xs-12">
				<ul class="list-inline icon">
					<li>
						<!--language code start here-->
						<c:if test="${session != null}">
						<form  method="post" enctype="multipart/form-data" id="language">
							<div class="btn-group">
								<button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
									<span class="text"><i class="la la-language"></i>Profile</span> <i class="la la-caret-down"></i>
								</button>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a href="javascript:;"><img src="/images/profile.jpg" alt="english" title="english" /> Dashboard</a></li>
									<li><a href="javascript:;"><img src="/images/profile.jpg" alt="english" title="english" /> My Service</a></li>
									<li><a href="javascript:;"><img src="/images/profile.jpg" alt="english" title="english" /> Reviews</a></li>
								</ul>
							</div>
						</form>
						</c:if>
						<!--language code end here-->
					</li>
					<li><a href="/login"><i class="la la-plus-square"></i> <span>Login</span></a></li>
					<li><a href="/register"><i class="la la-key"></i> <span>Register</span></a></li>
				</ul>
			</div>
			<div class="col-md-7 col-sm-7 col-xs-12">
				<div class="topnav responsive" id="myTopnav">
					<ul class="list-inline">
						<li><a href="/">Home</a>
						</li>
						<li><a href="/about">About</a></li>
						<li ><a href="/all_services">All Services</a>
						<c:if test="${session != null}">
							<li><a href="/profile">Dashboard</a>
						</li>
						</c:if>
						<li><a href="javascript:void(0);" class="icons" onclick="myFunction()">&#9776;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!--top end here -->

<!-- header start here-->
<header>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-12">
				<div id="logo">
					<a href="/"><img src="/images/logo.png" alt="logo" title="logo" /></a>
				</div>
			</div>
				
			<div class="col-md-7 col-sm-7 col-xs-12">
				<form class="form-horizontal category" method="post" action="/selectCate">
					<div class="row">
						<div class="col-sm-3 paddright">
							<div class="form-group">
								<select class="selectpicker form-control bs-select-hidden" name="category" required>
									<option value="Select Category" selected>Select Category</option>
									<c:forEach items="${categories}" var="c">
										<option value="${c.id}"> <c:out value="${c.name}"></c:out> </option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="col-sm-6 search">
							<div class="form-group">
								<input name="s" value="" class="form-control" placeholder="Enter Keyword" type="text">
								<button type="submit" value="submit" class="btn"><i class="icon_search" aria-hidden="true"></i></button>
							</div>
						</div>
                    </div>
				</form>
			</div>
			<div class="col-md-2 col-sm-2 col-xs-12 center">
				<button class="btn-primary btn-block" type="button" onclick="location.href='/add_service'"> <i class="la la-edit"></i>Add Service</button>
			</div>
		</div>
	</div>
</header>
<!-- header end here -->

<!-- breadcrumb end here -->
<div class="bread-crumb">
	<div class="container">
		<div class="matter">
			<div class="pull-left">
				<ul class="list-inline">
					<li><a href="/">Home</a></li>
					<li><a href="/all_services">All Services</a></li>
				</ul>
			</div>
			<div class="pull-right">
				<h2>All Services</h2>
			</div>
		</div>
	</div>
</div>
<!-- breadcrumb end here -->


<!-- content start here -->
<div class="maincategory1">
	<div class="container"> 
		<div class="row">
			<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
				<div class="left">
					<div class="category">
						<h1>Categories</h1>
						<ul class="list-unstyled">
							<c:forEach items="${categories}" var="c">
								<li><a href="/all_services/${c.id}"><img src="/images/blog/${c.img}.png" class="img-fluid" alt="image" title="image"> <c:out value="${c.name}"></c:out> </a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-10 col-sm-9 col-md-9 padd0 col-xs-12 catebox">
				<div class="row">

					<c:forEach items="${services}" var="s">
						<div class="product-layout product-grid col-lg-3 col-md-4 col-sm-6 col-xs-12 cols">
							<div class="product-thumb">
								<div class="image">
									<a href="ads_single_view.html"><img src="images/vehicle/01.jpg" alt="image" title="image" class="img-fluid"></a>
									<div class="onhover">$ <c:out value="${s.price}"></c:out> </div>
								</div>
								<div class="caption">
									<h4><a href="/this_service/${s.id}"> <c:out value="${s.name}"></c:out> </a></h4>
									<p class="des">Category : <c:out value="${s.category.name}"></c:out> </p>
									<ul class="list-unstyled">
										<li><i class="la la-map-marker"></i> <c:out value="${s.creator.city}"></c:out> </li>
										<li><i class="la la-clock-o"></i> <c:out value="${s.createdAt.toString() }"></c:out> </li>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>
						</div>
					</div>	
					
					<div class="text-center icon">
						<i class="la la-spinner fa-spin"></i>
					</div>
			</div>
		</div>
	</div>
<!-- content end here -->


<!-- footer start here -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12 matter">
                <img src="images/logo.png" alt="logo" title="logo" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc est justo, aliquam nec tempor fermentum, commodo et libero. Quisque et rutrum arcu. Vivamus dictum tincidunt magna id euismod. Nam sollicitudin mi quis orci lobortis feugiat.</p>
				
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 info">
                <h5>Usefull Links</h5>
				<ul class="list-inline links">
                    <li><a href="/">Home</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/all_services">Services</a></li>
                    <li><a href="/login">Login</a></li>
                    <li><a href="/register">Register</a></li>	
                    <li><a href="add_service">Add Service</a></li>
                </ul>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <h5>Contact with us</h5>
				<ul class="list-inline social">
                    <li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="https://plus.google.com/" target="_blank"><i class="social_googleplus" aria-hidden="true"></i></a></li>
                    <li><a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="https://www.youtube.com/" target="_blank"><i class="social_youtube"></i></a></li>
                    <li><a href="https://in.linkedin.com/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
	<div class="powered">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-xs-12 text-center">
					<p>© 2017 <span>Classifiedspot</span>. All rights reserved. Theme by <span>TMD Studio</span></p>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- footer end here -->
		
<!-- jquery -->
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- bootstrap js -->
<script src="js/popper.min.js" type="text/javascript"></script>
<script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
<!--bootstrap select-->
<script src="js/dist/js/bootstrap-select.js"></script>
<!-- owlcarousel js -->
<script src="js/holder.min.js" type="text/javascript"></script>
<script src="js/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<!--internal js-->
<script src="js/owlinternal.js"></script>
<script src="js/internal.js"></script>
<script src="js/switcher.js"></script>
</body>
</html>
