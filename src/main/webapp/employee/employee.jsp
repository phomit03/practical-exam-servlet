<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 25/05/2023
  Time: 8:34 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
    <h1 style="margin: 50px">Create Employee:
        <a href="/employeeServlet" class="btn btn-primary" style="float: right">Back Employee List ></a>
    </h1>

    <form action="/employeeServlet" method="post" style="width: 50%; margin: 0 auto">
        <input type="hidden" name="action" value="createEmployee">

        <div class="mb-3">
            <input type="hidden" class="form-control" name="id" id="id">
        </div>
        <div class="mb-3">
            <label class="form-label">Employee Name</label>
            <input type="text" class="form-control" name="fullname" id="fullname">
        </div>
        <div class="mb-3">
            <label class="form-label">Employee Birthday</label>
            <input type="date" class="form-control" name="birthday" id="birthday">
        </div>
        <div class="mb-3">
            <label class="form-label">Employee Address</label>
            <input type="text" class="form-control" name="address" id="address">
        </div>

        <div class="mb-3">
            <label class="form-label">Employee Position</label>
            <input type="text" class="form-control" name="position" id="position">
        </div>

        <div class="mb-3">
            <label class="form-label">Employee Department</label>
            <input type="text" class="form-control" name="department" id="department">
        </div>

        <button type="reset" class="btn btn-danger" style="float: left">Reset</button>
        <button type="submit" class="btn btn-success" style="float: right">Submit</button>
    </form>
</body>
</html>
