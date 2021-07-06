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
    <title>Add Service</title>

    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="js/preetycheble/prettyCheckable.css"/>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/style_orange.css" title="style_orange" rel="alternate stylesheet" type="text/css"/>
    <link href="css/style_blue.css" title="style_blue" rel="alternate stylesheet" type="text/css"/>
    <link href="css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="css/ele-style.css" rel="stylesheet" type="text/css"/>

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="line-awesome/css/line-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="js/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css"/>

    <link href="js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css"/>

    <script src="js/imageupload.js"></script>
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
                                        <li><a href="javascript:;"><img src="images/profile.jpg" alt="english"
                                                                        title="english"/> Dashboard</a></li>
                                        <li><a href="javascript:;"><img src="images/profile.jpg" alt="english"
                                                                        title="english"/> My Service</a></li>
                                        <li><a href="javascript:;"><img src="images/profile.jpg" alt="english"
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
        </div>
    </div>
</header>
<!-- header end here -->


<div class="commontop">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-xs-12">
                <div class="add">
                    <div class="addtop">
                        <h3>Create your service</h3>
                    </div>
                    <form:form action="/service" method="post" enctype="multipart/form-data"
                               class="form-horizontal addform" modelAttribute="service">
                        <div class="form-group">
                            <div class="col-sm-12 col-xs-12">
                                <form:label path="name">Add Name*</form:label>
                                <form:input path="name" id="input-title" class="form-control" type="text"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12 col-xs-12">
                                <form:label path="category">Select Category* </form:label><br>
                                <form:select class="form-control bs-select" path="category">
                                    <form:option value="category" selected="true">Select Category</form:option>
                                    <c:forEach items="${categories}" var="c">
                                        <form:option value="${c.id}"> <c:out value="${c.name}"></c:out> </form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="vehicle">
                                <div class="form-group">
                                    <div class="col-sm-5 col-xs-12">
                                        <form:label path="price">Price*</form:label>
                                        <form:input path="price" value="" id="input-price" class="form-control"
                                                    type="number"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12 col-xs-12">
                                <form:label path="description">Description*</form:label>
                                <form:textarea path="description" id="input-enquiry"
                                               class="form-control"></form:textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-12 col-xs-12">
                                <label>Add Photos*</label>
                                <div class="photo">
                                    <ul class="list-inline">
                                        <li id="image1">
                                            <a href="#" onclick="document.getElementById('uploadImage').click();"><i
                                                    class="la la-plus"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <input id="uploadImage" name="file" type="file" path="cover"
                               style="visibility: hidden; height:0px; width: 0px;" onchange="readURL(this)">

                        <div class="buttons">
                            <input class="btn btn-primary" value="Submit" type="submit">
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

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

<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>

<script src="js/popper.min.js" type="text/javascript"></script>
<script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>

<script src="js/dist/js/bootstrap-select.js"></script>

<script src="js/holder.min.js" type="text/javascript"></script>
<script src="js/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="js/owlinternal.js"></script>
<script src="js/internal.js"></script>
<script src="js/preetycheble/prettyCheckable.min.js"></script>
<script src="js/switcher.js"></script>


</body>
</html>