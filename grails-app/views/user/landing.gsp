<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 16/11/16
  Time: 7:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

<meta name="layout"  content="sample_application">
    <title></title>
</head>

<body>
<div class="container">
  <div class="row">
      <h1>For Sale </h1>
      <div class="col-md-6">
          <g:form controller="property" action="reterieve">

              <div   class="col-md-2">
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

  </div>

    <div class="row">
        <h1>For Rent </h1>
        <div class="col-md-6">
            <g:form controller="property" action="reterieve">

                <div   class="col-md-2">
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
                        <g:select name="pricerange" from="${['5000-10000', '10000-15000', '15000-20000']}"
                                  noSelection="['': 'Price ']">
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

    </div>
    </div>
</div>
</body>
</html>