<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Accounts Page</title>
        <link rel="stylesheet" href="./CSS/manageProduct.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./CSS/mystyle.css" type="text/css">
        <link rel="stylesheet" href="./CSS/headerRight.css" type="text/css">
        <link rel="stylesheet" href="./CSS/dropdownMenuUser.css" type="text/css">

    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <c:if test="${sessionScope.acc.isAdmin == 1}">
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Accounts</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Full Name</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listA}" var="a">
                                <tr>
                                    <td>${a.accountId}</td>
                                    <td>${a.accountName}</td>
                                    <td>${a.phone}</td>
                                    <td>${a.address}</td>
                                    <td>${a.username}</td>
                                    <td>${a.password}</td>
                                    <c:if test="${a.isAdmin == 1}">
                                        <td>Admin</td>
                                    </c:if>
                                    <c:if test="${a.isAdmin == 0}">
                                        <td>User</td>
                                    </c:if>
                                    <td>
                                        <a href="load_account?aid=${a.accountId}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                        <c:if test="${a.accountId != sessionScope.acc.accountId}">
                                            <a href="delete_account?aid=${a.accountId}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:if>
        <c:if test="${sessionScope.acc.isAdmin == 0}">
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Your <b>Account</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Full Name</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listA}" var="a">
                                <c:if test="${a.accountId == sessionScope.acc.accountId}">
                                    <tr>
                                        <td>${a.accountId}</td>
                                        <td>${a.accountName}</td>
                                        <td>${a.phone}</td>
                                        <td>${a.address}</td>
                                        <td>${a.username}</td>
                                        <td>${a.password}</td>
                                        <c:if test="${a.isAdmin == 1}">
                                            <td>Admin</td>
                                        </c:if>
                                        <c:if test="${a.isAdmin == 0}">
                                            <td>User</td>
                                        </c:if>
                                        <td>
                                            <a href="load_account?aid=${sessionScope.acc.accountId}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                            <c:if test="${a.accountId != sessionScope.acc.accountId}">
                                                <a href="delete_account?aid=${a.accountId}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:if>
    </body>
</html>



