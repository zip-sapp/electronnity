<%-- 
    Document   : guitar-plush
    Created on : Jun 24, 2024, 3:28:36 PM
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        <title>electronnity | guitar plush</title>

        <link rel="icon" type="image/png" href="images/inventory-images/favicon.png">
        
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
                                <li class="nav-item megamenu"><a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a></li>
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
                    <h2>Electric Guitar Plushie</h1>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                        <li>Products Details</li>
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
                            <img src="images/merch-images/guitar_plush.png" alt="image">
                        </div>
                    </div>
                </div>

                <div class="col-lg-7 col-md-12">
                    <div class="products-details-desc">
                        <h3>Electric Guitar Plush</h3>
                        <div class="price">
                            <span class="new-price">₱150.00</span>
                        </div>

                        <ul class="products-info">
                            <li><span>Availability:</span> <a>In stock</a></li>
                            <li><span>Products Type:</span> <a>Plush</a></li>
                        </ul>

                        <div class="products-container">
                            <div class="products-size-wrapper" 
                                 data-product-id="SDK43A9L8M" 
                                 data-product-name="Electric Guitar Plush" 
                                 data-product-price="₱150.00" 
                                 data-product-image="images/merch-images/guitar_plush.png">
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
                                            <p>The perfect blend of musical charm and cozy comfort! This plushie is a delightful replica of a classic guitar, designed to bring a touch of melody to your everyday life. Crafted with the softest, high-quality materials, the Guitar Plushie is perfect for snuggling, decorating your space, or adding a playful musical accent to your collection.</p>

                                            <ul>
                                                <li><b>Super Soft Fabric:</b> Made from premium, plush fabric that's incredibly soft to the touch, ensuring maximum comfort whether you're cuddling or using it as a decorative piece.</li>
                                                <li><b>Perfect Size:</b> Measuring just the right size to be huggable yet portable, this plushie is ideal for kids and adults alike.</li>
                                                <li><b>Great Gift Idea:</b> The Guitar Plushie makes for a unique and thoughtful gift for music lovers, guitar enthusiasts, or anyone who appreciates fun and quirky decor.</li>
                                                <li><b>Versatile Decor:</b> Adds a touch of musical flair to bedrooms, living rooms, offices, or even your music studio.</li>
                                            </ul>
                                        </div>
                                        <div class="accordion-content show">
                                            <h3>Sizes:</h3>
                                            <br>

                                            <h3>Small</h3>

                                            <ul>  
                                                <li><b>Height:</b> 10 inches (25 cm)</li>
                                                <li><b>Width:</b> 4 inches (10 cm)</li>
                                                <li><b>Depth:</b> 2 inches (5 cm)</li>
                                            </ul>
                                        </div>

                                        <div class="accordion-content show">
                                           <h3>Medium</h3>

                                            <ul>  
                                                <li><b>Height:</b>18 inches (46 cm)</li>
                                                <li><b>Width:</b>7 inches (18 cm)</li>
                                                <li><b>Depth:</b>3 inches (8 cm)</li>
                                            </ul>
                                        </div>

                                        <div class="accordion-content show">
                                            <h3>Large</h3>
 
                                             <ul>  
                                                 <li><b>Height:</b>24 inches (61 cm)</li>
                                                 <li><b>Width:</b>10 inches (25 cm)</li>
                                                 <li><b>Depth:</b>4 inches (10 cm)</li>
                                             </ul>
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

        <!-- Include your shopping cart modal -->
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

        <!-- Start Products Filter Modal Area -->
        <div class="modal left fade productsFilterModal" id="productsFilterModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class='bx bx-x'></i> Close</span>
                    </button>

                    <div class="modal-body">
                        <div class="woocommerce-widget-area">
                            <div class="woocommerce-widget filter-list-widget">
                                <h3 class="woocommerce-widget-title">Current Selection</h3>

                                <div class="selected-filters-wrap-list">
                                    <ul>
                                        <li><a href="#"><i class='bx bx-x'></i> 44</a></li>
                                        <li><a href="#"><i class='bx bx-x'></i> XI</a></li>
                                        <li><a href="#"><i class='bx bx-x'></i> Clothing</a></li>
                                        <li><a href="#"><i class='bx bx-x'></i> Shoes</a></li>
                                    </ul>

                                    <a href="#" class="delete-selected-filters"><i class='bx bx-trash'></i> <span>Clear All</span></a>
                                </div>
                            </div>

                            <div class="woocommerce-widget collections-list-widget">
                                <h3 class="woocommerce-widget-title">Collections</h3>

                                <ul class="collections-list-row">
                                    <li><a href="#">Men's</a></li>
                                    <li class="active"><a href="#" class="active">Women’s</a></li>
                                    <li><a href="#">Clothing</a></li>
                                    <li><a href="#">Shoes</a></li>
                                    <li><a href="#">Accessories</a></li>
                                    <li><a href="#">Uncategorized</a></li>
                                </ul>
                            </div>

                            <div class="woocommerce-widget price-list-widget">
                                <h3 class="woocommerce-widget-title">Price</h3>

                                <div class="collection-filter-by-price">
                                    <input class="js-range-of-price" type="text" data-min="0" data-max="1055" name="filter_by_price" data-step="10">
                                </div>
                            </div>

                            <div class="woocommerce-widget size-list-widget">
                                <h3 class="woocommerce-widget-title">Size</h3>

                                <ul class="size-list-row">
                                    <li><a href="#">20</a></li>
                                    <li><a href="#">24</a></li>
                                    <li class="active"><a href="#">36</a></li>
                                    <li><a href="#">30</a></li>
                                    <li><a href="#">XS</a></li>
                                    <li><a href="#">S</a></li>
                                    <li><a href="#">M</a></li>
                                    <li><a href="#">L</a></li>
                                    <li><a href="#">L</a></li>
                                    <li><a href="#">XL</a></li>
                                </ul>
                            </div>

                            <div class="woocommerce-widget color-list-widget">
                                <h3 class="woocommerce-widget-title">Color</h3>

                                <ul class="color-list-row">
                                    <li class="active"><a href="#" title="Black" class="color-black"></a></li>
                                    <li><a href="#" title="Red" class="color-red"></a></li>
                                    <li><a href="#" title="Yellow" class="color-yellow"></a></li>
                                    <li><a href="#" title="White" class="color-white"></a></li>
                                    <li><a href="#" title="Blue" class="color-blue"></a></li>
                                    <li><a href="#" title="Green" class="color-green"></a></li>
                                    <li><a href="#" title="Yellow Green" class="color-yellowgreen"></a></li>
                                    <li><a href="#" title="Pink" class="color-pink"></a></li>
                                    <li><a href="#" title="Violet" class="color-violet"></a></li>
                                    <li><a href="#" title="Blue Violet" class="color-blueviolet"></a></li>
                                    <li><a href="#" title="Lime" class="color-lime"></a></li>
                                    <li><a href="#" title="Plum" class="color-plum"></a></li>
                                    <li><a href="#" title="Teal" class="color-teal"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Products Filter Modal Area -->

        <div class="go-top"><i class='bx bx-up-arrow-alt'></i></div>

        <!-- Links of JS files -->
        <script src="${pageContext.request.contextPath}/js/jquery.min.3.7.1.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/merch-js/popper.min.js"></script>
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