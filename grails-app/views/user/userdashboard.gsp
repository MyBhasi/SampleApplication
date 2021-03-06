<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 11/11/16
  Time: 3:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="sample_application">
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
    <div class="aa-slider-area">
        <!-- Top slider -->
        <div class="aa-top-slider">
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <asset:image src="img/slider/3.jpg" alt="img"></asset:image>

            </div>

        </div>
    </div>
</section>
<!-- End slider  -->

<!-- Advance Search -->


<section id="aa-advance-search">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form-group">
                <div class="aa-advance-search-top">
                    <div class="row">
                        <p>
                            <g:if test="${sucess}">
                                ${sucess}
                            </g:if>

                        <h1>Post Property</h1></p>
                        <div class="col-md-4">
                        <div class="aa-single-advance-search">
                            <g:form method="post" enctype="multipart/form-data" controller="property" action="save">
                                <label>Address</label>
                                <input type="text" name="address" placeholder="Type Your Address">
                                <label>Pincode</label><br>
                                <input type="number" name="pincode" placeholder="Type Your Pincode"><br>
                                <label>city</label>
                                <input type="text" name="city" placeholder="Type Your City">
                                <label>PropertyFor</label><br>
                            %{--<g:select name="propertyFor" from="${['Sale','Rent']}" noSelection="['null': 'choose As']"></g:select>--}%

                            %{--<br> <label class="radio-inline">--}%
                            %{--<input type="radio" name="optradio">Rent--}%
                            %{--</label>--}%
                            %{--<label class="radio-inline">--}%
                            %{--<input type="radio" name="optradio">Sale--}%
                            %{--</label>--}%


                            %{--<div class="btn-group" data-toggle="buttons">--}%

                            %{--<label class="btn btn-primary">--}%
                            %{--<input type="radio" name="propertyFor" id="option2" >Rent--}%
                            %{--</label>--}%
                            %{--<label class="btn btn-primary">--}%
                            %{--<input type="radio" name="propertyFor" id="option3" >Sale--}%
                            %{--</label>--}%
                            %{--</div>--}%
                                <div class="btn-group" data-toggle="buttons">

                                    <g:select class="property" name="propertyFor" id="property"
                                              from="${['Rent', 'Sale']}"
                                              noSelection="['': 'choose As']"/>
                                </div>
                                <br>
                                <label>PropertyType</label>
                                <g:select class="property" name="propertyType" id="property"
                                          from="${['Commercial', 'Residential']}"
                                          noSelection="['': 'choose As']"/>

                                <div class="row">

                                    <div class="col-sm-6">

                                        <div class="form-group">
                                            <label>Only For Residential</label><g:select name="bedRoom"
                                                                                         from="${['1Bhk', '2Bhk', '3Bhk', '4Bhk']}"
                                                                                         noSelection="['': 'BedRoom']"/><br>
                                            <g:select name="Facing"
                                                      from="${com.Facing.Facing.list()}"
                                                      noSelection="['': 'Facing']"/>

                                        </div></div>

                                    <div class="col-sm-6">
                                        <label>Only for Commercial</label>

                                        <div class="input-group">
                                            <input type="text" name="size" id="color" placeholder="Enter Area">

                                            <div class="input-group-addon">sq.ft</div>
                                        </div>
                                    </div>
                                </div>

                                <label>Price</label>
                            %{--<input type="text" placeholder="Price">--}%
                                <label class="sr-only" for="exampleInputAmount">Amount (in Rupees)</label>

                                <div class="input-group">
                                    <div class="input-group-addon">Rs</div>
                                    <input type="number" class="form-control" id="exampleInputAmount" name="price"
                                           placeholder="Amount">

                                    <div class="input-group-addon">.00</div>
                                </div>

                                <div class="form-group"></div>

                                <label class="control-label">Property Image</label>
                            %{--<g:uploadForm  controller="landing" action="index" >--}%
                                <input type="file" class="form-control-file" name="image" id="image"><br>
                                </div>
                                <g:actionSubmit class="btn-success" action="save" value="Submit"></g:actionSubmit>
                            </g:form>
                        </div>

                    </div>

                </div>
            </div>
            %{--</div>--}%

        </div>

    </div>
</div>
</div>
</div>


    %{--<div class="row">--}%
    %{--<div class="col-sm-4">--}%
    %{--<myNamespace:post  userID="${sec.loggedInUserInfo(field:'id')}"/>--}%
    %{--</div>--}%

    %{--<g:link  controller="property"  action="postedProperty"  ><h1>Posted Property</h1></g:link>--}%

    %{--</div>--}%

</section>

</body>
</html>