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
    <script src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <meta name="layout" content="sample_application">
</head>

<body>
<section id="aa-slider">

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
            <h1>${sucess}</h1>
            <myNamespace:post userID="${sec.loggedInUserInfo(field: 'id')}"/>
            %{--<g:render template="/user/template1"  bean="${set}"></g:render>--}%
            %{--</div>--}%

            %{--<g:link  controller="property"  action="postedProperty"  ><h1>Posted Property</h1></g:link>--}%

        </div>
    </div>

</section>

</body>
</html>