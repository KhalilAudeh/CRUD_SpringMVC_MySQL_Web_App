<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>CRUD</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>New Person Registration</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Person ID</label>
                        <input type="number" name="id" class="form-control"><br>
                        <label>Full Name</label>
                        <input type="text" name="name" class="form-control"><br>
                        <label>Mobile Number</label>
                        <input type="number" name="mobile" class="form-control"><br>
                        <label>Country</label>
                        <select class="form-control" id="exampleFormControlSelect1" name="country_id">
                            <option value="961">Lebanon</option>
                            <option value="33">France</option>
                            <option value="91">India</option>
                            <option value="971">UAE</option>
                        </select>
                        <br>
                        <label>City Zone</label>
                        <select class="form-control" id="exampleFormControlSelect1" name="city_id">
                            <option value="1601">Tyre</option>
                            <option value="388197">Paris</option>
                            <option value="91978">New Delhi</option>
                            <option value="973354">Dubai</option>
                        </select>
                        <br>
                        <input type="submit" value="Add" class="btn btn-success">
                        <a href="index.htm">Home</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
