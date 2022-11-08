
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Account Page</title>
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
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Account</b></h2>
                        </div>
                    </div>
                </div>
                <div id="editEmployeeModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="edit_account" method="post">
                                <div class="modal-body">					
                                    <div class="form-group">
                                        <label>ID</label>
                                        <input value="${detail.accountId}" name="id" type="text" class="form-control" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <input value="${detail.accountName}" name="name" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input value="${detail.phone}" name="phone" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input value="${detail.address}" name="address" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input value="${detail.username}" name="user" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input value="${detail.password}" name="pass" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Role</label>
                                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                                            <input value="${detail.isAdmin}" name="role" type="text" class="form-control" placeholder="Enter 1 for Admin or 0 for User" required>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.isAdmin == 0}">
                                            <input value="${detail.isAdmin}" name="role" type="text" class="form-control" placeholder="Enter 1 for Admin or 0 for User" readonly>
                                        </c:if>
                                    </div>					
                                </div>
                                <div class="modal-footer">
                                    <input type="submit" class="btn btn-success" value="Edit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
