<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./Img/main-logo.png" type="image/x-icon"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Cake Template">
        <meta name="keywords" content="Cake, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Coffee Ordering System</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
              rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="./CSS/productHeader.css" type="text/css">
        <link rel="stylesheet" href="./CSS/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="./CSS/flaticon.css" type="text/css">
        <link rel="stylesheet" href="./CSS/barfiller.css" type="text/css">
        <link rel="stylesheet" href="./CSS/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="./CSS/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="./CSS/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="./CSS/nice-select.css" type="text/css">
        <link rel="stylesheet" href="./CSS/owl.carousel.css" type="text/css">
        <link rel="stylesheet" href="./CSS/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="./CSS/mystyle.css" type="text/css">
        <link rel="stylesheet" href="./CSS/headerRight.css" type="text/css">
        <link rel="stylesheet" href="./CSS/loadmore.css" type="text/css">
        <link rel="stylesheet" href="./CSS/dropdownMenuUser.css" type="text/css">

    </head>
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <jsp:include page="menu.jsp"></jsp:include>

            <section class="hero">
                <div class="hero__slider owl-carousel">
                    <div class="hero__item set-bg" data-setbg="./Img/hero/hero-2.jpg">
                        <div class="container">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <div class="hero__text">
                                        <h2>It’s not just coffee, it’s an experience.</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="./Img/hero/hero-1.jpg">
                        <div class="container">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <div class="hero__text">
                                        <h2>A 100% plant-based cafe. Accept no substitutes.</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <br/>
            <div class="categories">
                <div class="container">
                    <div class="row">
                        <div class="categories__slider owl-carousel">
                        <c:forEach items="${listC}" var="c">
                            <div class="categories__item ${tag == c.cid ? "cateHover" : ""}">
                                <div class="categories__item__icon">
                                    <a href="category?cid=${c.cid}"><img class="categories__item__icon--link" src="images/${c.cimage}"></a>
                                    <h5>${c.cname}</h5>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product Section Begin -->
        <div class="product__header">
            <div class="product__title"><a href="home" style="color: black;">Our Products</a></div>
            <div class="search-container">
                <form action="search">
                    <input oninput="searchByName(this)" name="txt" type="text" placeholder="Search..." >
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <section class="product spad">
            <div class="container ">
                <div id="content" class="row" >
                    <c:forEach items="${listP}" var="p">
                        <div class="product_ajax col-lg-3 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg">
                                    <a href="detail?pid=${p.productID}"><img src="images/${p.image}"/></a>
                                    <div class="product__label">
                                        <span>${p.productName}</span>
                                    </div>
                                </div>
                                <div class="product__item__text">
                                    <div class="product__item__price">${p.price}đ</div>
                                    <div class="cart_add">
                                        <a href="addToCart?pcartid=${p.productID}">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>
                <div class="loadmore">
                    <button onclick="loadMore()" id="loadMore">Load More</button>
                </div>
            </div>
        </section>

        <!-- Team Section Begin -->
        <section class="team spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-7">
                        <div class="section-title">
                            <span>Our team</span>
                            <h2>BKQ</h2>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="team__item set-bg" data-setbg="./Img/team/binn.jpg">
                            <div class="team__item__text">
                                <h6>Nguyễn Đức Lê Bin</h6>
                                <span>Member</span>
                                <div class="team__item__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="team__item set-bg" data-setbg="./Img/team/kiet.jpg">
                            <div class="team__item__text">
                                <h6>Lê Tuấn Kiệt</h6>
                                <span>Member</span>
                                <div class="team__item__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="team__item set-bg" data-setbg="./Img/team/thieu.jpg">
                            <div class="team__item__text">
                                <h6>Đinh Thiều Quang</h6>
                                <span>Member</span>
                                <div class="team__item__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Team Section End -->

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search End -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
                        function loadMore() {
                            var ammount = document.getElementsByClassName("product_ajax").length;
                            $.ajax({
                                url: "loadmore",
                                type: "get", //send it through get method
                                data: {
                                    exits: ammount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML += data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function searchByName(param) {
                            var txtSearch = param.value;
                            $.ajax({
                                url: "searchAjax",
                                type: "get", //send it through get method
                                data: {
                                    txt: txtSearch
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
        </script>

        <!-- Js Plugins -->

        <script src="./JS/jquery-3.3.1.min.js"></script>
        <script src="./JS/bootstrap.min.js"></script>
        <script src="./JS/jquery.nice-select.min.js"></script>
        <script src="./JS/jquery.barfiller.js"></script>
        <script src="./JS/jquery.magnific-popup.min.js"></script>
        <script src="./JS/jquery.slicknav.js"></script>
        <script src="./JS/owl.carousel.min.js"></script>
        <script src="./JS/jquery.nicescroll.min.js"></script>
        <script src="./JS/myJs.js"></script>
        <script src="https://kit.fontawesome.com/0f82ee5b25.js" crossorigin="anonymous"></script>
    </body>
</html>
