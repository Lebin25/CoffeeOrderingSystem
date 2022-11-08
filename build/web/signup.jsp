
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up Page</title>
        <link rel="stylesheet" href="./CSS/loginStyle.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <form action="signup" method="post" class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase">Sign up</h2>
                                    <p class="text-danger">${mess}</p>
                                    <p class="text-danger">${messS}</p>
                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="typeFullName">Full Name</label>
                                        <input name="name" type="text" id="typeFullName" class="form-control form-control-lg" />
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="typePhone">Phone</label>
                                        <input name="phone" type="text" id="typePhone" class="form-control form-control-lg" />
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="typeAddress">Address</label>
                                        <input name="address" type="text" id="typeAddress" class="form-control form-control-lg" />
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="typeUsername">Username</label>
                                        <input name="user" type="text" id="typeUsername" class="form-control form-control-lg" />
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="typePasswordX">Password</label>
                                        <input name="pass" type="password" id="typePasswordX" class="form-control form-control-lg" />
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="typePasswordX">Confirm Password</label>
                                        <input name="repass" type="password" id="typePasswordX" class="form-control form-control-lg" />
                                    </div>

                                    <button class="btn btn-outline-light btn-lg px-5" type="submit" style="font-weight: bold;">Sign up</button><br><br>
                                    <a href="login.jsp" style="font-size: 13px;
                                       text-decoration: none;
                                       color: #ffffff;
                                       display: inline-block;
                                       padding: 9px;
                                       position: relative;
                                       border: 1px solid #ffffff;
                                       border-radius: 5px;">Go to Login Page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
