<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>CRUD</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Update Person's Details</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Person ID</label>
                        <input type="number" name="id" class="form-control" value="${list[0].ID}"><br>
                        <label>Full Name</label>
                        <input type="text" name="name" class="form-control" value="${list[0].Name}"><br>
                        <label>Mobile Number</label>
                        <input type="number" name="mobile" class="form-control" value="${list[0].Mobile}"><br>
                        <label>Country</label>
                        <select class="form-control" id="exampleFormControlSelect1" name="country_id">
                            <c:if test="${list[0].CountryID == 961}">  <option value="1601" selected>Lebanon</option></c:if> 
                            <c:if test="${list[0].CountryID != 961}"> <option value="1601" >Lebanon</option></c:if>     
                            
                            <c:if test="${list[0].CountryID == 33}">  <option value="388197" selected>France</option></c:if> 
                            <c:if test="${list[0].CountryID != 33}"> <option value="388197" >France</option></c:if>   
                            
                            <c:if test="${list[0].CountryID == 91}">  <option value="91978" selected>India</option></c:if> 
                            <c:if test="${list[0].CountryID != 91}"> <option value="91978" >India</option></c:if>   
                            
                            <c:if test="${list[0].CountryID == 971}">  <option value="973354" selected>UAE</option></c:if> 
                            <c:if test="${list[0].CountryID != 971}"> <option value="973354" >UAE</option></c:if>     
                        </select>
                        <br>
                        <label>City Zone</label>
                        <select class="form-control" id="exampleFormControlSelect1" name="city_id">
                            <c:if test="${list[0].CityID == 1601}">  <option value="1601" selected>Tyre</option></c:if> 
                            <c:if test="${list[0].CityID != 1601}"> <option value="1601" >Tyre</option></c:if>     

                            <c:if test="${list[0].CityID == 388197}">  <option value="388197" selected>Paris</option></c:if> 
                            <c:if test="${list[0].CityID != 388197}"> <option value="388197" >Paris</option></c:if>   

                            <c:if test="${list[0].CityID == 91978}">  <option value="91978" selected>New Delhi</option></c:if> 
                            <c:if test="${list[0].CityID != 91978}"> <option value="91978" >New Delhi</option></c:if>   

                            <c:if test="${list[0].CityID == 973354}">  <option value="973354" selected>Dubai</option></c:if> 
                            <c:if test="${list[0].CityID != 973354}"> <option value="973354" >Dubai</option></c:if> 
                        </select>
                        <br>
                        <input type="submit" value="Edit" class="btn btn-success">
                        <a href="index.htm">Home</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
