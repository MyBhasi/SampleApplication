%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%

<html>
<body>

<table class="table">
    <thead class="thead-inverse">
    <tr>
        <th>#</th>
        <th>city</th>
        <th>Sale/Rent</th>
        <th>Room</th>
        <th>Size</th>
        <th> Price</th>
        <th>date Posted</th>
        <th>propertyType</th>

    </tr>
    </thead>
    <tr>
        <g:each in="${s}" var="st">
        <th scope="row"></th>
        <td>${st?.city}</td>
        <td>${st?.propertyFor}</td>
        %{--<td>${st?.bedRoom}</td>--}%
        <td>${st?.size}</td>
        <td>${st?.price}</td>
        <td>${st?.dateCreated}</td>
        <td>${st?.domainClass.naturalName}</td>
        </g:each>
    </tr>
    </tbody>
</table>
</body>
</html>