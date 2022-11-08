<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Off canvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__cart">
        <div class="offcanvas__cart__links">
            <a href="#" class="search-switch"><img src="./Img/icon/search.png" alt=""></a>
        </div>
        <div class="offcanvas__cart__item">
            <a href="#"><img src="./Img/icon/cart.png" alt=""> <span>0</span></a>
        </div>
    </div>
    <div class="offcanvas__logo">
        <a href="home"><img src="./Img/main-logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__option">
        <ul>
            <li><a href="#">Sign in</a></li>
            <li><a href="#">Sign up</a></li>
        </ul>
    </div>
</div>

<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__top__inner">
                        <div class="header__top__left">
                            <ul>
                                <li style="font-size: 20px;font-weight: 700;" ><a href="home" style="color: #4d2c00;">Home</a></li>
                                    <c:if test="${sessionScope.acc == null}">
                                    <li style="font-size: 16px;font-weight: 500;"><a href="login">Log in</a></li>
                                    <li style="font-size: 16px;font-weight: 500;"><a href="signup.jsp">Sign up</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.acc != null}">
                                    <li style="font-size: 16px;font-weight: 500;">Hello ${sessionScope.acc.accountName}</li>
                                    <li style="font-size: 16px;font-weight: 500;"><a href="logout">Log out</a></li>
                                    </c:if>
                            </ul>
                        </div>
                        <div class="header__logo">
                            <a href="home" style="font-family:Brush Script MT;font-size: 40px;color: #4d2c00;"><img src="./Img/main-logo.png" alt="">COS</a>
                        </div>
                        <div class="header__top__right">
                            <ul>
                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                    <li class="admin_action"><a href="manager_accounts">Manage Accounts</a></li>
                                    <li class="admin_action"><a href="manager_products">Manage Products</a></li>
                                    <li class="admin_action" style="margin-left: 33Px;margin-right: -49Px;"><a href="manager_orders">Manage Order</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.acc != null && sessionScope.acc.isAdmin == 0}">
                                    <li>
                                        <div class="dropdown">
                                            <a href="manager_accounts"><img src="./Img/icon/user.png" style="width: 27px;"></a>
                                            <div class="dropdown-content">
                                                <a href="manager_accounts"><span>Your Account</span></a>
                                            </div>
                                        </div>
                                    </li>   
                                </c:if>
                                <li>
                                    <div class="header__top__right__cart" >
                                        <a href="cart.jsp" style="right: -85px; top: 4px;"><img src="./Img/icon/cart.png" alt=""><span>${sessionScope.size}</span></a>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </div>

</header>

