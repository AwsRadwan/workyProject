<%--
  Created by IntelliJ IDEA.
  User: Hatsune Miku
  Date: 7/6/2021
  Time: 12:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IEl=edge">
    <title>Dashboard Favourite Ads</title>
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
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- line-awesome -->
    <link href="line-awesome/css/line-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- crousel css -->
    <link href="js/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
    <!--bootstrap select-->
    <link href="js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css"/>
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
                        <c:if test="${ userid != null}">
                        <form method="post" enctype="multipart/form-data" id="language">
                            <div class="btn-group">
                                <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                    <span class="text"><i class="la la-language"></i>Profile</span> <i
                                        class="la la-caret-down"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="javascript:;"><img src="images/profile.jpg" alt="english"
                                                                    title="english"/> Dashboard</a></li>
                                    <li><a href="javascript:;"><img src="images/profile.jpg" alt="english"
                                                                    title="english"/> My Service</a></li>
                                    <li><a href="javascript:;"><img src="images/profile.jpg" alt="english"
                                                                    title="english"/> Reviews</a></li>
                                </ul>
                            </div>
                        </form>
                    <li><a href="/logout"><i class="la la-plus-square"></i> <span>Logout</span></a></li>
                    </c:if>
                    <!--language code end here-->
                    </li>
                    <c:if test="${userid == null}">
                        <li><a href="/login"><i class="la la-plus-square"></i> <span>Login</span></a></li>
                        <li><a href="/registration"><i class="la la-key"></i> <span>Register</span></a></li>
                    </c:if>

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
                        <c:if test="${userid != null}">
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
                    <a href="/"><img class="img-fluid logochange" src="images/logo.png" alt="logo" title="logo"/></a>
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
                                        <option value="${c.id}"><c:out value="${c.name}"></c:out></option>
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
                                <input name="searsh" value="" class="form-control" placeholder="Enter Keyword"
                                       type="text">
                                <button type="submit" value="submit" class="btn"><i class="icon_search"
                                                                                    aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-12 center">
                <button class="btn-primary btn-block" type="button" onclick="location.href='/add_service'"><i
                        class="la la-edit"></i>Add Service
                </button>
            </div>
        </div>
    </div>
</header>
<!-- header end here -->


<!-- ad-single start here -->
<div class="commontop">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-xs-12">
                <div class="dashboard">
                    <div class="profile">
                        <div class="col-sm-3 col-xs-12">
                            <img class="img-fluid" src="images/dashboard/dp.png" alt="image" title="image">
                        </div>
                        <div class="col-sm-9 col-xs-12 padd0">
                            <h4>${user.firstName.toUpperCase()} ${user.lastName.toUpperCase()}</h4>
                            <div class="common">
                                <p class="des"><i class="la la-map-marker"></i> ${user.city}</p>
                                <p class="des1">Created Account At: ${user.createdAt.toLocaleString()}</p>
                            </div>
                            <ul class="list-inline">
                                <li><a href="/profile"><img src="images/dashboard/grid.png"
                                                            alt="image" title="image"/>
                                    <p>Dashboard</p></a></li>
                                <li><a href="/dashboardmyservices"><img src="images/dashboard/card.png"
                                                                        alt="image"
                                                                        title="image"/>
                                    <p>My Services</p></a></li>
                                <li><a href="/requestedservices"><img src="images/dashboard/search.png"
                                                                      alt="image" title="image"/>
                                    <p>Requested Services</p></a></li>
                                <li><a href="/dashboardmessages"><img src="images/dashboard/message.png" alt="image"
                                                                      title="image"/>
                                    <p>Messages</p></a></li>
                                <li class="active"><a href="/dashboardsettings"><img src="images/dashboard/setting.png"
                                                                                     alt="image"
                                                                                     title="image"/>
                                    <p>Settings</p></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="inner-setting">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default active">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><h4
                                            class="panel-title">Contact Details <i class="fa fa-angle-right"
                                                                                   aria-hidden="true"></i></h4>
                                    </a>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-sm-4"></div>
                                            <div class="col-sm-4">
                                                <form:form modelAttribute="usertoupdate"
                                                           class="form-horizontal"
                                                           method="post"
                                                           action="/dbupdatecontact">

                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <form:input
                                                                    path="firstName"
                                                                    name="fname" value="" id="input-fname"
                                                                    class="form-control" placeholder="First Name"
                                                                    type="text"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <form:input
                                                                    path="lastName"
                                                                    name="lname" value="" id="input-lname"
                                                                    class="form-control" placeholder="Last Name"
                                                                    type="text"/>
                                                        </div>
                                                    </div>


                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <form:select
                                                                    path="city"
                                                                    class="selectpicker form-control bs-select-hidden"
                                                                    name="location">
                                                                <option value="1">City</option>
                                                                <option value="0">Punjab</option>
                                                                <option value="0">Haryana</option>
                                                            </form:select>
                                                        </div>
                                                    </div>


                                                    <div class="buttons">
                                                        <input class="btn btn-primary" value="Save" type="submit">
                                                    </div>
                                                </form:form>
                                            </div>
                                            <div class="col-sm-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"><h4
                                            class="panel-title"> Phone Number <i class="fa fa-angle-right"
                                                                                 aria-hidden="true"></i></h4>
                                    </a>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-sm-4"></div>
                                            <div class="col-sm-4">
                                                <form:form class="form-horizontal" method="post"
                                                           action="/dbupdatecontact" modelAttribute="usertoupdate">
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <form:input path="phoneNumber" name="phone" value=""
                                                                        id="input-phone"
                                                                        class="form-control"
                                                                        placeholder="Enter Phone Number"
                                                                        type="text"/>
                                                        </div>
                                                    </div>
                                                    <div class="buttons">
                                                        <input class="btn btn-primary" value="Save" type="submit">
                                                    </div>
                                                </form:form>
                                            </div>
                                            <div class="col-sm-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3"><h4
                                            class="panel-title">Change Password <i class="fa fa-angle-right"
                                                                                   aria-hidden="true"></i>
                                    </h4></a>
                                </div>
                                <div id="collapse3" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-sm-4"></div>
                                            <div class="col-sm-4">
                                                <form class="form-horizontal" method="post">
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <input name="password" value="" id="input-password"
                                                                   class="form-control" placeholder="Enter old password"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <input name="password1" value="" id="input-password1"
                                                                   class="form-control" placeholder="Enter new password"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <input name="password2" value="" id="input-password2"
                                                                   class="form-control" placeholder="Repeat password"
                                                                   type="text">
                                                        </div>
                                                    </div>
                                                    <div class="buttons">
                                                        <input class="btn btn-primary" value="Save" type="submit">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="col-sm-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5"><h4
                                            class="panel-title">Email Notification <i class="fa fa-angle-right"
                                                                                      aria-hidden="true"></i></h4></a>
                                </div>
                                <div id="collapse5" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form class="form-horizontal" method="post">
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <div class="checked">
                                                        <div class="check">
                                                            <input type="checkbox" name="credit" class="checkclass"/>Yes,
                                                            I want to receive newsletter.
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                Nam pretium dictum diam vel laoreet. Pellentesque
                                                                habitant morbi tristique senectus et netus et malesuada
                                                                fames ac turpis egestas. Integer dictum justo nec lacus
                                                                porta congue. Phasellus convallis ut urna a lobortis.
                                                                Vestibulum bibendum quam ligula, ac fringilla mi
                                                                efficitur sed.</p>
                                                        </div>
                                                        <div class="check">
                                                            <input type="checkbox" name="credit" class="checkclass"/>Yes,
                                                            I want to receive email notification of messages.
                                                        </div>
                                                        <div class="check">
                                                            <input type="checkbox" name="credit" class="checkclass"/>Yes,
                                                            I want to receive email alerts about new listing.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buttons">
                                                    <input class="btn btn-primary" value="Save" type="submit">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6"><h4
                                            class="panel-title">Delete Account <i class="fa fa-angle-right"
                                                                                  aria-hidden="true"></i>
                                    </h4></a>
                                </div>
                                <div id="collapse6" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form class="form-horizontal" method="post">
                                            <div class="buttons text-center">
                                                <input class="btn btn-primary" value="Delete Account" type="submit">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- ad-single end here -->


<!-- footer start here -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12 matter">
                <img src="images/logo.png" class="img-fluid logochange" alt="logo" title="logo"/>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc est justo, aliquam nec tempor
                    fermentum, commodo et libero. Quisque et rutrum arcu. Vivamus dictum tincidunt magna id euismod. Nam
                    sollicitudin mi quis orci lobortis feugiat.</p>

            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 info">
                <h5>Usefull Links</h5>
                <ul class="list-inline links">
                    <li><a href="/">Home</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/all_services">Services</a></li>
                    <li><a href="/login">Login</a></li>
                    <li><a href="/registration">Register</a></li>
                    <li><a href="add_service">Add Service</a></li>
                </ul>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <h5>Contact with us</h5>
                <ul class="list-inline social">
                    <li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="https://plus.google.com/" target="_blank"><i class="social_googleplus"
                                                                              aria-hidden="true"></i></a></li>
                    <li><a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram"
                                                                                aria-hidden="true"></i></a></li>
                    <li><a href="https://www.youtube.com/" target="_blank"><i class="social_youtube"></i></a></li>
                    <li><a href="https://in.linkedin.com/" target="_blank"><i class="fa fa-linkedin"
                                                                              aria-hidden="true"></i></a></li>
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
<script src="js/preetycheble/prettyCheckable.min.js"></script>
<link rel="stylesheet" href="js/preetycheble/prettyCheckable.css"/>
<script src="js/switcher.js"></script>


</body>
</html>
