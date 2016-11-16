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
                                <input type="text" required="required" value="${userCO?.firstName}" aria-required="true"
                                       name="firstName">
                                <g:hasErrors bean="${userCO}" field="firstName">
                                    <g:fieldError field="firstName" bean="${userCO}"></g:fieldError>
                                %{--<g:message  code="User.firstName.blank"></g:message>--}%
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">
                                <label>LastName <span class="required">*</span></label>
                                <input type="text" value="${userCO?.lastName}" name="lastName">
                                <g:hasErrors bean="${userCO}" field="lastName">
                                    <g:fieldError field="lastName" bean="${userCO}"></g:fieldError>
                                %{--<g:message code="User.lastName.blank"></g:message>--}%
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">
                                <label>Phone Number<span class="required">*</span></label>
                                <input type="text" value="${userCO?.phoneNo}" name="phoneNo">
                                <g:hasErrors bean="${userCO}" field="phoneNo">
                                    <g:fieldError bean="${userCO}" field="phoneNo"></g:fieldError>
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">
                                <label>Email/UserName <span class="required">*</span></label>
                                <input type="email" required="required" value="${userCO?.username}" name="username">
                                <g:hasErrors bean="${userCO}" field="username">

                                    <g:fieldError bean="${userCO}" field="username"></g:fieldError>
                                </g:hasErrors>
                            </div>

                            <div class="aa-single-field">

                                <label>Password <span class="required">*</span></label>
                                <input type="password" name="password">
                                <g:hasErrors bean="${userCO}" field="password">
                                    <g:renderErrors bean="${userCO}" field="password" as="list">
                                    </g:renderErrors>
                                %{--<g:fieldError bean="${userCO}" field="password">--}%
                                %{--</g:fieldError>--}%
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
                                <g:message code="UserCO.property.role.error"></g:message>
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