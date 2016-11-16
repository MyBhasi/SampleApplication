<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 15/11/16
  Time: 8:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:javascript src="theme/bootstrap.min.js"/>
    <asset:javascript src="theme/custom.css"/>
    <asset:stylesheet href="theme/bootstrap.css"/>
    <asset:stylesheet href="theme/custom.min.css"/>
    <script  src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <meta name="layout" content="sample_application">
</head>

<body>
<section id="aa-slider">
    %{--<div class="aa-slider-area">--}%
        %{--<!-- Top slider -->--}%
        %{--<div class="aa-top-slider">--}%
            %{--<!-- Top slider single slide -->--}%
            %{--<div class="aa-top-slider-single">--}%
                %{--<asset:image src="img/slider/3.jpg" alt="img"></asset:image>--}%
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
            %{--<!-- Top slider single slide -->--}%
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
            %{--<!-- / Top slider single slide -->--}%
            %{--<!-- Top slider single slide -->--}%
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
            %{--<!-- / Top slider single slide -->--}%
            %{--<!-- Top slider single slide -->--}%
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
            %{--<!-- / Top slider content -->--}%
            %{--</div>--}%
            %{--<!-- / Top slider single slide -->--}%
            %{--<!-- Top slider single slide -->--}%
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
            %{--<!-- / Top slider single slide -->--}%
            %{--<!-- Top slider single slide -->--}%
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
        %{--</div>--}%
    %{--</div>--}%
%{--</section>--}%
%{--<section id="aa-advance-search">--}%
<div class="container">
    <div class="aa-advance-search-area">
        <div class="form-group">
            <div class="aa-advance-search-top">
                <div class="row">

                            <div class="row">

                                <div class="col-sm-6">



                </div>

            </div></div></div>

</div>

</div>
</div>
</div>
</div>


<div class="row">
    <div class="col-md-6">
        <myNamespace:post  userID="${sec.loggedInUserInfo(field:'id')}"/>
        %{--<g:render template="/user/template1"  bean="${set}"></g:render>--}%
    %{--</div>--}%

    %{--<g:link  controller="property"  action="postedProperty"  ><h1>Posted Property</h1></g:link>--}%

</div>
    </div>

</section>

</body>
</html>