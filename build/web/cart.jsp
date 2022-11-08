<%-- 
    Document   : cart
    Created on : Jul 8, 2022, 4:03:01 PM
    Author     : Bin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./CSS/mystyle.css" type="text/css">
        <link rel="stylesheet" href="./CSS/headerRight.css" type="text/css">
        <link rel="stylesheet" href="./CSS/dropdownMenuUser.css" type="text/css">

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'>

        <style>
            a{text-decoration: none;}

            .num:hover{
                text-decoration: none;
                outline: none;
                color: #0a58ca;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <section class="h-100" style="background-color: #eee;">

                <div class="container h-100 py-5">
                    <div class="row d-flex justify-content-center h-100">
                        <div class="col-10">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <h3 class="fw-normal mb-0 text-black">Your Cart</h3>
                            </div>
                        <c:set var="o" value="${sessionScope.cart}"/>

                        <c:forEach items="${o.items}" var="i">
                            <div class="card rounded-3 mb-4">
                                <div class="card-body p-4">
                                    <div class="row d-flex justify-content-between align-items-center">
                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                            <img
                                                src="images/${i.product.image}"
                                                class="img-fluid rounded-3" alt="Cotton T-shirt">
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                            <p class="lead fw-normal mb-2">${i.product.productName}</p>
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                            <button class="btn btn-link px-2">
                                                <a class="num" href="process?num=-1&pid=${i.product.productID}"><i class="fas fa-minus"></i></a>
                                            </button>

                                            <input id="form1" min="0" name="quantity" value="${i.quantity}" type="number"
                                                   class="form-control form-control-sm" />

                                            <button class="btn btn-link px-2">
                                                <a class="num" href="process?num=1&pid=${i.product.productID}"><i class="fas fa-plus"></i></a>
                                            </button>
                                        </div>
                                        <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                            <h5 class="mb-0">${i.price*i.quantity}đ</h5>
                                        </div>
                                        <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                            <a href="deleteCart?deletepid=${i.product.productID}" class="text-danger"><i class="fas fa-trash fa-lg"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>
                        <div class="mb-4 d-flex flex-row-reverse">
                            <button type="button" class="btn btn-warning btn-block">
                                <a href="home" style="text-decoration: none;color: #000;">
                                    Continue watching products
                                </a>
                            </button>
                        </div>

                        <div class="card mb-4">
                            <div class="card-body p-4 d-flex flex-row">
                                <div class="form-outline flex-fill">
                                    <input type="text" id="form1" class="form-control form-control-lg" />
                                    <label class="form-label" for="form1">Voucher Code</label>
                                </div>
                                <button type="button" class="btn btn-outline-warning btn-lg ms-3">Apply</button>
                            </div>
                            <div class="card-body mb-4 d-flex flex-row-reverse justify-content-center">
                                <p class="lead fw-normal mb-2">Total: ${total}đ</p>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-body d-grid">
                                <button id="orderButton" class="btn btn-warning btn-block btn-lg">
                                    <a href="javascript:delay('order')" style="text-decoration: none;color: #000;">
                                        Order
                                    </a>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>                 
        <script type="text/javascript">
            document.getElementById('orderButton').addEventListener('click', function () {
                Swal.fire("Order Successful!", "We will contact you when delivery arrives.", "success");
            });
            function delay(URL) {
                setTimeout(function () {
                    window.location = URL;
                }, 1500);
            }
        </script>
    </body>
</html>
