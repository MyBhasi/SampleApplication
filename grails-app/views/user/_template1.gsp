%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%
%{--<div class="container-fluid">--}%
    %{--<div class="row">--}%
        %{--<div class="col-md-6">--}%
        %{--<g:render template="/dashboard/sideBar"></g:render>--}%
        %{--</div>--
            %{--<g:if test="${resourceList}">--}%
%{--<div class="row">--}%
%{--<div class="bs-docs-section">--}%

        <h3 class="text-center alert-info"><b>Posted Property </b></h3>
%{--<div class="row">--}%

<div class="col-md-12">
    %{--<g:if test="${st.domainClass.naturalName=='Commercial'}">--}%
    <h1>Commercial</h1>
    %{--${set}--}%

<table class="table">
    <thead class="thead-inverse">
    <tr>
        <th>#</th>
        <th>city</th>
        <th>address</th>
        <th>Sale/Rent</th>
        <th>Size</th>
        <th> Price</th>
        %{--<th>propertyType</th>--}%
        <th>floorNo</th>
        <th>parkingFacility</th>
        <th>cafeteriaFaciliy</th>
        <th>date Posted</th>
        <th>Edit</th>
        <th>delete</th>
    </tr>
    </thead>

<tbody>

%{--<g:if test="${st.domainClass.naturalName=='Office'}">--}%

<g:each in="${set}"   var="st">
    <g:if test="${st.domainClass.naturalName=='Office'}">
<tr>


<td>#</td>
<td>${st?.city}</td>
<td>${st?.address}</td>
<td>${st?.propertyFor}</td>
<td>${st?.size}</td>
<td> ${st?.price}</td>
%{--<td>st.propertyType</td>--}%
<td>${st?.floorNo}</td>
<td>${st?.parkingFacility}</td>
<td>${st?.cafeteriaAvailability}</td>
<td>${st?.dateCreated}</td>
<td><g:link controller="property" action="editOfficeProperty" params="[id:st.id]">Edit</g:link> </td>
<td><g:link controller="property" action="deleteProperty"  params="[id:  st.id]">Delete</g:link> </td>

</tr>
    </g:if>
    </g:each>


</tbody>

    %{--<g:else>--}%
</table>
</div>


<div class="col-md-12">
            <h1>Residential</h1>

            <table class="table">
                <thead class="thead-inverse">
                <tr>
                    <th>#</th>
                    <th>city</th>
                    <th>address</th>
                    <th>Sale/Rent</th>
                    <th>Rooms</th>
                    <th>Facing</th>
                    <th>Size</th>
                    <th>floor</th>
                    <th>parkingFacility</th>
                    <th> Price</th>
                    %{--<th>propertyType</th>--}%
                    <th>date Posted</th>
                    <th>Edit</th>
                    <th>delete</th>

                </tr>
                </thead>


                <tbody>

        <g:each in="${set}"  status="i" var="st">
            <g:if test="${st.domainClass.naturalName=='Home'}">
                <tr>
                <td>#</td>
                <td>${st?.city}</td>
                <td>${st?.address}</td>
                <td>${st?.propertyFor}</td>
                <td>${st?.bedRoom}</td>
                <td>${st?.facing}</td>
                <td>${st?.size}</td>
                <td>${st?.floorNo}</td>
                <td>${st?.parkingFacilty}</td>
                <td>${st?.price}</td>
                %{--<td>stpropertyType</td>--}%
                <td>${st?.dateCreated}</td>
                <td><g:link controller="property" action="editHomeProperty" params="[id:st.id]">Edit</g:link> </td>
                <td><g:link controller="property" action="deleteProperty" params="[id:st.id]">Delete</g:link> </td>
                </tr>
            </g:if>
        </g:each>
                </tbody>

            </table>
    </div>
%{--</g:else>--}%

        %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%
        %{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
