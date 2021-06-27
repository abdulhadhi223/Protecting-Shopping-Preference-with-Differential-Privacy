<%-- 
    Document   : index
    Created on : 9 Apr, 2021, 5:00:44 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Protecting Your Shopping Preference</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <!-- Load Require CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font CSS -->
        <link href="assets/css/boxicon.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
        <!-- Load Tempalte CSS -->
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/custom.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>
    <%
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Prodect Added Successfully');</script>
    <%            }
    %>
    <script>
        var loadFile = function (event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
    <body>
        <!-- Header -->
        <nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
            <div class="container d-flex justify-content-between align-items-center">
                <a class="navbar-brand h1">
                    <i class='bx bx-buildings bx-sm text-dark'></i>
                </a>
                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
                    <div class="flex-fill mx-xl-5 mb-2">
                        <ul class="nav navbar-nav mx-xl-5 text-center text-dark">
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Merchant_Home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active btn-outline-primary rounded-pill px-3" href="Add_product.jsp">Add Product</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="View_products.jsp">View Products</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="User_details.jsp">User Details</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="graph.jsp">Graph</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="index.jsp">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        <div id="work_banner" class="banner-wrapper bg-light w-100 py-5">
            <div class="banner-vertical-center-work container text-light d-flex justify-content-center align-items-center py-5 p-0">
                <div class="banner-content col-lg-8 col-12 m-lg-auto text-center">
                    <h1 style="color: #3366ff;" class="banner-heading h2 display-3 pb-5 semi-bold-600 typo-space-line-center">
                        Protecting Your Shopping Preference with Differential Privacy
                    </h1>
                </div>
            </div>
        </div>
        <section class="container py-5"> 
            <center><h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">Add Products</h1></center><br><br>
            <div class="row pb-4">
                <div class="col-lg-5">
                    <form class="contact-form row" method="post" action="add_product" role="form">
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Product Name :</label>
                                <input type="text" class="form-control" name="pname" placeholder="Enter Product Name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Brand Name :</label>
                                <input class="form-control" placeholder="Enter Brand Name" type="text" name="brand_name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Product Description :</label><br>
                                <textarea class="form-control" placeholder="Enter Description" name="description" style="background-color: transparent;border-color: #cccccc;border-width: 0.01px;height: 100px;resize: none;"
                                          required="required"></textarea>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Price :</label>
                                <input class="form-control" placeholder="Enter Product Price" type="text" name="price" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Tag :</label>
                                <input class="form-control" placeholder="Enter Product Tag" type="text" name="tag" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Select Category :</label><select class="form-control" name="category" required="required">
                                    <option value="" style="color: black;">--Category--</option>
                                    <option style="color: black;">Mobile</option>
                                    <option style="color: black;">Laptop</option>
                                    <option style="color: black;">Accessories</option>
                                    <option style="color: black;">Electronics</option>
                                    <option style="color: black;">Others</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Product Image :</label>
                                <input  type="file" class="form-control" name="photo" accept="image/x-png,image/gif,image/jpeg" onchange="loadFile(event)" required="required" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Submit</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6">
                    <br><br><br><br><br><br>
                    <center><img id="output" src="#" alt="Product Image" width="450" height="400"></center>
                </div>
            </div>
        </section>
        <footer>
            <div class="w-100 bg-primary py-3">
                <div class="container">
                    <div class="row pt-2">
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->
        <!-- Bootstrap -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <!-- Load jQuery require for isotope -->
        <script src="assets/js/jquery.min.js"></script>
        <!-- Isotope -->
        <script src="assets/js/isotope.pkgd.js"></script>
        <!-- Page Script -->
        <script>
                                    $(window).load(function () {
                                        // init Isotope
                                        var $projects = $('.projects').isotope({
                                            itemSelector: '.project',
                                            layoutMode: 'fitRows'
                                        });
                                        $(".filter-btn").click(function () {
                                            var data_filter = $(this).attr("data-filter");
                                            $projects.isotope({
                                                filter: data_filter
                                            });
                                            $(".filter-btn").removeClass("active");
                                            $(".filter-btn").removeClass("shadow");
                                            $(this).addClass("active");
                                            $(this).addClass("shadow");
                                            return false;
                                        });
                                    });
        </script>
        <!-- Templatemo -->
        <script src="assets/js/templatemo.js"></script>
        <!-- Custom -->
        <script src="assets/js/custom.js"></script>

    </body>

</html>
