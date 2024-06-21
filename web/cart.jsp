<%-- 
    Document   : cart
    Created on : Jun 15, 2024, 8:57:50 PM
    Author     : nchln
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Links of CSS files -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/boxicons.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/rangeSlider.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/dark.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">

        <title>Electronnity - Cart</title>

        <link rel="icon" type="image/png" href="assets/img/favicon.png">
    </head>
    <body>

        <!-- Start Navbar Area -->
        <div class="navbar-area">
            <div class="xton-responsive-nav">
                <div class="container">
                    <div class="xton-responsive-menu">
                        <div class="logo">
                            <a href="#">
                                <img src="assets/img/light-mode_logo.png" class="main-logo" alt="logo">
                                <img src="assets/img/dark-mode_logo.png" class="white-logo" alt="logo">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="xton-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="index.html">
                            <img src="assets/img/light-mode_logo.png" class="main-logo" alt="logo">
                            <img src="assets/img/dark-mode_logo.png" class="white-logo" alt="logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="#" class="nav-link">Home </a>

                                <li class="nav-item megamenu"><a href="#" class="nav-link active">Shop </a> 

                                <li class="nav-item megamenu"><a href="#" class="nav-link">Login </a>

                                <li class="nav-item megamenu"><a href="#" class="nav-link">Main </a>
                                    
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Navbar Area -->

        <!-- Start Sticky Navbar Area -->
        <div class="navbar-area header-sticky">
            <div class="xton-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="#">
                            <img src="assets/img/light-mode_logo.png" class="main-logo" alt="logo">
                            <img src="assets/img/white-logo.png" class="white-logo" alt="logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="#" class="nav-link">Home </a>

                                <li class="nav-item megamenu"><a href="#" class="nav-link active">Shop </a>
                            
                                <li class="nav-item megamenu"><a href="#" class="nav-link">Login </a>
                                
                                <li class="nav-item megamenu"><a href="#" class="nav-link">Main </a>

                                </li>
                            </ul>

                            <div class="others-option">
                                <div class="option-item">
                                    <div class="search-btn-box">
                                        <i class="search-btn bx bx-search-alt"></i>
                                    </div>
                                </div>

                                <div class="option-item">
                                    <div class="cart-btn">
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#shoppingCartModal"><i class='bx bx-shopping-bag'></i><span>0</span></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Header Area -->

        <!-- Start Search Overlay -->
        <div class="search-overlay">
            <div class="d-table">
                <div class="d-table-cell">
                    <div class="search-overlay-layer"></div>
                    <div class="search-overlay-layer"></div>
                    <div class="search-overlay-layer"></div>
                    
                    <div class="search-overlay-close">
                        <span class="search-overlay-close-line"></span>
                        <span class="search-overlay-close-line"></span>
                    </div>

                    <div class="search-overlay-form">
                        <form>
                            <input type="text" class="input-search" placeholder="Search here...">
                            <button type="submit"><i class='bx bx-search-alt'></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Search Overlay -->

        <!-- Start Page Title -->
        <div class="page-title-area">
            <div class="container">
                <div class="page-title-content">
                    <h2>Cart</h2>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li>Cart</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Start Cart Area -->
		<section class="cart-area ptb-100">
            <div class="container">
                <form>
                    <div class="cart-table table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Unit Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td class="product-thumbnail">
                                        <a href="#">
                                            <img src="assets/img/gray-shirt_front.png" alt="item">
                                        </a>
                                    </td>

                                    <td class="product-name">
                                        <a href="#">Classic Patch Tee</a>
                                        <ul>
                                            <li>Color: <span>Gray</span></li>
                                            <li>Size: <span>S</span></li>
                                            <li>Material: <span>Cotton</span></li>
                                        </ul>
                                    </td>

                                    <td class="product-price">
                                        <span class="unit-amount">₱150.00</span>
                                    </td>

                                    <td class="product-quantity">
                                        <div class="input-counter">
                                            <span class="minus-btn"><i class='bx bx-minus'></i></span>
                                            <input type="text" min="1" value="1">
                                            <span class="plus-btn"><i class='bx bx-plus'></i></span>
                                        </div>
                                    </td>

                                    <td class="product-subtotal">
                                        <span class="subtotal-amount">₱150.00</span>

                                        <a href="#" class="remove"><i class='bx bx-trash'></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="product-thumbnail">
                                        <a href="#">
                                            <img src="assets/img/black-cap_front.png" alt="item">
                                        </a>
                                    </td>

                                    <td class="product-name">
                                        <a href="#">Signature Cap</a>
                                        <ul>
                                            <li>Color: <span>Black</span></li>
                                            <li>Size: <span>S</span></li>
                                            <li>Material: <span>Cotton</span></li>
                                        </ul>
                                    </td>

                                    <td class="product-price">
                                        <span class="unit-amount">₱200.00</span>
                                    </td>

                                    <td class="product-quantity">
                                        <div class="input-counter">
                                            <span class="minus-btn"><i class='bx bx-minus'></i></span>
                                            <input type="text" min="1" value="1">
                                            <span class="plus-btn"><i class='bx bx-plus'></i></span>
                                        </div>
                                    </td>

                                    <td class="product-subtotal">
                                        <span class="subtotal-amount">₱200.00</span>

                                        <a href="#" class="remove"><i class='bx bx-trash'></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="product-thumbnail">
                                        <a href="#">
                                            <img src="assets/img/black-jacket_front.png" alt="item">
                                        </a>
                                    </td>

                                    <td class="product-name">
                                        <a href="#">Windbreaker</a>
                                        <ul>
                                            <li>Color: <span>Black</span></li>
                                            <li>Size: <span>S</span></li>
                                            <li>Material: <span>Cotton</span></li>
                                        </ul>
                                    </td>

                                    <td class="product-price">
                                        <span class="unit-amount">₱500.00</span>
                                    </td>

                                    <td class="product-quantity">
                                        <div class="input-counter">
                                            <span class="minus-btn"><i class='bx bx-minus'></i></span>
                                            <input type="text" min="1" value="1">
                                            <span class="plus-btn"><i class='bx bx-plus'></i></span>
                                        </div>
                                    </td>

                                    <td class="product-subtotal">
                                        <span class="subtotal-amount">₱500.00</span>

                                        <a href="#" class="remove"><i class='bx bx-trash'></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="product-thumbnail">
                                        <a href="#">
                                            <img src="assets/img/black-hoodie_front.png" alt="item">
                                        </a>
                                    </td>

                                    <td class="product-name">
                                        <a href="#">Signature Hoodie</a>
                                        <ul>
                                            <li>Color: <span>Black</span></li>
                                            <li>Size: <span>S</span></li>
                                            <li>Material: <span>Cotton</span></li>
                                        </ul>
                                    </td>

                                    <td class="product-price">
                                        <span class="unit-amount">₱500.00</span>
                                    </td>

                                    <td class="product-quantity">
                                        <div class="input-counter">
                                            <span class="minus-btn"><i class='bx bx-minus'></i></span>
                                            <input type="text" min="1" value="1">
                                            <span class="plus-btn"><i class='bx bx-plus'></i></span>
                                        </div>
                                    </td>

                                    <td class="product-subtotal">
                                        <span class="subtotal-amount">₱500.00</span>

                                        <a href="#" class="remove"><i class='bx bx-trash'></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="cart-buttons">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-lg-7 col-sm-7 col-md-7">
                                <a href="#" class="optional-btn">Continue Shopping</a>
                            </div>

                            <div class="col-lg-5 col-sm-5 col-md-5 text-end">
                                <a href="#" class="default-btn">Update Cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="cart-totals">
                        <h3>Cart Totals</h3>

                        <ul>
                            <li>Subtotal <span>₱1350.00</span></li>
                            <li>Shipping <span>₱0.00</span></li>
                            <li>Total <span>₱1350.00</span></li>
                        </ul>
                        
                        <a href="#" class="default-btn">Proceed to Checkout</a>
                    </div>
                </form>
            </div>
        </section>
        <!-- End Cart Area -->

        <!-- Start Facility Area -->
        <section class="facility-area pb-70">
            <div class="container">
                <div class="facility-slides owl-carousel owl-theme">
                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-tracking'></i>
                        </div>
                        <h3>Free Shipping Worldwide</h3>
                    </div>

                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-return'></i>
                        </div>
                        <h3>Easy Return Policy</h3>
                    </div>

                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-shuffle'></i>
                        </div>
                        <h3>7 Day Exchange Policy</h3>
                    </div>

                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-sale'></i>
                        </div>
                        <h3>Weekend Discount Coupon</h3>
                    </div>

                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-credit-card'></i>
                        </div>
                        <h3>Secure Payment Methods</h3>
                    </div>

                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-location'></i>
                        </div>
                        <h3>Track Your Package</h3>
                    </div>

                    <div class="single-facility-box">
                        <div class="icon">
                            <i class='flaticon-customer-service'></i>
                        </div>
                        <h3>24/7 Customer Support</h3>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Facility Area -->

        <!-- Start Shopping Cart Modal -->
        <div class="modal right fade shoppingCartModal" id="shoppingCartModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class='bx bx-x'></i></span>
                    </button>

                    <div class="modal-body">
                        <h3>My Cart (3)</h3>

                        <div class="products-cart-content">
                            <div class="products-cart">
                                <div class="products-image">
                                    <a href="#"><img src="assets/img/guitar_plush.png" alt="image"></a>
                                </div>

                                <div class="products-content">
                                    <h3><a href="#">Electric Guitar Plush</a></h3>
                                    <div class="products-price">
                                        <span>1</span>
                                        <span>x</span>
                                        <span class="price">₱150.00</span>
                                    </div>
                                    <a href="#" class="remove-btn"><i class='bx bx-trash'></i></a>
                                </div>
                            </div>

                            <div class="products-cart">
                                <div class="products-image">
                                    <a href="#"><img src="assets/img/gray-shirt_front.png" alt="image"></a>
                                </div>

                                <div class="products-content">
                                    <h3><a href="#">Classic Patch Tee</a></h3>
                                    <span>Gray / S</span>
                                    <div class="products-price">
                                        <span>2</span>
                                        <span>x</span>
                                        <span class="price">₱300.00</span>
                                    </div>
                                    <a href="#" class="remove-btn"><i class='bx bx-trash'></i></a>
                                </div>
                            </div>

                            <div class="products-cart">
                                <div class="products-image">
                                    <a href="#"><img src="assets/img/black-cap_front.png" alt="image"></a>
                                </div>

                                <div class="products-content">
                                    <h3><a href="#">Signature Cap</a></h3>
                                    <span>Black / S</span>
                                    <div class="products-price">
                                        <span>1</span>
                                        <span>x</span>
                                        <span class="price">₱200.00</span>
                                    </div>
                                    <a href="#" class="remove-btn"><i class='bx bx-trash'></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="products-cart-subtotal">
                            <span>Subtotal</span>

                            <span class="subtotal">₱650.00</span>
                        </div>

                        <div class="products-cart-btn">
                            <a href="#" class="default-btn">Proceed to Checkout</a>
                            <a href="#" class="optional-btn">View Shopping Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Shopping Cart Modal -->

        <div class="go-top"><i class='bx bx-up-arrow-alt'></i></div>

        <!-- Links of JS files -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/magnific-popup.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/parallax.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/rangeSlider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/meanmenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/sticky-sidebar.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/form-validator.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/contact-form-script.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ajaxchimp.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    </body>
</html>
