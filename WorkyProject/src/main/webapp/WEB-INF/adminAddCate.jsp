<%@ page language="java" contentType="text/html; charset=utf-8"
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
<title>Home</title>
<!-- Bootstrap stylesheet -->
<link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet">
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900" rel="stylesheet"> 
<!-- stylesheet -->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<link href="css/style_orange.css" title="style_orange" rel="alternate stylesheet" type="text/css"/>
<link href="css/style_blue.css" title="style_blue" rel="alternate stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" type="text/css"/>
<link href="css/ele-style.css" rel="stylesheet" type="text/css"/>
<!-- font-awesome -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- line-awesome -->
<link href="line-awesome/css/line-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- crousel css -->
<link href="js/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css" />
<!--bootstrap select-->
<link href="js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
<style>
	.deletee {
		color: red;
		text-decoration: underline;
	}
	article {
		width: 600px;
		margin: auto;
	}
	section {
		width: 300px;
		margin: auto;
	}
</style>
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
									<li><a href="javascript:;"><img src="images/profile.jpg" alt="english" title="english" /> Dashboard</a></li>
									<li><a href="javascript:;"><img src="images/profile.jpg" alt="english" title="english" /> My Service</a></li>
									<li><a href="javascript:;"><img src="images/profile.jpg" alt="english" title="english" /> Reviews</a></li>
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
							<!-- <div class="dropdown-menu">
								<div class="dropdown-inner">
									<ul class="list-unstyled">
										<li><a href="index.html">Homepage</a></li>
									</ul>
								</div>
							</div> -->
						</li>
						<li><a href="/about">About</a></li>
						<li><a href="/all_services">All Services</a>
							<!-- <div class="dropdown-menu">
								<div class="dropdown-inner">
									<ul class="list-unstyled">
										<li><a href="blog.html">Our Blog</a></li>
										<li><a href="blogdetail.html">Blog Detail</a></li>
									</ul>
								</div>
							</div> -->
						</li>
						<!-- <li><a href="contactus.html">Contact</a></li> -->
						<c:if test="${session != null}">
							<li><a href="/profile">Dashboard</a>
						
							<!-- <div class="dropdown-menu">
								<div class="dropdown-inner">
									<ul class="list-unstyled">
										<li><a href="faq.html">FAQ</a></li>
										<li><a href="dashboard.html">Dashboard</a></li>
										<li><a href="price_plan.html">Pricing Plans</a></li>
										<li><a href="all_ads.html"> All Ads</a></li>
										<li><a href="ads_single_view.html">Ads Single View</a></li>
									</ul>
								</div>
							</div> -->
						</li>
						</c:if>
						<!-- <li><a href="terms_and_conditions.html">Term & Conditions</a></li> -->
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
					<a href="/"><img src="images/logo.png" alt="logo" title="logo" /></a>
				</div>
			</div>
				
			<div class="col-md-7 col-sm-7 col-xs-12">
				<form class="form-horizontal category" method="post" action="/selectCate">
					<div class="row">
						<!-- <div class="col-sm-3 paddright">
							<div class="form-group">
								<select class="selectpicker form-control bs-select-hidden" name="location">
									<option value="1">Select City</option>
									<option value="0">Ludhiana</option>
									<option value="0">Jalandhar</option>
									<option value="0">Moga</option>
									<option value="0">Ambala</option>
									<option value="0">Amritsar</option>
									<option value="0">Delhi</option>
								</select>
							</div>
						</div> -->
						<div class="col-sm-3 paddright">
							<div class="form-group">
								<select class="selectpicker form-control bs-select-hidden" name="category" required>
									<option value="Select Category" selected>Select Category</option>
									<c:forEach items="${categories}" var="c">
										<option value="${c.id}"> <c:out value="${c.name}"></c:out> </option>
									</c:forEach>
									<!-- <option value="0">Mobiles</option> -->
									<!-- <option value="0">Electonics</option>
									<option value="0">Real Estate</option>
									<option value="0">Fashion</option>
									<option value="0">Furniture</option>
									<option value="0">Jobs</option>
									<option value="0">Services</option>
									<option value="0">Pets</option>
									<option value="0">Education</option>
									<option value="0">Matrimony</option>
									<option value="0">Note and Coins</option> -->
								</select>
							</div>
						</div>
						<div class="col-sm-6 search">
							<div class="form-group">
								<input name="searsh" value="" class="form-control" placeholder="Enter Keyword" type="text">
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
<div class="topimage">
	<img src="images/bck_bg.jpg" class="img-fluid" alt="image" title="image" />
</div>
<div class="bread-crumb">
	<div class="container">
		<div class="matter">
			<div class="pull-left">
				<ul class="list-inline">
					<li><a href="/">Home</a></li>
					<li><a href="/admin">Admin</a></li>
				</ul>
			</div>
			<div class="pull-right">
				<h2>Admin</h2>
			</div>
		</div>
	</div>
</div>
<!-- breadcrumb end here -->


<section>
<h2>Add Category</h2>
	<form:form method="POST" action="/addc" modelAttribute="cate">
		<div class="form-group">
	<form:label path="name">Name</form:label>
	<form:errors path="name"></form:errors>
	<form:input path="name" class="form-control" placeholder="Name" required="true"></form:input>
	</div>
	<br />
	<div class="form-group">
	<form:label path="img">Photo</form:label>
	<form:errors path="img"></form:errors>
	<form:input path="img" class="form-control" placeholder="img" required="true"></form:input>
	</div>

	<br />
	<input type="submit" value="Create Category" class="btn btn-primary"/>
	</form:form>
	<br><br>
</section>
<!-- <section>
	<h2>Edit</h2>
		<form:form method="POST" action="/addc" modelAttribute="cate">
			<div class="form-group">
		<form:label path="name">Name</form:label>
		<form:errors path="name"></form:errors>
		<form:input path="name" class="form-control" placeholder="Name" required="true"></form:input>
		</div>
		<br />
		<div class="form-group">
		<form:label path="img">Photo</form:label>
		<form:errors path="img"></form:errors>
		<form:input path="img" class="form-control" placeholder="img" required="true"></form:input>
		</div>
	
		<br />
		<input type="submit" value="Create Category" class="btn btn-primary"/>
		</form:form>
		<br><br>
	</section> -->
<article>
		<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">img</th>
		  <th scope="col">Action</th>
	    </tr>
	  </thead>
	  	<tbody>
	  		<c:forEach items="${categories}" var="c">
				<tr>
				<th> <c:out value="${c.id}"></c:out> </th>
				<td> <c:out value="${c.name}"></c:out> </td>
				<td> <c:out value="${c.img}"></c:out> </td>
				<td> <a href="/deleteCategory/${c.id}" class="deletee">Delete</a> </td>
				</tr>
	    	</c:forEach>
		</tbody>
	</table>
	</article>
<br><br><br><br>

<!-- footer start here -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12 matter">
                <img src="images/logo.png" alt="logo" title="logo" />
                <p>Due to the covid-19 pandemic, many people either have lost their jobs or are now working from home. Using the US job market as reference, nearly third of the US workforce has done freelance work at some point in their career and based on studies 43% of the working US population will turn to freelance work over the next few years. In worky, we aim to help the Palestinian market by introducing a freelancing and services searching website. We see that adopting the US experience in Palestine will help the economy and the Palestinians who are searching for an alternate way of income.</p>
				
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
					<p>© 2017 <span>Worky AMA</span>. All rights reserved. Theme by <span>TMD Studio</span></p>
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
