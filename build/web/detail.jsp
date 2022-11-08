<%-- 
    Document   : detail
    Created on : Jul 4, 2022, 2:30:14 PM
    Author     : Bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <link rel="stylesheet" href="./CSS/detailCSS.css" type="text/css">
        <link rel="stylesheet" href="./CSS/mystyle.css" type="text/css">
        <link rel="stylesheet" href="./CSS/headerRight.css" type="text/css">
        <link rel="stylesheet" href="./CSS/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="./CSS/flaticon.css" type="text/css">
        <link rel="stylesheet" href="./CSS/barfiller.css" type="text/css">
        <link rel="stylesheet" href="./CSS/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="./CSS/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="./CSS/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="./CSS/nice-select.css" type="text/css">
        <link rel="stylesheet" href="./CSS/owl.carousel.css" type="text/css">
        <link rel="stylesheet" href="./CSS/slicknav.min.css" type="text/css"> 
        <link rel="stylesheet" href="./CSS/dropdownMenuUser.css" type="text/css">

    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="pd-wrap">
                <div class="container container__detail">
                    <div class="heading-section">
                        <h2>Product Details</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="item">
                                <img src="images/${detail.image}" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="product-dtl">
                            <div class="product-info">
                                <div class="product-name">${detail.productName}</div>
                                <div class="product-price-discount"><span>${detail.price}đ</span></div>
                            </div>
                            <p>${detail.title}</p>
                            <div class="product-count">
                                <a href="addToCart?pcartid=${detail.productID}" class="round-black-btn">Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="JS/detailJS.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="./JS/jquery-3.3.1.min.js"></script>
        <script src="./JS/bootstrap.min.js"></script>
        <script src="./JS/jquery.nice-select.min.js"></script>
        <script src="./JS/jquery.barfiller.js"></script>
        <script src="./JS/jquery.magnific-popup.min.js"></script>
        <script src="./JS/jquery.slicknav.js"></script>
        <script src="./JS/owl.carousel.min.js"></script>
        <script src="./JS/jquery.nicescroll.min.js"></script>
        <script src="./JS/index.js"></script>
        <script src="https://kit.fontawesome.com/0f82ee5b25.js" crossorigin="anonymous"></script>
    </body>
</html>
