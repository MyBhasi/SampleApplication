<g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="property" action="updateHome" >
    <g:hiddenField name="id" ></g:hiddenField>
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
                                                    noSelection="['': 'choose']" value="${homeCO.parkingFacility}"/>
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
                  noSelection="['': 'Facing']"  value="${homeCO?.facing}" />
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
        <g:actionSubmit class="btn btn-primary"   action="updateHome"  value="update" ></g:actionSubmit>
        %{--<input type="submit"  style="width: 100px" value="Register">--}%
        %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
    </div>
</g:form>