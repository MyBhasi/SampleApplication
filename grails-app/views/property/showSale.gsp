<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 13/11/16
  Time: 8:47 PM
--%>
<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 13/11/16
  Time: 11:44 AM
--%>

<%@ page import="com.sample_application.myuser.MyUser" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="sample_application">
    <title></title>

</head>

<body>
<%@ page import="com.sample_application.myuser.MyUser"%>
<section id="aa-slider">
    <div class="aa-slider-area">
        <!-- Top slider -->
        <div class="aa-top-slider">
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <asset:image src="img/slider/5.jpg" alt="img"></asset:image>
                <!-- Top slider content -->
                %{--<div class="aa-top-slider-content">--}%
                %{--<span class="aa-top-slider-catg">Duplex</span>--}%
                %{--<h2 class="aa-top-slider-title">1560 Square Feet</h2>--}%
                %{--<p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>--}%
                %{--<span class="aa-top-slider-off">30% OFF</span>--}%
                %{--<p class="aa-top-slider-price">$460,000</p>--}%
                %{--<a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>--}%
                %{--</div>--}%
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            %{--<div class="aa-top-slider-single">--}%
            %{--<asset:property  src="img/slider/2.jpg" alt="img"/>--}%
            %{--<!-- Top slider cointent -->--}%
            %{--<div class="aa-top-slider-content">--}%
            %{--<span class="aa-top-slider-catg">Duplex</span>--}%
            %{--<h2 class="aa-top-slider-title">1560 Square Feet</h2>--}%
            %{--<p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>--}%
            %{--<span class="aa-top-slider-off">30% OFF</span>--}%
            %{--<p class="aa-top-slider-price">$460,000</p>--}%
            %{--<a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>--}%
            %{--</div>--}%
            %{--<!-- / Top slider content -->--}%
            %{--</div>--}%
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            %{--<div class="aa-top-slider-single">--}%
            %{--<img src="img/slider/1.jpg" alt="img">--}%
            %{--<!-- Top slider content -->--}%
            %{--<div class="aa-top-slider-content">--}%
            %{--<span class="aa-top-slider-catg">Duplex</span>--}%
            %{--<h2 class="aa-top-slider-title">1560 Square Feet</h2>--}%
            %{--<p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>--}%
            %{--<span class="aa-top-slider-off">30% OFF</span>--}%
            %{--<p class="aa-top-slider-price">$460,000</p>--}%
            %{--<a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>--}%
            %{--</div>--}%
            %{--<!-- / Top slider content -->--}%
            %{--</div>--}%
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            %{--<div class="aa-top-slider-single">--}%
            %{--<asset:property src="img/slider/5.jpg" alt="img"></asset:property>--}%
            %{--<!-- Top slider content -->--}%
            %{--<div class="aa-top-slider-content">--}%
            %{--<span class="aa-top-slider-catg">Duplex</span>--}%
            %{--<h2 class="aa-top-slider-title">1560 Square Feet</h2>--}%
            %{--<p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>--}%
            %{--<span class="aa-top-slider-off">30% OFF</span>--}%
            %{--<p class="aa-top-slider-price">$460,000</p>--}%
            %{--<a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>--}%
            %{--</div>--}%
            <!-- / Top slider content -->
            %{--</div>--}%
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            %{--<div class="aa-top-slider-single">--}%
            %{--<img src="img/slider/4.jpg" alt="img">--}%
            %{--<!-- Top slider content -->--}%
            %{--<div class="aa-top-slider-content">--}%
            %{--<span class="aa-top-slider-catg">Duplex</span>--}%
            %{--<h2 class="aa-top-slider-title">1560 Square Feet</h2>--}%
            %{--<p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>--}%
            %{--<span class="aa-top-slider-off">30% OFF</span>--}%
            %{--<p class="aa-top-slider-price">$460,000</p>--}%
            %{--<a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>--}%
            %{--</div>--}%
            %{--<!-- / Top slider content -->--}%
            %{--</div>--}%
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            %{--<div class="aa-top-slider-single">--}%
            %{--<img src="img/slider/6.jpg" alt="img">--}%
            %{--<!-- Top slider content -->--}%
            %{--<div class="aa-top-slider-content">--}%
            %{--<span class="aa-top-slider-catg">Duplex</span>--}%
            %{--<h2 class="aa-top-slider-title">1560 Square Feet</h2>--}%
            %{--<p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>--}%
            %{--<span class="aa-top-slider-off">30% OFF</span>--}%
            %{--<p class="aa-top-slider-price">$460,000</p>--}%
            %{--<a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>--}%
            %{--</div>--}%
            %{--<!-- / Top slider content -->--}%
            %{--</div>--}%
            %{--<!-- / Top slider single slide -->--}%
        </div>
    </div>
</section>
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

                                    <h2><text color="Red">For Sale</text></h2>

                                    <div class="aa-properties-item-content">
                                        <g:each in="${list}"   var="lt">
                                            <div class="aa-properties-info">
                                                <g:if   test="${lt.class == com.sample_application.home.Home}">
                                                    <span><h1><b>${lt.bedRoom} Home</b></h1></span></g:if>

                                                <g:else>
                                                    <span><h1><b>Office Space</b> ${lt.size}Sq.Ft</h1></span>
                                                </g:else>

                                            </div>
                                        %{--<h1>Location:</h1>${lt.address},${lt.city},${lt.pincode}--}%


                                            <div class="aa-properties">

                                                <h1>Location:${lt.address},${lt.city},${lt.pincode}</h1>
                                                <h1>Contact:
                                                    <g:user name="${lt.postedBy}">
                                                        (${it}
                                                        <sec:ifLoggedIn>
                                                            ContactName:${MyUser.get(lt.postedBy.id).firstName}
                                                            ContactNo.:${MyUser.get(lt.postedBy.id).phoneNo}
                                                        </sec:ifLoggedIn>

                                                    </g:user></h1>



                                                <div class="aa-properties-detial">
                                                    <h1> <span class="aa-price">
                                                        Price:${lt.price}Rs
                                                    </span></h1>
                                                    <br>

                                                </div>

                                                <img style="height:210px;width:354px;"
                                                     src="${createLink(controller: "dashboard", action: "renderImage", params: [id: "${lt.id}"])}"/>

                                            </div><!-- /example -->
                                        %{--</div>--}%
                                        %{--</div>--}%</g:each>
                                    </div>


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
<!-- / Properties  -->

<!-- Footer -->

</body>
</html>