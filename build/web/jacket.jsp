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
                    <h2>Windbreaker</h2>
                    <ul>
                        <li><a href="#">Home</a></li>
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

                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_blue-jacket_front.png" alt="image">
                            </div>

                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_blue-jacket_back.png" alt="image">
                            </div>

                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_green-jacket_front.png" alt="image">
                            </div>

                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_green-jacket_back.png" alt="image">
                            </div>
                            
                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_teal-jacket_front.png" alt="image">
                            </div>

                            <div class="single-products-details-image">
                                <img src="images/merch-images/sp_teal-jacket_back.png" alt="image">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-7 col-md-12">
                        <div class="products-details-desc products-details-desc-sticky">
                            <h3>Windbreaker</h3>

                            <div class="price">
                                <span class="new-price">₱500.00</span>
                            </div>
            
                            <ul class="products-info">
                                <li><span>Availability:</span> <a href="#">In stock</a></li>
                                <li><span>Product Type:</span> <a href="#">Jacket</a></li>
                            </ul>

                            <div class="products-color-switch">
                                <span>Color:</span>

                                <ul>
                                    <li><a href="#" title="Black" class="color-black"></a></li>
                                    <li><a href="#" title="Blue" class="color-blue"></a></li>
                                    <li><a href="#" title="Green" class="color-green"></a></li>
                                    <li><a href="#" title="Teal" class="color-teal"></a></li>
                                </ul>
                            </div>

                            <div class="products-size-wrapper">
                                <span>Size:</span>

                                <ul>
                                    <li><a href="#">XS</a></li>
                                    <li><a href="#">S</a></li>
                                    <li><a href="#">M</a></li>
                                    <li><a href="#">XL</a></li>
                                    <li><a href="#">XXL</a></li>
                                </ul>
                            </div>

                            <div class="products-add-to-cart">
                                <div class="input-counter">
                                    <span class="minus-btn"><i class='bx bx-minus'></i></span>
                                    <input type="text" value="1">
                                    <span class="plus-btn"><i class='bx bx-plus'></i></span>
                                </div>

                                <button type="submit" class="default-btn"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                            </div>

                            <div class="buy-checkbox-btn">
                                <div class="item">
                                    <input class="inp-cbx" id="cbx" type="checkbox">
                                    <label class="cbx" for="cbx">
                                        <span>
                                            <svg width="12px" height="10px" viewbox="0 0 12 10">
                                                <polyline points="1.5 6 4.5 9 10.5 1"></polyline>
                                            </svg>
                                        </span>
                                        <span>I agree with the terms and conditions</span>
                                    </label>
                                </div>

                                <div class="item">
                                    <a href="#" class="default-btn">Buy it now!</a>
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
                                        <span class="price">₱250.00</span>
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
                                        <span class="price">₱280.00</span>
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

                            <span class="subtotal">₱730.00</span>
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
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
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