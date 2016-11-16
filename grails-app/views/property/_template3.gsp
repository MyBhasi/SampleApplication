<g:form method ="post" class="bs-component"  enctype="multipart/form-data"  id="${id}" controller="property" action="saveOffice" >
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
                                                    noSelection="['': 'choose']" value="${officeCO?.parkingFacility=='true'?'yes':'No'}"/>
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
        <g:actionSubmit class="btn btn-primary"   action="saveOffice" id="${id}" value="Update" ></g:actionSubmit>
        %{--<input type="submit"  style="width: 100px" value="Register">--}%
        %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
    </div>
</g:form>