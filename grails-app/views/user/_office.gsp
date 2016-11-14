

<html>
<body>


        <div class="aa-advance-search-area">
            <div class="form-group">
                <div class="aa-advance-search-top">
                    <div class="row">
                        <p><h1>Post Property</h1></p>
                        <div class="col-md-4">
                        <div class="aa-single-advance-search">
                            <g:form controller="property"  action="save">
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


                                <div class="btn-group" data-toggle="buttons">

                                    <label class="btn btn-primary">
                                        <input type="radio" name="rent" id="option2" autocomplete="off">Rent
                                    </label>
                                    <label class="btn btn-primary">
                                        <input type="radio" name="sale" id="option3" autocomplete="off">Sale
                                    </label>
                                </div>
                                <br>
                                <label>PropertyType</label>

                                <div class="row">

                                    <g:select  class="property" name="propertyType" id="property" onchange="CheckValue()" from="${['Commercial','Residential']}" noSelection="['null': 'choose As']"/>
                                    <div class="col-sm-6">

                                        <div class="form-group">
                                            <label>Residential</label><g:select  name="homeType" from="${['1Bhk','2Bhk','3Bhk','4Bhk']}"  noSelection="['null': 'Bedroom']" />
                                        %{--<select class="form-control" id="exampleSelect1" >--}%
                                        %{--<option>1Bhk</option>--}%
                                        %{--<option>2Bhk</option>--}%
                                        %{--<option>3Bhk</option>--}%
                                        %{--<option>4Bhk</option>--}%
                                        %{--<option>5Bhk</option>--}%
                                        %{--</select>--}%
                                        </div></div>
                                    <div class="col-sm-6">
                                        <label>Commercial</label>
                                        <div class="input-group">
                                            <input type="text" name="size" id="color" placeholder="Enter Area"  >
                                            <div class="input-group-addon">sq.ft</div>
                                        </div>
                                    </div>
                                </div>
                            %{--<g:select  name="propertyType" from="${['Commercial','Residential']}" noSelection="['null': 'Propert Type']"/>--}%

                            %{--<g:select  name="nkj" from="${['1Bhk','2Bhk','3Bhk','4Bhk']}" noSelection="['null': 'Bedroom']" ></g:select>--}%

                                <label>Price</label>
                            %{--<input type="text" placeholder="Price">--}%
                                <label class="sr-only" for="exampleInputAmount">Amount (in Rupees)</label>
                                <div class="input-group">
                                    <div class="input-group-addon">Rs</div>
                                    <input type="number" class="form-control" id="exampleInputAmount" placeholder="Amount">
                                    <div class="input-group-addon">.00</div>
                                </div>
                                <div class="form-group"></div>

                                <label class="control-label" >Property Image</label>
                            %{--<g:uploadForm  controller="landing" action="index" >--}%
                                <input type="file" class="form-control-file" name="image"  id="photo"><br>
                                </div>
                                <g:actionSubmit class="btn-success" controller="property" action="save" value="Submit" name="submit"/>
                            </g:form>
                        </div>

                    </div>



                </div></div></div>


        %{--<div class="aa-single-advance-search">--}%
        %{--<select>--}%
        %{--<option value="0" selected>Range(Rs)</option>--}%
        %{--<option value="1">50lakh-70lakh</option>--}%
        %{--<option value="2">70lakh-1Crore</option>--}%
        %{--<option value="3">Plot</option>--}%
        %{--<option value="4">Commercial</option>--}%
        %{--</select>--}%
        %{--</div>--}%
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
    %{--<div class="aa-advance-search-bottom">--}%
    %{--<div class="row">--}%
    %{--<div class="col-md-6">--}%
    %{--<div class="aa-single-filter-search">--}%
    %{--<span>AREA (SQ)</span>--}%
    %{--<span>FROM</span>--}%
    %{--<span id="skip-value-lower" class="example-val">30.00</span>--}%
    %{--<span>TO</span>--}%
    %{--<span id="skip-value-upper" class="example-val">100.00</span>--}%
    %{--<div id="aa-sqrfeet-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--<div class="col-md-6">--}%
    %{--<div class="aa-single-filter-search">--}%
    %{--<span>PRICE ($)</span>--}%
    %{--<span>FROM</span>--}%
    %{--<span id="skip-value-lower2" class="example-val">30.00</span>--}%
    %{--<span>TO</span>--}%
    %{--<span id="skip-value-upper2" class="example-val">100.00</span>--}%
    %{--<div id="aa-price-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--</div>--}%
</div>
</div>
</div>


</body>
</html>