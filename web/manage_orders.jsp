<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Orders Page</title>
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
                                <h2>Manage <b>Orders</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Date</th>
                                <th>User ID</th>
                                <th>Total Money</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listO}" var="o">
                                <tr>
                                    <td>${o.id}</td>
                                    <td>${o.date}</td>
                                    <td>${o.userid}</td>
                                    <td>${o.totalMoney}</td>
                                    <td>
                                        <a href="view_order?oid=${o.id}" class="view" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="View">&#xe8f4;</i></a>
                                        <a href="delete_order?oid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:if>
    </body>
</html>



