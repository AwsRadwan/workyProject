<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hatsune Miku
  Date: 7/5/2021
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dashboard Requested Services</title>
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
    <link href="css/ratingstyle.css" rel="stylesheet" type="text/css"/>
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
                    <a href="/"><img src="images/logo.png" alt="logo" title="logo"/></a>
                </div>
            </div>
            <div class="col-md-7 col-sm-7 col-xs-12">
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

<div class="topimage">
    <img src="images/bck_bg.jpg" class="img-fluid" alt="image" title="image">
</div>

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
                                <li class="active"><a href="/requestedservices"><img src="images/dashboard/search.png"
                                                                                     alt="image" title="image"/>
                                    <p>Requested Services</p></a></li>
                                <li><a href="/dashboardmessages"><img src="images/dashboard/message.png" alt="image"
                                                                      title="image"/>
                                    <p>Messages</p></a></li>
                                <li><a href="/dashboardsettings"><img src="images/dashboard/setting.png" alt="image"
                                                                      title="image"/>
                                    <p>Settings</p></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="inner-fav">

                        <c:forEach items="${services}" var="service">
                            <div class="product-layout product-list">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="ads_single_view.html"><img src="images/mobile/01.jpg" alt="image"
                                                                            title="image" class="img-fluid"></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="ads_single_view.html">${service.name}</a></h4>
                                        <p class="des">Category: ${service.category.name}</p>
                                        <ul class="list-unstyled">
                                            <li><i class="la la-map-marker"></i> Location,${service.creator.city}</li>
                                        </ul>
                                        <hr>
                                        <p class="des">${service.description}</p>
                                        <div class="button-group text-center visible-xs">
                                            <button type="button">₪ ${service.price}</button>
                                            <button onclick="doEmail()" type="button"><i class="la la-envelope-o"></i>
                                            </button>
                                            <button onclick="DoCall()" type="button"><i class="la la-phone"></i>
                                            </button>
                                        </div>
                                        <p><br>Rate this Service: </p>
                                        <div class="rating-css">
                                            <div class="star-icon">
                                                <input type="radio" name="rating1" id="rating1">
                                                <label for="rating1" class="fa fa-star"></label>
                                                <input type="radio" name="rating1" id="rating2">
                                                <label for="rating2" class="fa fa-star"></label>
                                                <input type="radio" name="rating1" id="rating3">
                                                <label for="rating3" class="fa fa-star"></label>
                                                <input type="radio" name="rating1" id="rating4">
                                                <label for="rating4" class="fa fa-star"></label>
                                                <input type="radio" name="rating1" id="rating5">
                                                <label for="rating5" class="fa fa-star"></label>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" onclick="DoRating()" type="button">Rate</button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
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

<script>

    function doEmail(id) {
        window.location = "/SendMessage" + id
    }

    function DoCall(id) {
        window.location = "/dashboardCall" + id
    }

    function DoRating(id) {
        window.location = "/dashboardRate" + id
    }


</script>


</body>
</html>
