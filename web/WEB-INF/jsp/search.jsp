<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Search Results</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>FULL_NAME</th>
                                <th>MOBILE</th>
                                <th>COUNTRY_ID</th>
                                <th>CITY_ID</th>
                                <th>ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="given" items="${list}">
                            <tr>
                                <td>${given.ID}</td>
                                <td>${given.Name}</td>
                                <td>${given.Mobile}</td>
                                <td>${given.CountryID}</td>
                                <td>${given.CityID}</td>
                                <td>
                                    <a href="edit.htm?id=${given.ID}" class="btn btn-warning">Edit</a>
                                    <a href="delete.htm?id=${given.ID}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
