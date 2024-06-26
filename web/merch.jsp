<%-- 
    Document   : merch
    Created on : Jun 24, 2024, 5:52:05 PM
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

        <title>Electronnity | Merch</title>

        <link rel="icon" type="image/png" href="images/inventory-images/favicon.png">
    </head>
    <body>

        <!-- Start Navbar Area -->
        <div class="navbar-area">
            <div class="xton-responsive-nav">
                <div class="container">
                    <div class="xton-responsive-menu">
                        <div class="logo">
                            <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
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
                        <a class="navbar-brand">
                            <img src="images/merch-images/logo.png" class="main-logo" alt="logo">
                            <img src="images/merch-images/white-logo.png" class="white-logo" alt="logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/home" class="nav-link">Home</a>
                                    
                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/shop" class="nav-link">Shop</a>
                                    
                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/all_products" class="nav-link">Products</a>

                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a>

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
                        <a class="navbar-brand">
                            <img src="images/merch-images/logo.png" class="main-logo" alt="logo">
                            <img src="images/merch-images/white-logo.png" class="white-logo" alt="logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/merch" class="nav-link">Home</a>

                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/shop" class="nav-link">Shop</a> 

                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/all_products" class="nav-link">Products</a>
                                
                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a>
                                    
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

        <!-- Start Main Banner Area -->
            <div class="main-banner banner-bg2">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-7 col-md-12">
                                    <div class="main-banner-content text-white">
                                        <span class="sub-title">Exclusive Offer!</span>
                                        <h1>Summer-2024!</h1>
                                        <p>Leap year offer ‘Sale Must-Haves'</p>
                                        <div class="btn-box">
                                            <a href="${pageContext.request.contextPath}/all_products" class="default-btn">All Products</a>
                                            <a href="${pageContext.request.contextPath}/guitar_plush" class="optional-btn">Limited Edition</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Banner Area -->
        
        <!-- Start All Products Area -->
        <section class="all-products-area ptb-100 bg-f5f5f5">
            <div class="container">

                <!-- Start Products Area -->
                <section class="products-area pt-100 pb-70">
                    <div class="container">
                        <div class="section-title text-start">
                            <span class="sub-title">See Our Collection</span>
                            <h2>Recent Products</h2>
                            <a href="${pageContext.request.contextPath}/all_products" class="default-btn">Shop More</a>
                        </div>

                        <div class="products-slides owl-carousel owl-theme">
                            <div class="single-products-box">
                                <div class="products-image">
                                    <a href="${pageContext.request.contextPath}/hoodie">
                                        <img src="images/merch-images/hoodie_merch2.png" class="main-image" alt="image">
                                        <img src="images/merch-images/model_hoodie.png" class="hover-image" alt="image">
                                    </a>
                                </div>
    
                                <div class="products-content">
                                    <h3><a href="${pageContext.request.contextPath}/hoodie">Signature Hoodie</a></h2>
                                    <div class="price">
                                        <span class="new-price">₱500</span>
                                    </div>
                                </div>
                            </div>

                            <div class="single-products-box">
                                <div class="products-image">
                                    <a href="${pageContext.request.contextPath}/shirt">
                                        <img src="images/merch-images/shirt_merch.png" class="main-image" alt="image">
                                        <img src="images/merch-images/shirt_model.png" class="hover-image" alt="image">
                                    </a>
                                    
                                </div>
    
                                <div class="products-content">
                                    <h3><a href="${pageContext.request.contextPath}/shirt">Classic Patch Tee</a></h2>
                                    <div class="price">
                                        <span class="new-price">₱150</span>
                                    </div>
                                </div>
                            </div>

                            <div class="single-products-box">
                                <div class="products-image">
                                    <a href="${pageContext.request.contextPath}/jacket">
                                        <img src="images/merch-images/jacket_merch1.png" class="main-image" alt="image">
                                        <img src="images/merch-images/jacket_merch2.png" class="hover-image" alt="image">
                                    </a>
                                </div>
    
                                <div class="products-content">
                                    <h3><a href="${pageContext.request.contextPath}/jacket">Windbreaker</a></h3>
                                    <div class="price">
                                        <span class="new-price">₱500</span>
                                    </div>
                                </div>
                            </div>

                            <div class="single-products-box">
                                <div class="products-image">
                                    <a href="${pageContext.request.contextPath}/cap">
                                        <img src="images/merch-images/cap_merch2.png" class="main-image" alt="image">
                                        <img src="images/merch-images/cap_merch2.png" class="hover-image" alt="image">
                                    </a>
                                </div>
    
                                <div class="products-content">
                                    <h3><a href="${pageContext.request.contextPath}/cap">Signature Cap</a></h3>
                                    <div class="price">
                                        <span class="new-price">₱200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Products Area -->

                <!-- Start Facility Area -->
                <section class="facility-area pt-100 pb-70">
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

                <!-- Start Categories Banner Area -->
                <section class="categories-banner-area pt-100 pb-70">
                    <div class="container">
                        <div class="section-title text-start">
                            <span class="sub-title">See Our Collection</span>
                            <h2>Shop By Categories</h2>
                        </div>
                        
                        <div class="row justify-content-center">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="single-categories-box">
                                    <img src="images/merch-images/black-hoodie_front.png" alt="image">

                                    <div class="content">
                                        <span>Hoodie</span>                                                                     
                                        <a href="${pageContext.request.contextPath}/hoodie" class="default-btn">Discover Now</a>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/hoodie" class="link-btn"></a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="single-categories-box">
                                    <img src="images/merch-images/gray-shirt_front.png" alt="image">

                                    <div class="content">
                                        <span>Shirt</span>                                     
                                        <a href="${pageContext.request.contextPath}/shirt" class="default-btn">Discover Now</a>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/shirt" class="link-btn"></a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="single-categories-box">
                                    <img src="images/merch-images/jacket_merch1.png" alt="image">

                                    <div class="content">
                                        <span>Jacket</span>                                       
                                        <a href="${pageContext.request.contextPath}/jacket" class="default-btn">Discover Now</a>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/jacket" class="link-btn"></a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="single-categories-box">
                                    <img src="images/merch-images/MODEL CAP.png" alt="image">

                                    <div class="content">
                                        <span>Cap</span>                                       
                                        <a href="${pageContext.request.contextPath}/cap" class="default-btn">Discover Now</a>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/cap" class="link-btn"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Categories Banner Area -->

        <!-- Start Shopping Cart Modal -->
        <div class="modal right fade shoppingCartModal" id="shoppingCartModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class='bx bx-x'></i></span>
                    </button>

                    <div class="modal-body">
                        <h3>My Cart</h3>

                        <div class="products-cart-content">
                        </div>

                        <div class="products-cart-subtotal">
                            <span>Subtotal</span>

                            <span class="subtotal">₱0.00</span>
                        </div>

                        <div class="products-cart-btn">
                            <a href="#" class="default-btn">Proceed to Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Shopping Cart Modal -->

        <!-- Start Shipping Modal Area -->
        <div class="modal fade productsShippingModal" id="productsShippingModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class='bx bx-x'></i></span>
                    </button>

                    <div class="shipping-content">
                        <h3>Shipping</h3>
                        <ul>
                            <li>Complimentary ground shipping within 1 to 7 business days</li>
                            <li>In-store collection available within 1 to 7 business days</li>
                            <li>Next-day and Express delivery options also available</li>
                            <li>Purchases are delivered in an orange box tied with a Bolduc ribbon, with the exception of certain items</li>
                            <li>See the delivery FAQs for details on shipping methods, costs and delivery times</li>
                        </ul>

                        <h3>Returns and Exchanges</h3>
                        <ul>
                            <li>Easy and complimentary, within 14 days</li>
                            <li>See conditions and procedure in our return FAQs</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Shipping Modal Area -->

        <div class="go-top"><i class='bx bx-up-arrow-alt'></i></div>

        <!-- Links of JS files -->
        <script src="${pageContext.request.contextPath}/js/merch-js/jquery.min.js"></script>
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