<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 16/11/16
  Time: 3:15 AM
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

            <div class="col-lg-6 col-lg-offset-1" >
                <div class=" well bs-component">
                <div class ="form-group-lg">
                    <g:if test="${officeCO?.class==com.officeCO.OfficeCO}">
                    <g:render template="template3"  model="[id:id,officeCO:officeCO]"></g:render>
                    </g:if>
<g:if test="${homeCO?.class==com.home.HomeCO}">
                    <g:render template="template2" model="[id: id,homeCO:homeCO]"></g:render>
    </g:if>

                %{--<g:if test="${error}">--}%
                %{--<h1>"${error}"<h1>--}%
                %{--</g:if>--}%
                %{--</div>--}%

                    %{--<g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="user" action="save" >--}%
                        %{--<legend>Residential</legend>--}%
                        %{--<div class="form-group">--}%
                            %{--<label class="control-label" for="focusedInput">FirstName</label>--}%
                            %{--<input class="form-control" id="focusedInput" type="text" name="firstName" placeholder="FirstName">--}%
                        %{--</div>--}%

                        %{--<div class="form-group">--}%
                            %{--<label class="control-label" for="disabledInput">LastName</label>--}%
                            %{--<input class="form-control" id="disabledInput" type="text"  name="lastName" placeholder="LastName" >--}%
                        %{--</div>--}%

                        %{--<div class="form-group has-warning">--}%
                            %{--<label class="control-label" for="inputWarning">UserName/Email</label>--}%
                            %{--<input type="text" class="form-control" id="inputWarning" name="username" placeholder="UserName/Email">--}%
                        %{--</div>--}%

                        %{--<div class="form-group has-error">--}%
                            %{--<label class="control-label" for="inputError">Password</label>--}%
                            %{--<input type="password" class="form-control" id="inputError" name="password" placeholder="Password">--}%
                        %{--</div>--}%

                        %{--<div class="form-group has-success">--}%
                            %{--<label class="control-label" for="inputSuccess">Confirm Password</label>--}%
                            %{--<input type="password" class="form-control" id="inputSuccess" name="confirmPassword" placeholder="ConfirmPassword">--}%
                        %{--</div>--}%



                        %{--<label class="control-label" >PhotoUpload</label>--}%
                    %{--<g:uploadForm  controller="landing" action="index" >--}%
                        %{--<input type="file" name="photo"  id="photo"><br>--}%
                    %{--<input type="submit" class ="button"  value="upload">--}%
                    %{--</g:uploadForm>--}%

                    %{--<g:uploadForm action="login">--}%
                    %{--<input type="image" id="inputSmall" name="photo">--}%
                    %{--<input type="submit" value="upload" name="upload">--}%
                    %{--</g:uploadForm>--}%


                        %{--<div class="form-group">--}%
                            %{--<g:actionSubmit class="btn btn-primary"   action="save" value="update" ></g:actionSubmit>--}%
                            %{--<input type="submit"  style="width: 100px" value="Register">--}%
                            %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
                        %{--</div>--}%
                    %{--</g:form>--}%
                %{--</div>--}%
            %{--</div>--}%
            %{--<div class="col-lg-4 col-lg-offset-1" >--}%
                %{--<div class=" well bs-component">--}%
                %{--<div class ="form-group-lg">--}%
                %{--<g:if test="${error}">--}%
                %{--<h1>"${error}"<h1>--}%
                %{--</g:if>--}%
                %{--</div>--}%

                    %{--<g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="user" action="save" >--}%
                        %{--<legend>Commercial</legend>--}%
                        %{--<div class="form-group">--}%
                            %{--<label class="control-label" for="focusedInput">address</label>--}%
                            %{--<input class="form-control" id="focusedInput" type="text" name="firstName" placeholder="address">--}%
                        %{--</div>--}%

                        %{--<div class="form-group">--}%
                            %{--<label class="control-label" for="disabledInput">pincode</label>--}%
                            %{--<input class="form-control" id="disabledInput" type="text"  name="lastName" placeholder="pincode" >--}%
                        %{--</div>--}%

                        %{--<div class="form-group has-warning">--}%
                            %{--<label class="control-label" for="inputWarning">city</label>--}%
                            %{--<input type="text" class="form-control" id="inputWarning" name="username" placeholder="city">--}%
                        %{--</div>--}%

                        %{--<div class="form-group has-error">--}%
                            %{--<label class="control-label" for="inputError"></label>--}%
                            %{--<input type="password" class="form-control" id="inputError" name="password" placeholder="">--}%
                        %{--</div>--}%

                        %{--<div class="form-group has-success">--}%
                            %{--<label class="control-label" for="inputSuccess">Confirm Password</label>--}%
                            %{--<input type="password" class="form-control" id="inputSuccess" name="confirmPassword" placeholder="ConfirmPassword">--}%
                        %{--</div>--}%



                        %{--<label class="control-label" >PhotoUpload</label>--}%
                    %{--<g:uploadForm  controller="landing" action="index" >--}%
                        %{--<input type="file" name="photo"  id="photo"><br>--}%
                    %{--<input type="submit" class ="button"  value="upload">--}%
                    %{--</g:uploadForm>--}%

                    %{--<g:uploadForm action="login">--}%
                    %{--<input type="image" id="inputSmall" name="photo">--}%
                    %{--<input type="submit" value="upload" name="upload">--}%
                    %{--</g:uploadForm>--}%


                        %{--<div class="form-group">--}%
                            %{--<g:actionSubmit class="btn btn-primary"   action="save" value="update" ></g:actionSubmit>--}%
                            %{--<input type="submit"  style="width: 100px" value="Register">--}%
                            %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
                        %{--</div>--}%
                    %{--</g:form>--}%
                </div>
                    </div>
            </div>


        </div>
    </div>
    </section>
</body>
</html>