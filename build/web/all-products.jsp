<%-- 
    Document   : all-products
    Created on : Jun 24, 2024, 12:32:45 PM
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Links of CSS files -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/boxicons.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/magnific-popup.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/nice-select.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/slick.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/meanmenu.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/rangeSlider.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/dark.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/merch-css/cart-modal.css">

        <title>Electronnity - All Products</title>

        <link rel="icon" type="image/png" href="images/inventory-images/favicon.png">
    </head>
    <body>

        <!-- Start Navbar Area -->
        <div class="navbar-area">
            <div class="xton-responsive-nav">
                <div class="container">
                    <div class="xton-responsive-menu">
                        <div class="logo">
                            <a href="#">
                                <img src="images/merch-images/light-mode_logo.png" class="main-logo" alt="logo">
                                <img src="images/merch-images/dark-mode_logo.png" class="white-logo" alt="logo">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="xton-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="#">
                            <img src="images/merch-images/light-mode_logo.png" class="main-logo" alt="logo">
                            <img src="images/merch-images/dark-mode_logo.png" class="white-logo" alt="logo">
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
        <!-- End Navbar Area -->

        <!-- Start Sticky Navbar Area -->
        <div class="navbar-area header-sticky">
            <div class="xton-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="#">
                            <img src="images/merch-images/light-mode_logo.png" class="main-logo" alt="logo">
                            <img src="images/merch-images/dark-mode_logo.png" class="white-logo" alt="logo">
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
                    <h2>All Products</h2>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li>Products</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Start Products Area -->
        <section class="products-area pt-100 pb-70">
            <div class="container">
                <div class="products-filter-options">
                    <div class="row align-items-center justify-content">
                        <div class="col-lg-4 col-md-4">
                            <div class="d-lg-flex d-md-flex align-items-center">                       
                                <span class="sub-title d-none d-lg-block d-md-block">View:</span>

                                <div class="view-list-row d-none d-lg-block d-md-block">
                                    <div class="view-column">
                                        <a href="#" class="icon-view-two">
                                            <span></span>
                                            <span></span>
                                        </a>

                                        <a href="#" class="icon-view-three active">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </a>

                                        <a href="#" class="icon-view-four">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </a>

                                        <a href="#" class="view-grid-switch">
                                            <span></span>
                                            <span></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="products-collections-filter" class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 products-col-item">
                        <div class="single-productsBox">
                            <div class="products-image">
                                <a href="#">
                                    <img src="images/merch-images/guitar_plush.png" class="main-image" alt="image">
                                    <img src="images/merch-images/guitar_plush.png" class="hover-image" alt="image">
                                </a>

                                <div class="new-tag">New!</div>
                            </div>

                            <div class="products-content">
                                <span class="category">Limited Edition</span>
                                <h3><a href="#">Electric Guitar Plush</a></h3>
                                <div class="price">
                                    <span class="new-price">₱150.00</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 col-sm-6 products-col-item">
                        <div class="single-productsBox">
                            <div class="products-image">
                                <a href="#">
                                    <img src="images/merch-images/gray-shirt_front.png" class="main-image" alt="image">
                                    <img src="images/merch-images/gray-shirt_front.png" class="hover-image" alt="image">
                                </a><div></div>
                            </div>

                            <div class="products-content">
                                <span class="category">Shirt</span>
                                <h3><a href="#">Classic Patch Tee</a></h3>
                                <div class="price">
                                    <span class="new-price">₱150.00</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 col-sm-6 products-col-item">
                        <div class="single-productsBox">
                            <div class="products-image">
                                <a href="#">
                                    <img src="images/merch-images/black-cap_front.png" class="main-image" alt="image">
                                    <img src="images/merch-images/black-cap_front.png" class="hover-image" alt="image">
                                </a><div></div>
                            </div>

                            <div class="products-content">
                                <span class="category">Cap</span>
                                <h3><a href="#">Signature Cap</a></h3>
                                <div class="price">
                                    <span class="new-price">₱200.00</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 col-sm-6 products-col-item">
                        <div class="single-productsBox">
                            <div class="products-image">
                                <a href="#">
                                    <img src="images/merch-images/black-jacket_front.png" class="main-image" alt="image">
                                    <img src="images/merch-images/black-jacket_front.png" class="hover-image" alt="image">
                                </a>
                            </div>

                            <div class="products-content">
                                <span class="category">Jacket</span>
                                <h3><a href="${pageContext.request.contextPath}/jacket">Windbreaker</a></h3>

                                <div class="price">
                                    <span class="new-price">₱500.00</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 col-sm-6 products-col-item">
                        <div class="single-productsBox">
                            <div class="products-image">
                                <a href="#">
                                    <img src="images/merch-images/black-hoodie_front.png" class="main-image" alt="image">
                                    <img src="images/merch-images/black-hoodie_front.png" class="hover-image" alt="image">
                                </a><div></div>
                            </div>

                            <div class="products-content">
                                <span class="category">Hoodie</span>
                                <h3><a href="#">Signature Hoodie</a></h3>

                                <div class="price">
                                    <span class="new-price">₱500.00</span>
                                </div>
                                <a href="#" class="add-to-cart">Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pagination-area text-center"> <!-- Unused, serves as a linear pagination -->
            </div>
        </section>
        <!-- End Products Area -->

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
                                    <a href="#"><img src="images/merch-images/guitar_plush.png" alt="image"></a>
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
                                    <a href="#"><img src="images/merch-images/gray-shirt_front.png" alt="image"></a>
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
                                    <a href="#"><img src="images/merch-images/black-cap_front.png" alt="image"></a>
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
        <script src="${pageContext.request.contextPath}/js/jquery.min.3.7.1.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/magnific-popup.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/parallax.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/rangeSlider.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/meanmenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/slick.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/sticky-sidebar.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/form-validator.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/contact-form-script.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/ajaxchimp.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/main.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/cart-modal.js"></script>
    </body>
</html>