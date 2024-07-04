<%-- 
    Document   : jacket
    Created on : Jun 24, 2024, 3:14:06 PM
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

        <title>electronnity | windbreaker</title>

        <link rel="icon" type="image/png" href="images/merch-images/favicon.png">
        
        <style>
            @font-face {
                font-family: 'Boxicons';
                font-weight: 400;
                font-style: normal;
                src: url('${pageContext.request.contextPath}/fonts/boxicons.eot');
                src: url('${pageContext.request.contextPath}/fonts/boxicons.eot?#iefix') format('embedded-opentype'),
                     url('${pageContext.request.contextPath}/fonts/boxicons.woff2') format('woff2'),
                     url('${pageContext.request.contextPath}/fonts/boxicons.woff') format('woff'),
                     url('${pageContext.request.contextPath}/fonts/boxicons.ttf') format('truetype'),
                     url('${pageContext.request.contextPath}/fonts/boxicons.svg?#Boxicons') format('svg');
            }
            
            @font-face {
                font-family: "Flaticon";
                src: url('${pageContext.request.contextPath}/fonts/Flaticon.eot');
                src: url('${pageContext.request.contextPath}/fonts/Flaticon.eot?#iefix') format('embedded-opentype'),
                    url('${pageContext.request.contextPath}/fonts/Flaticon.woff2') format('woff2'),
                    url('${pageContext.request.contextPath}/fonts/Flaticon.woff') format('woff'),
                    url('${pageContext.request.contextPath}/fonts/Flaticon.ttf') format('truetype'),
                    url('${pageContext.request.contextPath}/fonts/Flaticon.svg#Flaticon') format('svg');
                font-weight: normal;
                font-style: normal;
            }

            @media screen and (-webkit-min-device-pixel-ratio:0) {
                @font-face {
                    font-family: "Flaticon";
                    src: url('${pageContext.request.contextPath}/fonts/Flaticon.svg#Flaticon') format('svg');
                }
            }
            
            .switch-box .slider:before {
                position: absolute;
                content: "";
                height: 30px;
                width: 30px;
                left: 2.5px;
                bottom: 4px;
                top: 0;
                bottom: 0;
                margin: auto 0;
                transition: 0.4s;
                box-shadow: 0 0px 15px rgba(32, 32, 32, 0.2392156863);
                background: url('${pageContext.request.contextPath}/images/merch-images/night.png');
                background-repeat: no-repeat;
                background-position: center;
            }
            
            .switch-box input:checked + .slider:before {
                transform: translateX(24px);
                background: url('${pageContext.request.contextPath}/images/merch-images/sunny.png');
                background-repeat: no-repeat;
                background-position: center;
            }
            
        </style>
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
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
                            <img src="images/merch-images/light-mode_logo.png" class="main-logo" alt="logo">
                            <img src="images/merch-images/dark-mode_logo.png" class="white-logo" alt="logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/merch" class="nav-link ">Home</a></li>
                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/shop" class="nav-link">Shop</a></li>
                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/all_products" class="nav-link active">Products</a></li>
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
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/merch">
                            <img src="images/merch-images/light-mode_logo.png" class="main-logo" alt="logo">
                            <img src="images/merch-images/dark-mode_logo.png" class="white-logo" alt="logo">
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
                    <h2>Windbreaker</h2>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                        <li>Product Details</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Start Product Details Area -->
        <section class="product-details-area pt-100 pb-70">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-12">
                        <div class="products-details-image">
                            <div class="single-products-details-image">
                                <img src="images/merch-images/black-jacket_front.png" alt="image">
                            </div>

                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_black-jacket_back.png" alt="image">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-7 col-md-12">
                        <div class="products-details-desc">
                            <h3>Windbreaker</h3>
                            <div class="price">
                                <span class="new-price">₱500.00</span>
                            </div>

                            <ul class="products-info">
                                <li><span>Availability:</span> <a>In stock</a></li>
                                <li><span>Products Type:</span> <a>Plush</a></li>
                            </ul>

                            <div class="products-container">
                                <div class="products-size-wrapper" 
                                     data-product-id="SDKP9Z8G5D" 
                                     data-product-name="Windbreaker" 
                                     data-product-price="₱500.00" 
                                     data-product-image="images/merch-images/black-jacket_front.png">
                                    <div class="products-add-to-cart">
                                        <button type="button" class="default-btn add-to-cart-btn"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="products-details-accordion">
                                <ul class="accordion">
                                    <li class="accordion-item">
                                        <a class="accordion-title active" href="javascript:void(0)">
                                            <i class='bx bx-chevron-down'></i>
                                            Description
                                        </a>
        
                                        <div class="accordion-content show">
                                            <p>Crafted from high, weather-resistant material to keep you warm and dry, this stylish jacket mixes modern design with functionality. It is the perfect option for both informal get-togethers and outdoor excursions because of its zip-up front, several safe compartments, and cozy inside lining.</p>
                                            <p>Material: 100% Polyester</p>
                                            <p>Height: 180 cm - 5' 11"</p>
                                            <p>Shipping: Free</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Details Area -->

        <!-- Start Shopping Cart Modal -->
        <div class="modal right fade shoppingCartModal" id="shoppingCartModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class='bx bx-x'></i></span>
                    </button>
                    <div class="modal-body">
                        <h3>My Cart</h3>
                        <div class="products-cart-content"></div>
                        <div class="products-cart-subtotal">
                            <span>Subtotal</span>
                            <span class="subtotal">₱0.00</span>
                        </div>
                        <div class="products-cart-btn">
                            <!-- Use a form to submit the cart data -->
                            <form id="checkout-form" action="${pageContext.request.contextPath}/ProcessOrderRoute" method="POST">
                                <input type="hidden" name="cartItems" id="cartItemsInput">
                                <button type="submit" class="checkout-button">Proceed to Checkout</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Shopping Cart Modal -->

        <div class="go-top"><i class='bx bx-up-arrow-alt'></i></div>

        <!-- Links of JS files -->
        <script src="${pageContext.request.contextPath}/js/jquery.min.3.7.1.js"></script>
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