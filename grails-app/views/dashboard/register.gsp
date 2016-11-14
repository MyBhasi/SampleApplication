<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 10/11/16
  Time: 4:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta name="layout" content="sample_application">
    <title></title>
</head>

<body>

%{--<div class="row">--}%
%{--<div class="col-lg-6">--}%
%{--<div class="well bs-component">--}%
%{--<legend>Sign In</legend>--}%

%{--<form method="POST" action="${resource(file: '/j_spring_security_check')}"--}%
%{--class="form-horizontal">--}%
%{--<div class="form-group">--}%
%{--<label for="username1" class="col-sm-2 control-label">Username</label>--}%

%{--<div class="col-sm-10">--}%
%{--<g:textField class="form-control" id="username1" name="j_username"--}%
%{--placeholder="Enter username"/>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="form-group">--}%
%{--<label for="password1" class="col-sm-2 control-label">Password</label>--}%

%{--<div class="col-sm-10">--}%
%{--<g:passwordField class="form-control" id="password1" name="j_password"--}%
%{--placeholder="Enter password"/>--}%
%{--</div>--}%
%{--</div>--}%
%{--<label>--}%
%{--<input type="checkbox" value="remember-me"> Remember me--}%
%{--</label>--}%
%{--<div class="form-group">--}%
%{--<div class="col-sm-offset-2 col-sm-10">--}%
%{--<button type="submit" class="btn btn-default col-sm-2">Login</button>--}%

%{--</div>--}%
%{--<label>--}%
%{--<g:link   controller="register" action="forget">--}%
%{--Forget Your Password?--}%
%{--</g:link>--}%
%{--</label>--}%
%{--</form>--}%
%{--</div>--}%


<section id="aa-signin">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-signin-area">
                    <div class="aa-signin-form">
                        <div class="aa-signin-form-title">
                            %{--<a class="aa-property-home" href="index.html">Property Home</a>--}%
                            <h4>Create your account and Stay with us</h4>
                        </div>
                        <g:form class="contactform" controller="dashboard" action="save">
                            <div class="aa-single-field">
                                <label>FirstName <span class="required">*</span></label>
                                <input type="text" required="required" aria-required="true" value="" name="firstName">
                            </div>

                            <div class="aa-single-field">
                                <label>LastName <span class="required">*</span></label>
                                <input type="text" name="lastName">
                            </div>

                            <div class="aa-single-field">
                                <label>Phone Number<span class="required">*</span></label>
                                <input type="text" name="phoneNo">
                                <g:hasErrors bean="${userCO}" field="phoneNo">
                                    <g:fieldError bean="${userCO}" field="phoneNo"></g:fieldError>
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">
                                <label>Email/UserName <span class="required">*</span></label>
                                <input type="email" required="required" name="username">
                                <g:hasErrors bean="${userCO}" field="username">
                                %{--<g:fieldError field="${userCO}" bean="username"></g:fieldError>--}%
                                    <g:message code="UserCo.property.username.unique.error"></g:message>
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">

                                <label>Password <span class="required">*</span></label>
                                <input type="password" name="password">
                                <g:hasErrors bean="${userCO}" field="password">
                                    <g:fieldError field="${userCO}" bean="password"></g:fieldError>
                                </g:hasErrors>
                            </div>


                            <div class="aa-single-field">
                                <label>Confirm Password <span class="required">*</span></label>
                                <input type="password" name="confirmPassword">
                                <g:hasErrors bean="${userCO}" field="confirmPassword">
                                    <g:fieldError bean="${userCO}" field="confirmPassword"></g:fieldError>
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">
                                <b>I am<b><br>
                            <g:select name="role" from="${['Owner', 'Customer', 'Agent']}"
                                      noSelection="['': 'choose As']"></g:select>
                            <g:hasErrors bean="${userCO}" field="role">
                                <g:message code="userCO,property.role.error"></g:message>
                            </g:hasErrors>

                            <div class="aa-single-submit">
                                <input type="submit" value="Create Account" name="submit">
                            </div>
                        </g:form>
                    </div>
                    </div>
                </div>
            </div>
        </div>

</section>


<!-- jQuery library -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
%{--<script src="js/jquery.min.js"></script>--}%
%{--<!-- Include all compiled plugins (below), or include individual files as needed -->--}%
%{--<script src="js/bootstrap.js"></script>--}%
<!-- slick slider -->
%{--<script type="text/javascript" src="js/slick.js"></script>--}%
<!-- Price picker slider -->
%{--<script type="text/javascript" src="js/nouislider.js"></script>--}%

<!-- Custom js -->
%{--<script src="js/custom.js"></script>--}%

</body>
</html>