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
                            <a class="aa-property-home" href="index.html">Sample Application</a>
                            <h4>Sign in to your account</h4>
                        </div>

                        <form class="contactform" method="POST" action="${resource(file: '/j_spring_security_check')}">
                            <div class="aa-single-field">
                                <label>Username <span class="required">*</span></label>
                                <input type="email" required="required" aria-required="true" value="" name="j_username">
                            </div>

                            <div class="aa-single-field">
                                <label>Password <span class="required">*</span></label>
                                <input type="password" name="j_password">
                            </div>

                            <div class="aa-single-field">
                                <label>
                                    <input type="checkbox" name="_spring_security_remember_me"> Remember me
                                </label>
                            </div>

                            <div class="aa-single-submit">
                                <input type="submit" value="login" class="aa-browse-btn" name="submit">

                                <p>Don't Have A Account Yet? <a
                                        href="${createLink(controller: "dashboard", action: "register")}">CREATE NOW!</a>
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>