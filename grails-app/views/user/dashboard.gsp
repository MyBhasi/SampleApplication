<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 16/11/16
  Time: 3:50 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:javascript src="theme/bootstrap.min.js"/>
    <asset:javascript src="theme/custom.css"/>
    <asset:stylesheet href="theme/bootstrap.css"/>
    <asset:stylesheet href="theme/custom.min.css"/>
    <script  src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="layout" content="sample_application">
    <title></title>
</head>

<body>

<section id="aa-slider">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form-group">
                <div class="aa-advance-search-top">


                </div></div></div>

    </div>

</div>
</div>
</div>
</div>
</section>


<section id="aa-advance-search">
    <div class="container">
        <div class="row">
<h1>Post Property</h1>
            <g:if test="${sucess}">
              <h1>  ${sucess}</h1>
                </g:if>

            <div class="col-lg-4 col-lg-offset-1" >
            <div class=" well bs-component">

                <g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="property" action="saveHome" >
                    <legend>Residential</legend>
                    <div class="form-group">
                        <label class="control-label" for="focusedInput">Address</label>
                        <input class="form-control" id="focusedInput" type="text" name="address" value="${homeCO?.address}" placeholder="Address">
                        <g:hasErrors field="address"  bean="${homeCO}">
                            <g:fieldError field="address" bean="${homeCO}"></g:fieldError>
                        </g:hasErrors >
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="disabledInput">pincode</label>
                        <input class="form-control" id="disabledInput" type="number "  name="pincode" value="${homeCO?.pincode}" placeholder="pincode" >
                        <g:hasErrors field="pincode"  bean="${homeCO}">
                            <g:fieldError bean="${homeCO}" field="pincode"></g:fieldError>
                        </g:hasErrors>
                    </div>

                    <div class="form-group ">
                        <label class="control-label" for="inputWarning">city</label>
                        <input type="text" class="form-control" id="inputWarning" name="city" value="${homeCO?.city}"   placeholder="city">
                        <g:hasErrors field="city"  bean="${homeCO}">
                            <g:fieldError field="city" bean="${homeCO}"></g:fieldError>
                        </g:hasErrors>
                    </div>

                    <div class="btn-group" data-toggle="buttons">
                        <label>PropertyFor</label>
                        <g:select class="property" name="propertyFor" id="property"
                                  from="${['Rent', 'Sale']}"
                                  noSelection="['': 'choose As']" value="${homeCO?.propertyFor}"/>
                        <g:hasErrors field="propertyFor"  bean="${homeCO}">
                            <g:fieldError field="propertyFor" bean="${homeCO}"></g:fieldError>
                        </g:hasErrors>
                    </div>

                    <div class="form-group ">
                        <label>Price</label>
                    <input type="number" class="form-control" id="exampleInputAmount" name="price"
                           placeholder="Amount"  value="${homeCO?.price}">

                        <g:hasErrors field="price"  bean="${homeCO}">
                            <g:fieldError field="price" bean="${homeCO}"></g:fieldError>
                        </g:hasErrors>
                    </div>
                    <div class="form-group" data-toggle="buttons">
                    <label>Rooms</label><g:select name="bedRoom"
                                                                 from="${['1Bhk', '2Bhk', '3Bhk', '4Bhk']}"
                                                                 noSelection="['': 'BedRoom']" value="${homeCO?.bedRoom}"/>
                    <g:hasErrors field="bedRoom"  bean="${homeCO}">
                        <g:fieldError field="bedRoom" bean="${homeCO}"></g:fieldError>
                    </g:hasErrors>
                    </div>
                    <div class="form group" data-toggle="buttons">
                        <label>ParkingFacility</label><br><g:select name="parkingFacility"
                                                      from="${['yes','No']}"
                                                      noSelection="['': 'choose']" value="${homeCO?.parkingFacility}"/>
                    <g:hasErrors field="parkingFacility"  bean="${homeCO}">
                        <g:fieldError field="parkingFacility" bean="${homeCO}"></g:fieldError>
                    </g:hasErrors>
                    </div>

                    <div class="form-group ">
                        <label class="control-label" for="inputWarning">Area</label>
                        %{--<input type="text" name="size" value="${homeCO?.size}"   placeholder="Enter Area in Sq.Ft">--}%
                        <input type="number" class="form-control" id="inputWarning" name="size" value="${homeCO?.size}"   placeholder="size in Sq.ft">

                        <g:hasErrors field="size"  bean="${homeCO}">
                            <g:fieldError field="size" bean="${homeCO}"></g:fieldError>
                        </g:hasErrors>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="inputWarning">Facing</label>
                    <g:select name="facing"
                              from="${com.Facing.Facing.list()}"
                              noSelection="['': 'Facing']"/>
                        <g:hasErrors field="facing" bean="${homeCO}">
                            <g:fieldError bean="${homeCO}"  field="facing"></g:fieldError>
                        </g:hasErrors>
                    </div>

                    <div class="form-group ">
                        <label class="control-label" for="inputSuccess">floorNo</label>
                        <input type="number" class="form-control" value="${homeCO?.floorNo}" name="floorNo" placeholder="floorNo">
                        <g:hasErrors field="floorNo"  bean="${homeCO}">
                            <g:fieldError field="floorNo" bean="${homeCO}"></g:fieldError>
                        </g:hasErrors>
                    </div>



                    <label class="control-label" >PropertyImage</label>
                %{--<g:uploadForm  controller="landing" action="index" >--}%
                    <input type="file" name="image"  id="image"><br>
                %{--<input type="submit" class ="button"  value="upload">--}%
                %{--</g:uploadForm>--}%

                %{--<g:uploadForm action="login">--}%
                %{--<input type="image" id="inputSmall" name="photo">--}%
                %{--<input type="submit" value="upload" name="upload">--}%
                %{--</g:uploadForm>--}%


                    <div class="form-group">
                        <g:actionSubmit class="btn btn-primary"   action="saveHome" value="Post" ></g:actionSubmit>
                        %{--<input type="submit"  style="width: 100px" value="Register">--}%
                        %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
                    </div>
                </g:form>
            </div>
        </div>
            <div class="col-lg-4 col-lg-offset-1" >
                <div class=" well bs-component">

                    <g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="property" action="saveOffice" >
                        <legend>Commercial</legend>
                        <div class="form-group">
                            <label class="control-label" for="focusedInput">Address</label>
                            <input class="form-control" id="focusedInput" type="text" name="address" value="${officeCO?.address}" placeholder="Address">
                            <g:hasErrors field="address"  bean="${officeCO}">
                                <g:fieldError field="address" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors >
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="disabledInput">pincode</label>
                            <input class="form-control" id="disabledInput" type="number"  name="pincode" value="${officeCO?.pincode}" placeholder="pincode" >
                            <g:hasErrors field="pincode"  bean="${officeCO}">
                                <g:fieldError field="pincode" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors>
                        </div>

                        <div class="form-group ">
                            <label class="control-label" for="inputWarning">city</label>
                            <input type="text" class="form-control" id="inputWarning" name="city" value="${officeCO?.city}"   placeholder="city">
                            <g:hasErrors field="city"  bean="${officeCO}">
                                <g:fieldError field="city" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors>
                        </div>

                        <div class="btn-group" data-toggle="buttons">
                            <label>PropertyFor</label>
                            <g:select class="property" name="propertyFor" id="property"
                                      from="${['Rent', 'Sale']}"
                                      noSelection="['': 'choose As']" value="${officeCO?.propertyFor}"/>
                            <g:hasErrors field="propertyFor"  bean="${officeCO}">
                                <g:fieldError field="propertyFor" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors>
                        </div>

                        <div class="form-group ">
                            <label>Price</label>
                            <input type="number" class="form-control" id="exampleInputAmount" name="price"
                                   placeholder="Amount"  value="${officeCO?.price}">

                            <g:hasErrors field="price"  bean="${officeCO}">
                                <g:fieldError field="price" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors>
                        </div>
                        <div class="btn-group" data-toggle="buttons">
                            <label>Cafeteria</label><g:select name="cafeteriaAvailibility"
                                                          from="${['Yes','No']}"
                                                          noSelection="['': 'choose']" value="${officeCO?.cafeteriaAvailibility}"/>
                        <g:hasErrors field="cafeteriaAvailibility"  bean="${officeCO}">
                            <g:fieldError field="cafeteriaAvailibility " bean="${officeCO}"></g:fieldError>
                        </g:hasErrors>
                        </div>
                        <br>
                        <div class="btn-group" data-toggle="buttons">
                            <label>ParkingFacility</label><br><g:select name="parkingFacility"
                                                                    from="${['yes','No']}"
                                                                    noSelection="['': 'choose']" value="${officeCO?.parkingFacility}"/>
                        <g:hasErrors field="parkingFacility"  bean="${officeCO}">
                            <g:fieldError field="parkingFacility" bean="${officeCO}"></g:fieldError>
                        </g:hasErrors>
                        </div>

                        <div class="form-group ">
                            <label class="control-label" for="inputWarning">Area</label>
                            %{--<input type="text" name="size" value="${homeCO?.size}"   placeholder="Enter Area in Sq.Ft">--}%
                            <input type="number" class="form-control" id="inputWarning" name="size" value="${officeCO?.size}"   placeholder="size in Sq.ft">

                            <g:hasErrors field="size"  bean="${officeCO}">
                                <g:fieldError field="size" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors>
                        </div>

                        <div class="form-group ">
                            <label class="control-label" for="inputSuccess">floorNo</label>
                            <input type="number" class="form-control" value="${officeCO?.floorNo}" name="floorNo" placeholder="floorNo">
                            <g:hasErrors field="floorNo"  bean="${officeCO}">
                                <g:fieldError field="floorNo" bean="${officeCO}"></g:fieldError>
                            </g:hasErrors>
                        </div>



                        <label class="control-label" >PropertyImage</label>
                    %{--<g:uploadForm  controller="landing" action="index" >--}%
                        <input type="file" name="image"  id="image"><br>
                    %{--<input type="submit" class ="button"  value="upload">--}%
                    %{--</g:uploadForm>--}%

                    %{--<g:uploadForm action="login">--}%
                    %{--<input type="image" id="inputSmall" name="photo">--}%
                    %{--<input type="submit" value="upload" name="upload">--}%
                    %{--</g:uploadForm>--}%


                        <div class="form-group">
                            <g:actionSubmit class="btn btn-primary"   action="saveOffice" value="Post" ></g:actionSubmit>
                            %{--<input type="submit"  style="width: 100px" value="Register">--}%
                            %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
                        </div>
                    </g:form>
                </div>
            </div>

        </div>
</div>
</div>
</section>
</body>
</html>