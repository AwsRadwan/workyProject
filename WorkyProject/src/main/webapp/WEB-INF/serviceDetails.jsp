<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ads Single View</title>
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
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- line-awesome -->
    <link href="/line-awesome/css/line-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- crousel css -->
    <link href="/js/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
    <!--bootstrap select-->
    <link href="/js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css"/>
    <!-- jquery -->
    <script src="/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <!-- bootstrap js -->
    <script src="/js/popper.min.js" type="text/javascript"></script>
    <script src="/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    <!--bootstrap select-->
    <script src="/js/dist/js/bootstrap-select.js"></script>
    <!-- owlcarousel js -->
    <script src="/js/holder.min.js" type="text/javascript"></script>
    <script src="/js/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
    <!--internal js-->
    <script src="/js/owlinternal.js"></script>
    <script src="/js/internal.js"></script>
    <script src="/js/switcher.js"></script>
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
                            <form method="post" enctype="multipart/form-data" id="language">
                                <div class="btn-group">
                                    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                        <span class="text"><i class="la la-language"></i>Profile</span> <i
                                            class="la la-caret-down"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:;"><img src="/images/profile.jpg" alt="english"
                                                                        title="english"/> Dashboard</a></li>
                                        <li><a href="javascript:;"><img src="/images/profile.jpg" alt="english"
                                                                        title="english"/> My Service</a></li>
                                        <li><a href="javascript:;"><img src="/images/profile.jpg" alt="english"
                                                                        title="english"/> Reviews</a></li>
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
                                        <option value="${c.id}"><c:out value="${c.name}"></c:out></option>
                                    </c:forEach>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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

<!-- breadcrumb end here -->
<div class="bread-crumb">
    <div class="container">

    </div>
</div>
<!-- breadcrumb end here -->


<!-- ad-single start here -->
<div class="commontop">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-xs-12">
                <h2 class="title-singleads">Category : ${service.category.name} </h2>
                <h4 class="title">Title : ${service.name} </h4>
                <div class="tabheading">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="row">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation"><a class="active" href="#photos" aria-controls="home" role="tab"
                                                           data-toggle="tab">Photos</a></li>
                                <li role="presentation"><a class="" href="#adsmap" aria-controls="profile" role="tab"
                                                           data-toggle="tab">Map</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="row pull-right">
                            <div class="time-location hidden-xs">
                            </div>
                            <div class="advertise-id">

                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active show margin-map" id="photos">


                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="/getStudentPhoto/${id}" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="/getStudentPhoto/${id}" alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="/getStudentPhoto/${id}" alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                               data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                               data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane margin-map" id="adsmap">
                        <div class="map">
                            <iframe src="https://maps.google.com/maps?q=${service.creator.city}&t=k&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
                        </div>
                    </div>
                </div>
                <div class="details-single">
                    <div class="clearfix"></div>
                    <div class="title-detail">Description</div>
                    <p><c:out value="${userDescription}"/></p>
                </div>

            </div>
            <div class="col-sm-3 col-xs-12">
                <div class="rightside">
                    <p class="price">Price : $<c:out value="${userPrice}"/></p>
                    <div class="profile text-center">
                        <h2>By : <a href=""><c:out value="${userName}"/></a></h2>
                    </div>
                    <div class="phone">
                        <i class="la la-phone"></i> <c:out value="${userNumber}"/>
                    </div>
                    <h1>Rating : ${service.rating} </h1>
                    <fieldset class="rating">
                        <input type="radio" id="star5" name="rating" value="5"/><label id="star5label" class="full"
                                                                                       for="star5"
                                                                                       title="Awesome - 5 stars"></label>
                        <input type="radio" id="star4half" name="rating" value="4 and a half"/><label
                            id="star4halflabel" class="half"
                            for="star4half"
                            title="Pretty good - 4.5 stars"></label>
                        <input type="radio" id="star4" name="rating" value="4"/><label id="star4label" class="full"
                                                                                       for="star4"
                                                                                       title="Pretty good - 4 stars"></label>
                        <input type="radio" id="star3half" name="rating" value="3 and a half"/><label
                            id="star3halflabel" class="half"
                            for="star3half"
                            title="Meh - 3.5 stars"></label>
                        <input type="radio" id="star3" name="rating" value="3"/><label id="star3label" class="full"
                                                                                       for="star3"
                                                                                       title="Meh - 3 stars"></label>
                        <input type="radio" id="star2half" name="rating" value="2 and a half"/><label
                            id="star2halflabel"
                            class="half"
                            for="star2half"
                            title="Kinda bad - 2.5 stars"></label>
                        <input type="radio" id="star2" name="rating" value="2"/><label class="full" for="star2"
                                                                                       title="Kinda bad - 2 stars"></label>
                        <input type="radio" id="star1half" name="rating" value="1 and a half"/><label class="half"
                                                                                                      for="star1half"
                                                                                                      title="Meh - 1.5 stars"></label>
                        <input type="radio" id="star1" name="rating" value="1"/><label class="full" for="star1"
                                                                                       title="Sucks big time - 1 star"></label>
                        <input type="radio" id="starhalf" name="rating" value="half"/><label class="half" for="starhalf"
                                                                                             title="Sucks big time - 0.5 stars"></label>
                    </fieldset>
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
                <img src="/images/logo.png" class="img-fluid logochange" alt="logo" title="logo"/>
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
                    <li><a href="/register">Register</a></li>
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
                    <p>© 2021 <span>Classifiedspot</span>. All rights reserved. Theme by <span>TMD Studio</span></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer end here -->

<script>

    $(document).ready(function init() {
        $('#starhalf,#star5,#star4half,#star4,#star3half,#star3,#star2half,#star2,#star1half,#star1').attr('disabled', true);
        let rating = parseInt('${service.rating}');
        if (rating === 1) {
            $('#star1').attr('checked', true);
        } else if (rating > 1 && rating < 2) {
            $('#star1half').attr('checked', true);
        } else if (rating === 2) {
            $('#star2').attr('checked', true);
        } else if (rating > 2 & rating < 3) {
            $('#star2half').attr('checked', true);
        } else if (rating === 3) {
            $('#star3').attr('checked', true);
        } else if (rating > 3 & rating < 4) {
            $('#star3half').attr('checked', true);
        } else if (rating === 4) {
            $('#star4').attr('checked', true);
        } else if (rating > 4 & rating < 5) {
            $('#star4half').attr('checked', true);
        } else if (rating === 5) {
            $('#star5').attr('checked', true);
        }
    });

</script>


</body>
</html>
