<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 11/11/16
  Time: 2:32 PM
--%>

<%@ page import="com.sample_application.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="sample_application">
    <title></title>
</head>

<body>
<section id="aa-slider">
    <div class="aa-slider-area">
        <!-- Top slider -->
        <div class="aa-top-slider">
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <asset:image src="img/slider/3.jpg" alt="img"></asset:image>
                <!-- Top slider content -->
                <div class="aa-top-slider-content">
                    <span class="aa-top-slider-catg">Duplex</span>

                    <h2 class="aa-top-slider-title">1560 Square Feet</h2>

                    <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                    <span class="aa-top-slider-off">30% OFF</span>

                    <p class="aa-top-slider-price">$460,000</p>
                    <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                %{--<asset:property  src="img/slider/2.jpg" alt="img"/>--}%
                <!-- Top slider cointent -->
                <div class="aa-top-slider-content">
                    <span class="aa-top-slider-catg">Duplex</span>

                    <h2 class="aa-top-slider-title">1560 Square Feet</h2>

                    <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                    <span class="aa-top-slider-off">30% OFF</span>

                    <p class="aa-top-slider-price">$460,000</p>
                    <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                %{--<img src="img/slider/1.jpg" alt="img">--}%
                <!-- Top slider content -->
                <div class="aa-top-slider-content">
                    <span class="aa-top-slider-catg">Duplex</span>

                    <h2 class="aa-top-slider-title">1560 Square Feet</h2>

                    <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                    <span class="aa-top-slider-off">30% OFF</span>

                    <p class="aa-top-slider-price">$460,000</p>
                    <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                %{--<asset:property src="img/slider/5.jpg" alt="img"></asset:property>--}%
                <!-- Top slider content -->
                <div class="aa-top-slider-content">
                    <span class="aa-top-slider-catg">Duplex</span>

                    <h2 class="aa-top-slider-title">1560 Square Feet</h2>

                    <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                    <span class="aa-top-slider-off">30% OFF</span>

                    <p class="aa-top-slider-price">$460,000</p>
                    <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <img src="img/slider/4.jpg" alt="img">
                <!-- Top slider content -->
                <div class="aa-top-slider-content">
                    <span class="aa-top-slider-catg">Duplex</span>

                    <h2 class="aa-top-slider-title">1560 Square Feet</h2>

                    <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                    <span class="aa-top-slider-off">30% OFF</span>

                    <p class="aa-top-slider-price">$460,000</p>
                    <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <img src="img/slider/6.jpg" alt="img">
                <!-- Top slider content -->
                <div class="aa-top-slider-content">
                    <span class="aa-top-slider-catg">Duplex</span>

                    <h2 class="aa-top-slider-title">1560 Square Feet</h2>

                    <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                    <span class="aa-top-slider-off">30% OFF</span>

                    <p class="aa-top-slider-price">$460,000</p>
                    <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
        </div>
    </div>
</section>
<!-- End slider  -->

<!-- Advance Search -->
<section id="aa-advance-search">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form">
                <div class="aa-advance-search-top">
                    <div class="row">
                        <div class="text">
                            <g:if test="${err}">
                                <b>${err}</b>
                            </g:if>
                        </div>
                        <g:form controller="property" action="reterieve">
                            <div class="col-md-4">
                                <div class="aa-single-advance-search">

                                    <input type="text" name="city" placeholder="Type Your City">
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="aa-single-advance-search">
                                    <g:select name="category" from="${['Commercial', 'Residential']}"
                                              noSelection="['': 'Category']">
                                    %{--<select>--}%
                                    %{--<option value="0" selected>Category</option>--}%
                                    %{--<option value="1">Residential</option>--}%
                                    %{--<option value="2">Commercial</option>--}%
                                    %{--<option value="3">Plot</option>--}%
                                    %{--<option value="4">Commercial</option>--}%
                                    </g:select>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="aa-single-advance-search">
                                    <g:select name="pricerange" from="${['5-6', '6-7', '7-8']}"
                                              noSelection="['': 'Price Range(in million)']">
                                    %{--<option value="0" selected>Range(Rs)</option>--}%
                                    %{--<option value="1">50lakh-70lakh</option>--}%
                                    %{--<option value="2">70lakh-1Crore</option>--}%
                                    %{--<option value="3">Plot</option>--}%
                                    %{--<option value="4">Commercial</option>--}%
                                    </g:select>
                                </div>
                            </div>

                        %{--<div class="col-md-2">--}%
                        %{--<div class="aa-single-advance-search">--}%
                        %{--<select>--}%
                        %{--<option value="0" selected>Type</option>--}%
                        %{--<option value="1">Flat</option>--}%
                        %{--<option value="2">Land</option>--}%
                        %{--<option value="3">Plot</option>--}%
                        %{--<option value="4">Commercial</option>--}%
                        %{--</select>--}%
                        %{--</div>--}%
                        %{--</div>--}%
                            <div class="col-md-2">
                                <div class="aa-single-advance-search">
                                    <input class="aa-search-btn" type="submit" value="Search">

                                </div>

                            </div>
                        </g:form>

                    </div>

                    <div class="row">
                        <section id="aa-properties">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="aa-properties-content">
                                            <!-- start properties content head -->
                                            %{--<--}%
                                            <!-- Start properties content body -->


                                            <div class="aa-properties-content-body">
                                                <ul class="aa-properties-nav">
                                                    <li>
                                                        <article class="aa-properties-item">
                                                            <a class="aa-properties-item-img" href="#">

                                                            </a>

                                                            <h1>

                                                                <myNamespace:ch val1="${list}" val2="${err}">
                                                                    ${it}

                                                                </myNamespace:ch></h1>

                                                            <g:each in="${list}" var="lt">

                                                                <h2><text color="Red">For${lt.propertyFor}</text></h2>

                                                                <div class="aa-properties-item-content">

                                                                    <div class="aa-properties-info">
                                                                        <g:if test="${lt.class == com.sample_application.home.Home}">
                                                                            <span><h1><b>${lt.bedRoom} Home</b></h1>
                                                                            </span></g:if>

                                                                        <g:else>
                                                                            <span><h1><b>Office Space</b> ${lt.size}Sq.Ft
                                                                            </h1></span>
                                                                        </g:else>

                                                                    </div>
                                                                    %{--<h1>Location:</h1>${lt.address},${lt.city},${lt.pincode}--}%


                                                                    <div class="aa-properties">

                                                                        <h1>Location:${lt.address},${lt.city},${lt.pincode}</h1>

                                                                        <h1>Contact:
                                                                            <myNamespace:user name="${lt.postedBy}">
                                                                                (${it}
                                                                                <sec:ifLoggedIn>
                                                                                    Contact:${com.sample_application.User.get(lt.postedBy.id).phoneNo}
                                                                                </sec:ifLoggedIn>

                                                                            </myNamespace:user></h1>


                                                                        <div class="aa-properties-detial">
                                                                            <h1><span class="aa-price">
                                                                                Price:${lt.price}Rs
                                                                            </span></h1>
                                                                            <br>

                                                                        </div>
                                                                        <img style="height:210px;width:354px;"
                                                                             src="${createLink(controller: "dashboard", action: "renderImage", params: [id: "${lt.id}"])}"/>

                                                                    </div><!-- /example -->
                                                                %{--</div>--}%
                                                                %{--</div>--}%
                                                                </div>
                                                            </g:each>



                                                        %{--<div class="aa-properties-detial">--}%
                                                        %{--<span class="aa-price">--}%
                                                        %{--${lt..price}--}%
                                                        %{--</span>--}%
                                                        %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                                                        %{--</div>--}%
                                                        </article>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div></div></div></div>
                            %{--<li>--}%
                            %{--<article class="aa-properties-item">--}%
                            %{--<a class="aa-properties-item-img" href="#">--}%
                            %{--<img alt="img" src="img/item/1.jpg">--}%
                            %{--</a>--}%

                            %{--<div class="aa-tag sold-out">--}%
                            %{--Sold Out--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-item-content">--}%
                            %{--<div class="aa-properties-info">--}%
                            %{--<span>5 Rooms</span>--}%
                            %{--<span>2 Beds</span>--}%
                            %{--<span>3 Baths</span>--}%
                            %{--<span>1100 SQ FT</span>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-about">--}%
                            %{--<h3><a href="#">Appartment Title</a></h3>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim molestiae vero ducimus quibusdam odit vitae.</p>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-detial">--}%
                            %{--<span class="aa-price">--}%
                            %{--$35000--}%
                            %{--</span>--}%
                            %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            %{--</article>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                            %{--<article class="aa-properties-item">--}%
                            %{--<a class="aa-properties-item-img" href="#">--}%
                            %{--<img alt="img" src="img/item/2.jpg">--}%
                            %{--</a>--}%

                            %{--<div class="aa-tag sold-out">--}%
                            %{--Sold Out--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-item-content">--}%
                            %{--<div class="aa-properties-info">--}%
                            %{--<span>5 Rooms</span>--}%
                            %{--<span>2 Beds</span>--}%
                            %{--<span>3 Baths</span>--}%
                            %{--<span>1100 SQ FT</span>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-about">--}%
                            %{--<h3><a href="#">Appartment Title</a></h3>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim molestiae vero ducimus quibusdam odit vitae.</p>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-detial">--}%
                            %{--<span class="aa-price">--}%
                            %{--$35000--}%
                            %{--</span>--}%
                            %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            %{--</article>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                            %{--<article class="aa-properties-item">--}%
                            %{--<a class="aa-properties-item-img" href="#">--}%
                            %{--<img alt="img" src="img/item/5.jpg">--}%
                            %{--</a>--}%

                            %{--<div class="aa-tag for-sale">--}%
                            %{--For Sale--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-item-content">--}%
                            %{--<div class="aa-properties-info">--}%
                            %{--<span>5 Rooms</span>--}%
                            %{--<span>2 Beds</span>--}%
                            %{--<span>3 Baths</span>--}%
                            %{--<span>1100 SQ FT</span>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-about">--}%
                            %{--<h3><a href="#">Appartment Title</a></h3>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim molestiae vero ducimus quibusdam odit vitae.</p>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-detial">--}%
                            %{--<span class="aa-price">--}%
                            %{--$35000--}%
                            %{--</span>--}%
                            %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            %{--</article>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                            %{--<article class="aa-properties-item">--}%
                            %{--<a class="aa-properties-item-img" href="#">--}%
                            %{--<img alt="img" src="img/item/3.jpg">--}%
                            %{--</a>--}%

                            %{--<div class="aa-tag for-rent">--}%
                            %{--For Rent--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-item-content">--}%
                            %{--<div class="aa-properties-info">--}%
                            %{--<span>5 Rooms</span>--}%
                            %{--<span>2 Beds</span>--}%
                            %{--<span>3 Baths</span>--}%
                            %{--<span>1100 SQ FT</span>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-about">--}%
                            %{--<h3><a href="#">Appartment Title</a></h3>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim molestiae vero ducimus quibusdam odit vitae.</p>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-detial">--}%
                            %{--<span class="aa-price">--}%
                            %{--$35000--}%
                            %{--</span>--}%
                            %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            %{--</article>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                            %{--<article class="aa-properties-item">--}%
                            %{--<a class="aa-properties-item-img" href="#">--}%
                            %{--<img alt="img" src="img/item/4.jpg">--}%
                            %{--</a>--}%

                            %{--<div class="aa-tag for-sale">--}%
                            %{--For Sale--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-item-content">--}%
                            %{--<div class="aa-properties-info">--}%
                            %{--<span>5 Rooms</span>--}%
                            %{--<span>2 Beds</span>--}%
                            %{--<span>3 Baths</span>--}%
                            %{--<span>1100 SQ FT</span>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-about">--}%
                            %{--<h3><a href="#">Appartment Title</a></h3>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim molestiae vero ducimus quibusdam odit vitae.</p>--}%
                            %{--</div>--}%

                            %{--<div class="aa-properties-detial">--}%
                            %{--<span class="aa-price">--}%
                            %{--$35000--}%
                            %{--</span>--}%
                            %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            %{--</article>--}%

                            %{--<!-- Start properties content bottom -->--}%
                            %{--<div class="aa-properties-content-bottom">--}%
                            %{--<nav>--}%
                            %{--<ul class="pagination">--}%
                            %{--<li>--}%
                            %{--<a href="#" aria-label="Previous">--}%
                            %{--<span aria-hidden="true">&laquo;</span>--}%
                            %{--</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="#">1</a></li>--}%
                            %{--<li><a href="#">2</a></li>--}%
                            %{--<li class="active"><a href="#">3</a></li>--}%
                            %{--<li><a href="#">4</a></li>--}%
                            %{--<li><a href="#">5</a></li>--}%
                            %{--<li>--}%
                            %{--<a href="#" aria-label="Next">--}%
                            %{--<span aria-hidden="true">&raquo;</span>--}%
                            %{--</a>--}%
                            %{--</li>--}%
                            %{--</ul>--}%
                            %{--</nav>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            %{--</div>--}%
                            <!-- Start properties sidebar -->

                        </section>
                    </div>
                </div>
                %{--<div class="aa-advance-search-bottom">--}%
                %{--<div class="row">--}%
                %{--<div class="col-md-6">--}%
                %{--<div class="aa-single-filter-search">--}%
                %{--<span>AREA (SQ)</span>--}%
                %{--<span>FROM</span>--}%
                %{--<span id="skip-value-lower" class="example-val">30.00</span>--}%
                %{--<span>TO</span>--}%
                %{--<span id="skip-value-upper" class="example-val">100.00</span>--}%
                %{--<div id="aa-sqrfeet-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--<div class="col-md-6">--}%
                %{--<div class="aa-single-filter-search">--}%
                %{--<span>PRICE ($)</span>--}%
                %{--<span>FROM</span>--}%
                %{--<span id="skip-value-lower2" class="example-val">30.00</span>--}%
                %{--<span>TO</span>--}%
                %{--<span id="skip-value-upper2" class="example-val">100.00</span>--}%
                %{--<div id="aa-price-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
            </div>
        </div>
    </div>
</div>
</section>
</body>
</html>
