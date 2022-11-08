<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Products Page</title>
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
        <style>
            .product__header{
                display: flex;
                justify-content: flex-end;
            }

            .dropdown {
                display: inline-block;
                position: relative;
                float: right;
            }
            .dropdown-content {
                display: none;
                position: absolute;
                width: 100%;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            }
            .dropdown:hover .dropdown-content {
                display: block;
            }
            .dropdown-content a {
                display: block;
                color: #000000;
                padding: 5px;
                text-decoration: none;
            }
            .dropdown-content a:hover {
                color: #FFFFFF;
                background-color: #00A4BD;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Products</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                                <a href="manager_category" class="btn btn-warning" ><i class="material-icons">&#xef3d;</i> <span>Manage Categories</span></a>						
                            </div>
                        </div>
                    </div>
                    <div class="product__header">
                        <div class="dropdown">
                            <button>Sort By</button>
                            <div class="dropdown-content">
                                <a href="manager_products">ID increase</a>
                                <a href="sortId_Decrease">ID decrease</a>
                                <a href="sortCategory_Increase">Category increase</a>
                                <a href="sortCategory_Decrease">Category decrease</a>
                            </div>
                        </div>
                    </div>

                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listP}" var="p">
                            <tr>
                                <td>${p.productID}</td>
                                <td>${p.productName}</td>
                                <td><img src="images/${p.image}"/></td>
                                <td>${p.price}đ</td>
                                <td>${p.title}</td>
                                <c:forEach items="${listC}" var="c">
                                    <c:if test="${c.cid == p.cateID}">
                                        <td>${c.cname}</td>
                                    </c:if>
                                </c:forEach>
                                <td>
                                    <a href="load_product?pid=${p.productID}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete_product?pid=${p.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Add Product -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add_product" method="post" enctype="multipart/form-data">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="file" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-control" required>
                                    <c:forEach items="${listC}" var="c">
                                        <<option value="${c.cid}">${c.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>



