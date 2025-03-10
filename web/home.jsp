<%-- 
    Document   : home
    Created on : 20 Apr 2024, 12:41:02 am
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- DISCLAIMER FOR MY CHEFS: -->

<!-- Website design is derived from stickz.co through reverse engineering -->
<!-- Don't bother changing the css, just copy and paste the elements inside this code-->
<!-- If you are going to change the color of the page go to cs-inline.min.css and search for :root to change the page's color-->

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>electronnity</title>
    <link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/css/cs-theme.7.4.15.css"/>
    <link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/css/cs-inline.min.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo (transparent).png" sizes="32x32" type="image/png" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo (transparent).png" sizes="16x16" type="image/png" />
    <style>
        @font-face {
            font-family: "inter-variable";
            font-weight: 100 900;
            font-display: swap;
            src: url(fonts/Inter.var.woff2)format("woff2-variations");
        }
        @font-face {
            font-display: swap;
            font-family: "sticky-sans";
            font-style: normal;
            font-weight: 400;
            src: url(fonts/StickySans-Regular.woff2)format("woff2");
        }
        @font-face {
            font-display: swap;
            font-family: "sticky-sans";
            font-style: normal;
            font-weight: 600;
            src: url(fonts/StickySans-SemiBold.woff2)format("woff2");
        }
        @font-face {
            font-display: swap;
            font-family: "sticky-sans";
            font-style: normal;
            font-weight: 700;
            src: url(fonts/StickySans-Bold.woff2)format("woff2");
        }
        @font-face {
            font-display: swap;
            font-family: "stickysans-icons";
            font-style: normal;
            font-weight: 400;
            src: url(fonts/StickySansIcons-Regular.woff2)format("woff2");
        }
        @font-face {
            font-display: swap;
            font-family: "stickysans-icons";
            font-style: normal;
            font-weight: 700;
            src: url(fonts/StickySansIcons-Bold.woff2)format("woff2");
        }
    </style>
</head>
<body>
    <div class="body">
        <div class="site">
            <header class="navbar" role="banner">
                <div class="bar bar-outer-spacers filler navbar-text-format bar-margin bar-margin_2 global_nav">
                    <div class="bar-content">
                        <div class="bar-container bar-margin_2">
                            <ul class="x-div bar-text bar-margin_2 global_nav__list">
                                <li class="x-div bar-text col align inn-col s-col s-col2 bar-margin_2">
                                    <a class="x-div bar-text align s-col bar-margin0 bar-margin1 bar-margin2 bar-margin3 bar-margin4 bar-margin5 bar-margin_2">
                                        <div class="x-div hide-s hide-xs s-col bar-margin_2">
                                            <svg width="11" height="44" viewBox="0 0 11 44" fill="none">
                                            <path d="" fill="rgba(var(--init-rgb),.8)"/>
                                            </svg>
                                        </div>
                                        <div class="x-div hide-lg hide-md hide-xl s-col bar-margin6 bar-margin_2">
                                            <svg width="12" height="48" viewBox="0 0 12 48" fill="none">
                                            <path d="" fill="rgba(var(--init-rgb),.8)"/>
                                            </svg>
                                        </div>
                                    </a>
                                </li>
                                <li class="x-div hide-s hide-xs filler1-v0 bar-text col align s-col bar-margin_2">
                                    <a class="x-div filler1-v1 bar-text align s-col bar-margin_2" href="${pageContext.request.contextPath}/shop" >
                                        <span class="x-anchor x-anchor-toggle filler1-v2 bar-margin_2x bar-margin_2y bar-margin_2z mg-up mg-font mg-op bar-margin_2  global_nav__item" tabindex="0" role="button" data-x-toggle="1" data-x-toggleable="filler1-v2" data-x-toggle-hover="1" aria-controls="filler1-v2-dropdown" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Dropdown Content">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Shop</span>
                                                </div>
                                            </div>
                                        </span>
                                    </a>
                                </li>
                                <li class="x-div hide-s hide-xs e21968-e30-v0 bar-text col align s-col bar-margin_2">
                                    <a class="x-div e21968-e30-v1 bar-text align s-col bar-margin_2" data-x-effect-provider="colors particles effects" aria-label="Free Downloads" data-sa-event="">
                                        <span class="x-anchor x-anchor-toggle e21968-e30-v2 bar-margin_2x bar-margin_2y bar-margin_2z mg-up mg-font mg-op bar-margin_2  global_nav__item" tabindex="0" role="button" data-x-toggle="1" data-x-toggleable="e21968-e30-v2" data-x-toggle-hover="1" aria-controls="e21968-e30-v2-dropdown" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Dropdown Content">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Freebies & Merch</span>
                                                </div>
                                            </div>
                                        </span>
                                    </a>
                                </li>
                                <li class="x-div hide-s hide-xs e21968-e46-v0 bar-text col align s-col bar-margin_2">
                                    <a class="x-div e21968-e46-v1 bar-text align s-col bar-margin_2" href="#" data-x-effect-provider="colors particles effects" aria-label="Musician Club" data-sa-event="header_link_Producer Club">
                                        <span class="x-anchor x-anchor-toggle e21968-e46-v2 bar-margin_2x bar-margin_2y bar-margin_2z mg-up mg-font mg-op bar-margin_2  global_nav__item" tabindex="0" role="button" data-x-toggle="1" data-x-toggleable="e21968-e46-v2" data-x-toggle-hover="1" aria-controls="e21968-e46-v2-dropdown" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Dropdown Content">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Musician Club</span>
                                                </div>
                                            </div>
                                        </span>
                                    </a>
                                </li>
                                <li class="x-div hide-s hide-xs e21968-e95-v0 bar-text col align s-col bar-margin_2">
                                    <c:choose>
                                        <c:when test="${empty sessionScope.username}">
                                            <a class="x-div e21968-e95-v1 bar-text align s-col bar-margin_2" href="${pageContext.request.contextPath}/login" data-x-effect-provider="colors particles effects" aria-label="Log in" data-sa-event="header_link_Log in">
                                                <span class="x-anchor x-anchor-toggle e21968-e95-v2 bar-margin_2x bar-margin_2y bar-margin_2z mg-up mg-font mg-op bar-margin_2  global_nav__item" tabindex="0" role="button" data-x-toggle="1" data-x-toggleable="e21968-e95-v2" data-x-toggle-hover="1" aria-controls="e21968-e95-v2-dropdown" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Dropdown Content">
                                                    <div class="x-anchor-content">
                                                        <div class="x-anchor-text">
                                                            <span class="x-anchor-text-primary">Log in</span>
                                                        </div>
                                                    </div>
                                                </span>
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="x-div e21968-e95-v1 bar-text align s-col bar-margin_2" id="login-link">
                                                <span class="x-anchor x-anchor-toggle e21968-e95-v2 bar-margin_2x bar-margin_2y bar-margin_2z mg-up mg-font mg-op bar-margin_2  global_nav__item" tabindex="0" role="button" data-x-toggle="1" data-x-toggleable="e21968-e95-v2" data-x-toggle-hover="1" aria-controls="e21968-e95-v2-dropdown" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Dropdown Content">
                                                    <div class="x-anchor-content">
                                                        <div class="x-anchor-text">
                                                            <span class="x-anchor-text-primary">Welcome, ${sessionScope.username}!</span>
                                                        </div>
                                                    </div>
                                                </span>
                                            </a>
                                            <script>
                                                document.getElementById("login").href = "";
                                            </script>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li class="x-div filler23 bar-text col align s-col bar-margin_2">
                                    <a class="x-div filler24 bar-text mgy8-m mgy8-o mgy8-p mgy8-q align s-col bar-margin0 bar-margin2 bar-marginm bar-marginn bar-margin_2" href="/cart/" data-x-effect-provider="colors particles effects" aria-label="Cart" data-sa-event="header_link_cart">
                                        <div class="x-div hide-s hide-xs filler25 s-col bar-marginj bar-margin_2">
                                            <svg width="14" height="44" viewBox="0 0 14 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M0 26.5734C0 27.3823 0.203523 27.9876 0.610568 28.3894C1.02283 28.7965 1.63862 29 2.45793 29H11.6712C12.3705 29 12.9159 28.7965 13.3072 28.3894C13.6986 27.9876 13.8943 27.3823 13.8943 26.5734V18.4716C13.8943 17.6628 13.6882 17.0574 13.2759 16.6556C12.8637 16.2485 12.2505 16.045 11.4364 16.045H10.184C10.1735 15.4971 10.0196 14.9935 9.72211 14.5342C9.42988 14.0698 9.0411 13.6993 8.55577 13.4227C8.07045 13.1409 7.53294 13 6.94325 13C6.35356 13 5.81605 13.1409 5.33072 13.4227C4.8454 13.6993 4.45662 14.0698 4.16438 14.5342C3.87215 14.9935 3.7182 15.4971 3.70254 16.045H2.45793C1.63862 16.045 1.02283 16.2485 0.610568 16.6556C0.203523 17.0574 0 17.6628 0 18.4716V26.5734ZM1.26027 26.5108V18.5342C1.26027 18.1272 1.36464 17.8219 1.57339 17.6184C1.78213 17.4097 2.08219 17.3053 2.47358 17.3053H11.4129C11.7991 17.3053 12.0992 17.4097 12.3131 17.6184C12.5271 17.8219 12.6341 18.1272 12.6341 18.5342V26.5108C12.6341 26.9178 12.5375 27.2257 12.3444 27.4344C12.1513 27.638 11.9191 27.7397 11.6477 27.7397H2.47358C2.08219 27.7397 1.78213 27.638 1.57339 27.4344C1.36464 27.2257 1.26027 26.9178 1.26027 26.5108ZM4.96282 16.045C4.97326 15.7058 5.06719 15.3953 5.24462 15.1135C5.42205 14.8317 5.65688 14.6073 5.94912 14.4403C6.24658 14.2733 6.57795 14.1898 6.94325 14.1898C7.31376 14.1898 7.64514 14.2733 7.93738 14.4403C8.23483 14.6073 8.46967 14.8317 8.64188 15.1135C8.81931 15.3953 8.91324 15.7058 8.92368 16.045H4.96282Z" fill="rgba(var(--init-rgb),.8)" />
                                            </svg>
                                        </div>
                                        <div class="x-div hide-lg hide-md hide-xl filler27 s-col bar-margin6 bar-marginj bar-margin_2">
                                            <svg width="16" height="48" viewBox="0 0 16 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M0 29.2701C0 30.18 0.228963 30.8611 0.686888 31.3131C1.15068 31.771 1.84344 32 2.76517 32H13.1301C13.9168 32 14.5303 31.771 14.9706 31.3131C15.411 30.8611 15.6311 30.18 15.6311 29.2701V20.1556C15.6311 19.2456 15.3992 18.5646 14.9354 18.1125C14.4716 17.6546 13.7818 17.4256 12.8659 17.4256H11.4569C11.4452 16.8092 11.272 16.2427 10.9374 15.726C10.6086 15.2035 10.1712 14.7867 9.62524 14.4755C9.07926 14.1585 8.47456 14 7.81115 14C7.14775 14 6.54305 14.1585 5.99706 14.4755C5.45108 14.7867 5.0137 15.2035 4.68493 15.726C4.35616 16.2427 4.18297 16.8092 4.16536 17.4256H2.76517C1.84344 17.4256 1.15068 17.6546 0.686888 18.1125C0.228963 18.5646 0 19.2456 0 20.1556V29.2701ZM1.41781 29.1996V20.226C1.41781 19.7681 1.53523 19.4247 1.77006 19.1957C2.00489 18.9609 2.34247 18.8434 2.78278 18.8434H12.8395C13.274 18.8434 13.6115 18.9609 13.8523 19.1957C14.093 19.4247 14.2133 19.7681 14.2133 20.226V29.1996C14.2133 29.6575 14.1047 30.0039 13.8875 30.2387C13.6703 30.4677 13.409 30.5822 13.1037 30.5822H2.78278C2.34247 30.5822 2.00489 30.4677 1.77006 30.2387C1.53523 30.0039 1.41781 29.6575 1.41781 29.1996ZM5.58317 17.4256C5.59491 17.044 5.70059 16.6947 5.9002 16.3777C6.0998 16.0607 6.36399 15.8082 6.69276 15.6204C7.0274 15.4325 7.4002 15.3386 7.81115 15.3386C8.22798 15.3386 8.60078 15.4325 8.92955 15.6204C9.26419 15.8082 9.52838 16.0607 9.72211 16.3777C9.92172 16.6947 10.0274 17.044 10.0391 17.4256H5.58317Z" fill="#F1F1F2" fill-opacity="0.8" />
                                            </svg>
                                        </div>
                                        <span class="x-anchor x-anchor-toggle filler30 bar-margin_2x bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4i mgy8-4j mgy8-4k bar-margin_2  global_nav__item-cart" tabindex="0" id="stickz_side_cart-anchor-toggle" role="button" data-x-toggle="1" data-x-toggleable="filler30" data-x-toggle-hash="stickz_side_cart" data-x-toggle-overlay="1" aria-controls="stickz_side_cart-off-canvas" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Side Cart">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Open Cart</span>
                                                </div>
                                            </div>
                                        </span>
                                    </a>
                                </li>
                                <li class="x-div hide-lg hide-md hide-xl filler89 bar-text col align s-col bar-margin_2">
                                    <div class="x-div filler90 bar-text align s-col bar-margin_2" data-x-effect-provider="colors particles effects" aria-label="Mobile Menu">
                                        <div class="x-anchor x-anchor-toggle has-graphic filler91 bar-margin_2x bar-margin_2z mg-up mgy8-4i mgy8-4k mgy8-4n mgy8-4o mgy8-4w mgy8-58 bar-margin_2  global_nav__item" tabindex="0" id="mm-anchor-toggle" role="button" data-x-toggle="1" data-x-toggleable="filler91" data-x-toggle-overlay="1" aria-controls="mm-off-canvas" aria-expanded="false" aria-haspopup="true" aria-label="Toggle Off Canvas Content">
                                            <div class="x-anchor-content">
                                                <span class="x-graphic" aria-hidden="true">
                                                    <span class="x-toggle x-toggle-burger x-graphic-child x-graphic-toggle" aria-hidden="true">
                                                        <span class="x-toggle-burger-bun-t" data-x-toggle-anim="x-bun-t-1"></span>
                                                        <span class="x-toggle-burger-patty" data-x-toggle-anim="x-patty-1"></span>
                                                        <span class="x-toggle-burger-bun-b" data-x-toggle-anim="x-bun-b-1"></span>
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="x-div e21968-e304 s-col bar-margink bar-margino mgy8-2l mgy8-2m bar-margin_2 mgy8-b background-layer"></div>
            </header>
            <div class="x-main full" role="main">
                <div id="post-8" class="post-8 page type-page status-publish hentry no-post-thumbnail">
                    <div class="entry-content content">
                        <div id="cs-content" class="cs-content">
                            <section class="x-section e8-e1 m8-0 m8-1 m8-7 parallax x-effect-exit" data-x-effect="{&quot;scroll&quot;:true,&quot;offsetTop&quot;:&quot;60%&quot;,&quot;offsetBottom&quot;:&quot;100%&quot;,&quot;behaviorScroll&quot;:&quot;in-n-out&quot;}">
                                <div class="x-bg" aria-hidden="true">
                                    <div class="x-bg-layer-lower-custom">
                                        <picture class="parallax-container">
                                            <img class="bg-img" src="data:image/svg+xml,%3Csvg%20
                                                 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%200%200'%3E%3C/svg%3E" data-lazy-srcset="/images/merch-images/logo banner 2.0.png 3200w, images/logo banner 2.0.png 1240w" data-lazy-sizes="(max-width: 3200px) 100vw, (max-width: 1720px) 1720px, 1240px" alt data-lazy-src="images/logo banner 2.0.png">
                                            <noscript>
                                            <img class="bg-img" src="/images/merch-images/logo banner 2.0.png" srcset="images/logo banner 2.0.png 3200w, images/logo banner 2.0.png 1720w, images/logo banner 2.0.png 1240w" sizes="(max-width: 3200px) 100vw, (max-width: 1720px) 1720px, 1240px" alt>
                                            </noscript>
                                        </picture>
                                    </div>
                                    <div class="x-bg-layer-upper-custom"></div>
                                </div>
                                <div class="x-div e8-e2 m8-g m8-h m8-i m8-j m8-k m8-l m8-m m8-n">
                                    <div class="x-text x-text-headline e8-e3 m8-1g m8-1h m8-1i m8-1j m8-1k m8-1l m8-1m m8-1n m8-1o">
                                        <div class="x-text-content">
                                            <div class="x-text-content-text">
                                                <h1 class="x-text-content-text-primary">𝑇ꕤ ꕤᏪǂ ꕤꉂଘ 𓂅✧✧ꕤǂ⊹</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="x-text x-text-headline e8-e4 m8-1g m8-1i m8-1m m8-1n m8-1o m8-1p m8-1q m8-1r m8-1s m8-1t m8-1u">
                                        <div class="x-text-content">
                                            <div class="x-text-content-text">
                                                <p class="x-text-content-text-primary">I make music and sample packs.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="x-anchor x-anchor-button has-particle e8-e5 m8-2q m8-2r m8-2s m8-2t m8-8 m8-9 m8-a busy-on" tabindex="0" href="${pageContext.request.contextPath}/shop" data-sa-event="front_button_cta">
                                        <span class="x-particle is-primary" data-x-particle="inside-c_c" aria-hidden="true">
                                            <span></span>
                                        </span>
                                        <div class="x-anchor-content">
                                            <div class="x-anchor-text">
                                                <span class="x-anchor-text-primary">Browse Shop</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </section>
                            <section class="x-section e8-e23 m8-0 m8-3 m8-4 m8-5 m8-7 x-effect-exit" data-x-effect="{&quot;scroll&quot;:true,&quot;offsetTop&quot;:&quot;100%&quot;,&quot;offsetBottom&quot;:&quot;60%&quot;,&quot;behaviorScroll&quot;:&quot;in-n-out&quot;}">
                                <div class="x-div e8-e24 m8-g m8-h m8-i m8-j m8-k m8-l m8-m m8-n">
                                    <div class="x-div e8-e25 m8-g m8-h m8-j m8-l m8-n m8-o m8-p m8-q m8-r m8-s m8-t m8-u m8-v m8-w">
                                        <div class="x-div e8-e26 m8-g m8-h m8-l m8-n m8-w m8-x m8-y">
                                            <div class="x-text x-text-headline e8-e27 m8-1i m8-1j m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-24 m8-25 m8-26 m8-27">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h2 class="x-text-content-text-primary">Paid stuffs. </h2>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e28 m8-1i m8-1j m8-1m m8-1o m8-1q m8-1r m8-1v m8-24 m8-25 m8-26 m8-28 m8-29 m8-2a">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <p class="x-text-content-text-primary"> Sounds created with love & passion.&nbsp;</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="x-anchor x-anchor-button e8-e29 m8-2q m8-2u m8-2v m8-2w m8-2x m8-2y m8-2z m8-30 m8-8 m8-9 m8-a" tabindex="0" href="${pageContext.request.contextPath}/shop" data-sa-event="front_button_all_packs">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Go to Shop</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="x-div e8-e30 m8-h m8-l m8-n m8-o m8-p m8-w m8-y m8-z m8-10">
                                        <a class="x-div e8-e31 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e32 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">ALBUM SERIES</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e33 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f" >
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">UNIVERSITY</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e34 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 
                                                     xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                        <a class="x-div e8-e31 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e32 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d ">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">ALBUM SERIES</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e33 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">REMINISCENT</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e34 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                        <a class="x-div e8-e31 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e32 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">Anime Series</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e33 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">KAISEN</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e34 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                        <a class="x-div e8-e31 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e32 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">Anime Series</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e33 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">REVVING</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e34 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </section>
                            <section class="x-section e8-e37 m8-0 m8-3 m8-4 m8-5 m8-7 x-effect-exit" data-x-effect="{&quot;scroll&quot;:true,&quot;offsetTop&quot;:&quot;100%&quot;,&quot;offsetBottom&quot;:&quot;60%&quot;,&quot;behaviorScroll&quot;:&quot;in-n-out&quot;}">
                                <div class="x-div e8-e38 m8-g m8-h m8-i m8-j m8-k m8-l m8-m m8-n">
                                    <div class="x-div e8-e39 m8-g m8-h m8-j m8-l m8-n m8-o m8-p m8-q m8-r m8-s m8-t m8-u m8-v m8-w">
                                        <div class="x-div e8-e40 m8-g m8-h m8-l m8-n m8-w m8-x m8-y">
                                            <div class="x-text x-text-headline e8-e41 m8-1i m8-1j m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-24 m8-25 m8-26 m8-27">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h2 class="x-text-content-text-primary">Merchandise. </h2>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e42 m8-1i m8-1j m8-1m m8-1o m8-1q m8-1r m8-1v m8-24 m8-25 m8-26 m8-28 m8-29 m8-2a">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <p class="x-text-content-text-primary"> Some very cool commodities for cool peoples "<3"</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="x-anchor x-anchor-button e8-e29 m8-2q m8-2u m8-2v m8-2w m8-2x m8-2y m8-2z m8-30 m8-8 m8-9 m8-a" tabindex="0" href="${pageContext.request.contextPath}/merch" data-sa-event="front_button_all_packs">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Go to Merch</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="x-div e8-e44 m8-h m8-l m8-n m8-o m8-p m8-w m8-y m8-z m8-10">
                                        <a class="x-div e8-e45 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e46 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">merch</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e47 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">JACKET</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e48 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20
                                                     xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                        <a class="x-div e8-e45 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e46 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">Merch</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e47 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">T-SHIRT</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e48 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                        <a class="x-div e8-e45 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e46 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">Merch</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e47 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">HOODIES</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e48 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                        <a class="x-div e8-e45 m8-g m8-h m8-n m8-o m8-q m8-y m8-11 m8-12 m8-13 m8-8">
                                            <div class="x-text x-text-headline e8-e46 m8-1i m8-1o m8-1q m8-1r m8-1s m8-1v m8-1z m8-21 m8-2a m8-2b m8-2c m8-2d">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <span class="x-text-content-text-primary">Merch</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="x-text x-text-headline e8-e47 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-1v m8-1y m8-2e m8-2f">
                                                <div class="x-text-content">
                                                    <div class="x-text-content-text">
                                                        <h3 class="x-text-content-text-primary">CAPS</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="x-image e8-e48 m8-3d m8-3e">
                                                <img decoding="async" src="data:image/svg+xml,%3Csvg%20 xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%20200'%3E%3C/svg%3E" width="200" height="200" alt="Image" data-lazy-src="">
                                                <noscript>
                                                <img decoding="async" src="" width="200" height="200" alt="Image">
                                                </noscript>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="x-colophon" role="contentinfo">
                <div class="bar bar-footer bar-h bar-relative bar-outer-spacers e22765-e1 mhkd-0 global_footer light-0" data-bar="{&quot;id&quot;:&quot;e22765-e1&quot;,&quot;region&quot;:&quot;footer&quot;,&quot;height&quot;:&quot;auto&quot;}">
                    <div class="e22765-e1 bar-content">
                        <div class="bar-container e22765-e2 mhkd-7 mhkd-8">
                            <div class="x-grid e22765-e3 mhkd-a">
                                <div class="x-cell e22765-e4 mhkd-b">
                                    <div class="x-div e22765-e5 mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-j mhkd-k mhkd-1">
                                        <a href="home.jsp" class="footer_logo" data-sa-event="footer_logo">
                                            <span class="visually-hidden">electronnity</span>
                                            <?xml version="1.0" encoding="UTF-8"?>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="87" height="28" viewBox="0 0 87 28" fill="none">
                                            <path d="" fill="var(--empty)"></path>
                                            </svg>
                                        </a>
                                    </div>
                                    <div class="x-text x-text-headline e22765-e7 mhkd-r mhkd-s mhkd-t">
                                        <div class="x-text-content">
                                            <div class="x-text-content-text">
                                                <p class="x-text-content-text-primary">A cool musician from&nbsp;the&nbsp;internet.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="x-text x-text-headline e22765-e8 mhkd-s mhkd-t mhkd-u">
                                        <div class="x-text-content">
                                            <div class="x-text-content-text">
                                                <p class="x-text-content-text-primary">©2024 electronnity</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="x-div e22765-e9 mhkd-d mhkd-i mhkd-l mhkd-m mhkd-1 mhkd-2 mhkd-3" target="_blank" data-x-effect="{&quot;durationBase&quot;:&quot;200ms&quot;}" aria-label="Rated excellent 4.9 out of 5 on Trustpilot" data-sa-event="footer_trustpilot">
                                        <?xml version="1.0" encoding="UTF-8"?>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="244" height="22" viewBox="0 0 244 22" fill="none">
                                        <g clip-path="url(#clip0_1202_2-569336)">
                                        <path d="M183.426 7H191.667V8.53428H188.422V17.1833H186.644V8.53428H183.412L183.426 7ZM191.314 9.81059H192.835V11.2362H192.862C192.917 11.0326 193.012 10.8425 193.147 10.6524C193.283 10.4623 193.446 10.2858 193.65 10.1365C193.84 9.97352 194.057 9.85132 194.301 9.75628C194.532 9.66123 194.777 9.60692 195.021 9.60692C195.211 9.60692 195.347 9.6205 195.415 9.6205C195.483 9.63408 195.564 9.64766 195.632 9.64766V11.2091C195.523 11.1819 195.401 11.1684 195.279 11.1548C195.157 11.1412 195.048 11.1276 194.926 11.1276C194.654 11.1276 194.396 11.1819 194.152 11.2906C193.908 11.3992 193.704 11.5621 193.514 11.7658C193.337 11.983 193.188 12.241 193.079 12.5533C192.971 12.8656 192.917 13.2322 192.917 13.6395V17.1426H191.287L191.314 9.81059ZM203.1 17.1833H201.498V16.1514H201.47C201.267 16.5316 200.968 16.8167 200.574 17.0475C200.181 17.2783 199.773 17.387 199.366 17.387C198.402 17.387 197.696 17.1561 197.261 16.6673C196.827 16.1921 196.61 15.4589 196.61 14.4949V9.81059H198.239V14.332C198.239 14.9837 198.361 15.4453 198.619 15.7033C198.864 15.9749 199.217 16.1106 199.665 16.1106C200.004 16.1106 200.289 16.0563 200.52 15.9477C200.751 15.8391 200.941 15.7033 201.077 15.5268C201.226 15.3503 201.321 15.1331 201.389 14.8887C201.457 14.6443 201.484 14.3727 201.484 14.0876V9.81059H203.113V17.1833H203.1ZM205.87 14.8208C205.924 15.296 206.101 15.6219 206.413 15.8255C206.725 16.0156 207.105 16.1106 207.54 16.1106C207.689 16.1106 207.866 16.0971 208.056 16.0699C208.246 16.0428 208.436 16.002 208.599 15.9341C208.775 15.8662 208.911 15.7712 209.02 15.6354C209.128 15.4996 209.183 15.3367 209.169 15.1331C209.155 14.9294 209.088 14.7529 208.938 14.6171C208.789 14.4813 208.612 14.3863 208.395 14.2912C208.178 14.2098 207.92 14.1419 207.635 14.0876C207.35 14.0333 207.065 13.9654 206.766 13.8975C206.467 13.8296 206.168 13.7481 205.883 13.6531C205.598 13.558 205.354 13.4358 205.123 13.2593C204.906 13.0964 204.716 12.8927 204.593 12.6348C204.458 12.3768 204.39 12.0781 204.39 11.6979C204.39 11.2906 204.485 10.9647 204.688 10.6931C204.879 10.4216 205.136 10.2043 205.435 10.0414C205.734 9.87848 206.073 9.75628 206.44 9.68839C206.807 9.6205 207.16 9.59334 207.485 9.59334C207.866 9.59334 208.232 9.63408 208.572 9.71554C208.911 9.79701 209.237 9.91921 209.509 10.1093C209.794 10.2858 210.024 10.5302 210.201 10.8153C210.391 11.1005 210.5 11.4535 210.554 11.8608H208.857C208.775 11.4671 208.599 11.2091 208.327 11.0733C208.042 10.9375 207.73 10.8697 207.363 10.8697C207.255 10.8697 207.105 10.8832 206.956 10.8968C206.793 10.924 206.657 10.9511 206.508 11.0054C206.372 11.0597 206.25 11.1412 206.155 11.2362C206.06 11.3313 206.005 11.4671 206.005 11.63C206.005 11.8337 206.073 11.983 206.209 12.1052C206.345 12.2274 206.521 12.3225 206.752 12.4175C206.969 12.499 207.227 12.5669 207.513 12.6212C207.798 12.6755 208.096 12.7434 208.395 12.8113C208.694 12.8792 208.979 12.9606 209.264 13.0557C209.549 13.1507 209.807 13.2729 210.024 13.4494C210.242 13.6123 210.432 13.816 210.568 14.0604C210.703 14.3048 210.771 14.6171 210.771 14.9701C210.771 15.4046 210.676 15.7712 210.473 16.0835C210.269 16.3822 210.011 16.6402 209.699 16.8303C209.386 17.0204 209.02 17.1561 208.64 17.2512C208.246 17.3326 207.866 17.387 207.485 17.387C207.024 17.387 206.589 17.3326 206.196 17.224C205.802 17.1154 205.449 16.9525 205.164 16.7488C204.879 16.5316 204.648 16.2736 204.485 15.9477C204.322 15.6354 204.227 15.2553 204.213 14.8072H205.856V14.8208H205.87ZM211.233 9.81059H212.468V7.58384H214.098V9.79701H215.564V11.0054H214.098V14.943C214.098 15.1195 214.111 15.2553 214.125 15.391C214.139 15.5132 214.179 15.6218 214.22 15.7033C214.274 15.7848 214.356 15.8527 214.451 15.8934C214.559 15.9341 214.695 15.9613 214.885 15.9613C214.994 15.9613 215.116 15.9613 215.225 15.9477C215.333 15.9341 215.456 15.9206 215.564 15.8934V17.1561C215.388 17.1833 215.211 17.1969 215.035 17.2104C214.858 17.2376 214.695 17.2376 214.505 17.2376C214.071 17.2376 213.731 17.1969 213.473 17.1154C213.215 17.0339 213.012 16.9117 212.862 16.7624C212.713 16.5994 212.618 16.4094 212.564 16.1785C212.509 15.9477 212.482 15.6626 212.468 15.3639V11.019H211.233V9.78343V9.81059ZM216.705 9.81059H218.239V10.8153H218.266C218.497 10.3808 218.809 10.0821 219.217 9.89205C219.624 9.70196 220.058 9.60692 220.547 9.60692C221.131 9.60692 221.633 9.70197 222.068 9.91921C222.502 10.1229 222.855 10.3944 223.141 10.761C223.426 11.114 223.643 11.535 223.779 12.0102C223.914 12.4854 223.996 13.0013 223.996 13.5309C223.996 14.0333 223.928 14.5085 223.806 14.9701C223.67 15.4318 223.48 15.8527 223.222 16.2057C222.964 16.5587 222.638 16.8438 222.231 17.0611C221.824 17.2783 221.362 17.387 220.819 17.387C220.588 17.387 220.344 17.3598 220.113 17.3191C219.882 17.2783 219.651 17.2104 219.434 17.1154C219.217 17.0204 219.013 16.8982 218.836 16.7488C218.646 16.5994 218.497 16.4229 218.375 16.2328H218.348V19.9124H216.718V9.81059H216.705ZM222.394 13.5037C222.394 13.1779 222.353 12.852 222.258 12.5397C222.177 12.2274 222.041 11.9559 221.864 11.7115C221.688 11.4671 221.471 11.277 221.226 11.1276C220.968 10.9783 220.669 10.9104 220.344 10.9104C219.665 10.9104 219.149 11.1412 218.796 11.6164C218.456 12.0916 218.28 12.7298 218.28 13.5173C218.28 13.8975 218.32 14.2369 218.416 14.5492C218.511 14.8615 218.633 15.1331 218.823 15.3639C218.999 15.5947 219.217 15.7712 219.475 15.907C219.733 16.0428 220.018 16.1106 220.357 16.1106C220.737 16.1106 221.036 16.0292 221.294 15.8798C221.552 15.7305 221.756 15.5268 221.932 15.296C222.095 15.0516 222.217 14.78 222.285 14.4677C222.353 14.1419 222.394 13.8296 222.394 13.5037V13.5037ZM225.259 7H226.888V8.53428H225.259V7ZM225.259 9.81059H226.888V17.1833H225.259V9.81059ZM228.341 7H229.97V17.1833H228.341V7ZM234.94 17.387C234.356 17.387 233.826 17.2919 233.365 17.0882C232.903 16.8846 232.523 16.6266 232.197 16.2872C231.885 15.9477 231.64 15.5268 231.477 15.0516C231.314 14.5764 231.219 14.0468 231.219 13.4901C231.219 12.9335 231.301 12.4175 231.477 11.9423C231.64 11.4671 231.885 11.0597 232.197 10.7067C232.509 10.3673 232.903 10.0957 233.365 9.90563C233.826 9.71554 234.356 9.60692 234.94 9.60692C235.523 9.60692 236.053 9.70197 236.515 9.90563C236.976 10.0957 237.356 10.3673 237.682 10.7067C237.995 11.0462 238.239 11.4671 238.402 11.9423C238.565 12.4175 238.66 12.9335 238.66 13.4901C238.66 14.0604 238.578 14.5764 238.402 15.0516C238.225 15.5268 237.995 15.9341 237.682 16.2872C237.37 16.6266 236.976 16.8982 236.515 17.0882C236.053 17.2783 235.537 17.387 234.94 17.387ZM234.94 16.0971C235.293 16.0971 235.619 16.0156 235.876 15.8662C236.148 15.7169 236.352 15.5132 236.528 15.2688C236.705 15.0244 236.827 14.7393 236.908 14.4406C236.99 14.1283 237.031 13.816 237.031 13.4901C237.031 13.1779 236.99 12.8656 236.908 12.5533C236.827 12.241 236.705 11.9694 236.528 11.725C236.352 11.4806 236.134 11.2906 235.876 11.1412C235.605 10.9918 235.293 10.9104 234.94 10.9104C234.587 10.9104 234.261 10.9918 234.003 11.1412C233.731 11.2906 233.528 11.4942 233.351 11.725C233.175 11.9694 233.052 12.241 232.971 12.5533C232.889 12.8656 232.849 13.1779 232.849 13.4901C232.849 13.816 232.889 14.1283 232.971 14.4406C233.052 14.7529 233.175 15.0244 233.351 15.2688C233.528 15.5132 233.745 15.7169 234.003 15.8662C234.274 16.0292 234.587 16.0971 234.94 16.0971ZM239.149 9.81059H240.384V7.58384H242.014V9.79701H243.48V11.0054H242.014V14.943C242.014 15.1195 242.027 15.2553 242.041 15.391C242.054 15.5132 242.095 15.6218 242.136 15.7033C242.19 15.7848 242.272 15.8527 242.367 15.8934C242.475 15.9341 242.611 15.9613 242.801 15.9613C242.91 15.9613 243.032 15.9613 243.141 15.9477C243.249 15.9341 243.371 15.9206 243.48 15.8934V17.1561C243.303 17.1833 243.127 17.1969 242.95 17.2104C242.774 17.2376 242.611 17.2376 242.421 17.2376C241.986 17.2376 241.647 17.1969 241.389 17.1154C241.131 17.0339 240.927 16.9117 240.778 16.7624C240.629 16.5994 240.534 16.4094 240.479 16.1785C240.425 15.9477 240.398 15.6626 240.384 15.3639V11.019H239.149V9.78343V9.81059Z" fill="var(--_color)"></path>
                                        <path d="M181.527 7.08757H174.073L171.778 0L169.47 7.08757L162.016 7.07399L168.044 11.4596L165.736 18.5472L171.764 14.1616L177.793 18.5472L175.498 11.4596L181.527 7.08757Z" fill="#00B67A"></path>
                                        <path d="M176.016 13.0618L175.5 11.4596L171.779 14.1616L176.016 13.0618Z" fill="#005128"></path>
                                        <path d="M0.996094 18V7.09091H8.25107V8.89666H3.18004V11.6346H7.8782V13.4457H3.18004V16.1942H8.2777V18H0.996094ZM11.8861 9.81818L13.4468 12.7372L15.0395 9.81818H17.2554L14.8477 13.9091L17.314 18H15.1034L13.4468 15.1289L11.8115 18H9.5796L12.0352 13.9091L9.6595 9.81818H11.8861ZM22.013 18.1598C21.182 18.1598 20.4682 17.9822 19.8717 17.6271C19.2786 17.2685 18.8223 16.7713 18.5027 16.1357C18.1866 15.5 18.0286 14.7685 18.0286 13.9411C18.0286 13.1065 18.1884 12.3714 18.508 11.7358C18.8312 11.1001 19.2893 10.6048 19.8823 10.2496C20.4789 9.89098 21.1856 9.71165 22.0023 9.71165C22.6984 9.71165 23.3092 9.83949 23.8347 10.0952C24.3638 10.3473 24.7829 10.7024 25.0918 11.1605C25.4008 11.6186 25.573 12.1548 25.6085 12.7692H23.5844C23.5169 12.3679 23.35 12.0394 23.0837 11.7837C22.8209 11.5281 22.4711 11.4002 22.0343 11.4002C21.6685 11.4002 21.3471 11.4996 21.0702 11.6985C20.7967 11.8938 20.5819 12.1797 20.4256 12.5561C20.2729 12.929 20.1966 13.38 20.1966 13.9091C20.1966 14.4453 20.2729 14.9034 20.4256 15.2834C20.5783 15.6598 20.7914 15.9492 21.0648 16.1516C21.3418 16.3505 21.665 16.4499 22.0343 16.4499C22.3042 16.4499 22.5457 16.3967 22.7587 16.2901C22.9753 16.1836 23.1547 16.0273 23.2967 15.8214C23.4388 15.6154 23.5346 15.3668 23.5844 15.0756H25.6085C25.5695 15.6829 25.399 16.2191 25.0971 16.6843C24.7989 17.1495 24.3869 17.5117 23.8614 17.771C23.3393 18.0302 22.7232 18.1598 22.013 18.1598ZM30.8149 18.1598C29.9839 18.1598 29.2666 17.9893 28.6629 17.6484C28.0628 17.304 27.6011 16.8175 27.278 16.1889C26.9548 15.5568 26.7932 14.8111 26.7932 13.9517C26.7932 13.1101 26.9548 12.3714 27.278 11.7358C27.6047 11.0966 28.061 10.5994 28.6469 10.2443C29.2364 9.8892 29.9289 9.71165 30.7243 9.71165C31.2499 9.71165 31.7417 9.79688 32.1998 9.96733C32.6615 10.1342 33.0663 10.3881 33.4143 10.729C33.7623 11.07 34.034 11.5014 34.2293 12.0234C34.4282 12.5419 34.5276 13.1527 34.5276 13.8558V14.4684H27.6988V13.1048H32.5035C32.4999 12.7603 32.4236 12.4549 32.2744 12.1886C32.1288 11.9222 31.9246 11.7127 31.6618 11.56C31.4026 11.4073 31.1008 11.331 30.7563 11.331C30.3941 11.331 30.0727 11.4162 29.7922 11.5866C29.5152 11.7571 29.2986 11.9826 29.1423 12.2631C28.9896 12.5437 28.9115 12.8544 28.9079 13.1953V14.4524C28.9079 14.8857 28.9878 15.2585 29.1476 15.571C29.3074 15.8835 29.5329 16.1232 29.8241 16.2901C30.1153 16.457 30.458 16.5405 30.8522 16.5405C31.115 16.5405 31.3529 16.5032 31.566 16.4286C31.7826 16.354 31.969 16.244 32.1253 16.0984C32.2815 15.9492 32.4005 15.7663 32.4822 15.5497L34.469 15.7148C34.3589 16.2085 34.1405 16.6381 33.8138 17.0039C33.4907 17.3697 33.0752 17.6538 32.5674 17.8562C32.0596 18.0586 31.4754 18.1598 30.8149 18.1598ZM38.2252 7.09091V18H36.0839V7.09091H38.2252ZM42.2584 7.09091V18H40.117V7.09091H42.2584ZM47.8363 18.1598C47.0053 18.1598 46.288 17.9893 45.6843 17.6484C45.0842 17.304 44.6225 16.8175 44.2994 16.1889C43.9762 15.5568 43.8146 14.8111 43.8146 13.9517C43.8146 13.1101 43.9762 12.3714 44.2994 11.7358C44.6261 11.0966 45.0824 10.5994 45.6683 10.2443C46.2578 9.8892 46.9503 9.71165 47.7457 9.71165C48.2713 9.71165 48.7631 9.79688 49.2212 9.96733C49.6829 10.1342 50.0877 10.3881 50.4357 10.729C50.7837 11.07 51.0554 11.5014 51.2507 12.0234C51.4496 12.5419 51.549 13.1527 51.549 13.8558V14.4684H44.7202V13.1048H49.5248C49.5213 12.7603 49.4449 12.4549 49.2958 12.1886C49.1502 11.9222 48.946 11.7127 48.6832 11.56C48.424 11.4073 48.1221 11.331 47.7777 11.331C47.4155 11.331 47.0941 11.4162 46.8136 11.5866C46.5366 11.7571 46.3199 11.9826 46.1637 12.2631C46.011 12.5437 45.9329 12.8544 45.9293 13.1953V14.4524C45.9293 14.8857 46.0092 15.2585 46.169 15.571C46.3288 15.8835 46.5543 16.1232 46.8455 16.2901C47.1367 16.457 47.4794 16.5405 47.8736 16.5405C48.1364 16.5405 48.3743 16.5032 48.5873 16.4286C48.804 16.354 48.9904 16.244 49.1467 16.0984C49.3029 15.9492 49.4219 15.7663 49.5035 15.5497L51.4904 15.7148C51.3803 16.2085 51.1619 16.6381 50.8352 17.0039C50.5121 17.3697 50.0966 17.6538 49.5888 17.8562C49.081 18.0586 48.4968 18.1598 47.8363 18.1598ZM55.2466 13.2433V18H53.1053V9.81818H55.1454V11.2404H55.2413C55.4259 10.7717 55.7278 10.4006 56.1468 10.1271C56.5694 9.85014 57.0861 9.71165 57.6969 9.71165C58.2615 9.71165 58.7551 9.83594 59.1777 10.0845C59.6003 10.3295 59.9288 10.6811 60.1631 11.1392C60.3975 11.5973 60.5129 12.1477 60.5094 12.7905V18H58.3734V13.1527C58.3734 12.6342 58.2384 12.2294 57.9685 11.9382C57.7022 11.647 57.3347 11.5014 56.8659 11.5014C56.5463 11.5014 56.264 11.5707 56.019 11.7092C55.7775 11.8441 55.5875 12.043 55.449 12.3058C55.3141 12.565 55.2466 12.8775 55.2466 13.2433ZM66.6333 9.81818V11.4428H61.7913V9.81818H66.6333ZM62.9259 7.85795H65.0672V15.5071C65.0672 15.7344 65.101 15.9102 65.1684 16.0344C65.2395 16.1587 65.3353 16.244 65.4561 16.2901C65.5804 16.3363 65.7189 16.3594 65.8716 16.3594C65.9852 16.3594 66.0935 16.3505 66.1965 16.3327C66.303 16.315 66.3829 16.299 66.4362 16.2848L66.7824 17.9094C66.6723 17.945 66.5179 17.984 66.319 18.0266C66.1201 18.0728 65.8769 18.1012 65.5892 18.1119C65.0672 18.1296 64.6056 18.0568 64.2043 17.8935C63.803 17.7266 63.4887 17.4709 63.2615 17.1264C63.0342 16.7784 62.9223 16.3398 62.9259 15.8107V7.85795ZM71.5848 16.0398V14.3192L76.1658 7.09091H77.636V9.49858H76.7571L73.7954 14.1914V14.2766H80.262V16.0398H71.5848ZM76.8103 18V15.5178L76.8423 14.7507V7.09091H78.8931V18H76.8103ZM82.9182 18.1278C82.5773 18.1278 82.2844 18.0089 82.0393 17.771C81.7979 17.5295 81.6789 17.2365 81.6825 16.892C81.6789 16.5547 81.7979 16.267 82.0393 16.0291C82.2844 15.7876 82.5773 15.6669 82.9182 15.6669C83.2485 15.6669 83.5361 15.7876 83.7812 16.0291C84.0298 16.267 84.1558 16.5547 84.1594 16.892C84.1558 17.1193 84.0954 17.3271 83.9783 17.5153C83.8646 17.7035 83.7155 17.8526 83.5308 17.9627C83.3462 18.0728 83.142 18.1278 82.9182 18.1278ZM89.7653 6.94176C90.3121 6.94176 90.8395 7.03409 91.3473 7.21875C91.8586 7.40341 92.3167 7.7017 92.7216 8.11364C93.13 8.52202 93.4513 9.06534 93.6857 9.74361C93.9236 10.4183 94.0444 11.2511 94.0479 12.2418C94.0479 13.1722 93.9449 14.0032 93.739 14.7347C93.5366 15.4663 93.2436 16.0859 92.8601 16.5938C92.4801 17.1016 92.0202 17.4886 91.4805 17.755C90.9442 18.0178 90.3405 18.1491 89.6694 18.1491C88.9591 18.1491 88.3288 18.0107 87.7784 17.7337C87.2315 17.4567 86.7912 17.0785 86.4574 16.5991C86.1236 16.1161 85.9211 15.571 85.8501 14.9638H87.9968C88.0891 15.3722 88.2809 15.6935 88.5721 15.9279C88.8668 16.1587 89.2326 16.2741 89.6694 16.2741C90.3974 16.2741 90.9531 15.9581 91.3366 15.326C91.7237 14.6903 91.9172 13.8168 91.9172 12.7053H91.8427C91.6758 13.0213 91.4538 13.293 91.1768 13.5202C90.8998 13.7475 90.5838 13.9233 90.2287 14.0476C89.8771 14.1683 89.5025 14.2287 89.1047 14.2287C88.462 14.2287 87.8867 14.0778 87.3789 13.7759C86.8746 13.4705 86.4751 13.0533 86.1804 12.5241C85.8892 11.995 85.7418 11.3896 85.7383 10.7077C85.7383 9.98331 85.9052 9.337 86.239 8.76882C86.5763 8.19709 87.0469 7.74964 87.6505 7.42649C88.2542 7.09979 88.9591 6.93821 89.7653 6.94176ZM89.7759 8.67294C89.4066 8.67294 89.0763 8.76172 88.7851 8.93928C88.4975 9.11328 88.2702 9.35121 88.1033 9.65305C87.9364 9.95135 87.8547 10.2852 87.8583 10.6545C87.8583 11.0202 87.94 11.3523 88.1033 11.6506C88.2667 11.9489 88.4904 12.185 88.7745 12.359C89.0621 12.533 89.3888 12.62 89.7546 12.62C90.028 12.62 90.2819 12.5685 90.5163 12.4656C90.7542 12.3626 90.9602 12.2187 91.1342 12.0341C91.3118 11.8494 91.4503 11.6381 91.5497 11.4002C91.6491 11.1623 91.6971 10.9102 91.6935 10.6438C91.69 10.2887 91.6047 9.962 91.4378 9.66371C91.2745 9.36541 91.0472 9.12571 90.756 8.9446C90.4684 8.76349 90.1417 8.67294 89.7759 8.67294ZM103.324 18.1705C102.571 18.1705 101.912 17.9947 101.347 17.6431C100.786 17.2915 100.35 16.7997 100.037 16.1676C99.7246 15.532 99.5683 14.7933 99.5683 13.9517C99.5683 13.0994 99.7246 12.3555 100.037 11.7198C100.35 11.0842 100.786 10.5906 101.347 10.239C101.912 9.88743 102.571 9.71165 103.324 9.71165C104.073 9.71165 104.728 9.88743 105.289 10.239C105.854 10.5906 106.292 11.0842 106.605 11.7198C106.921 12.3555 107.079 13.0994 107.079 13.9517C107.079 14.7933 106.921 15.532 106.605 16.1676C106.292 16.7997 105.854 17.2915 105.289 17.6431C104.728 17.9947 104.073 18.1705 103.324 18.1705ZM103.324 16.9453C103.856 16.9453 104.295 16.8068 104.639 16.5298C104.987 16.2528 105.245 15.8871 105.412 15.4325C105.579 14.978 105.662 14.4826 105.662 13.9464C105.662 13.4102 105.579 12.9148 105.412 12.4602C105.245 12.0021 104.987 11.6328 104.639 11.3523C104.295 11.0717 103.856 10.9315 103.324 10.9315C102.791 10.9315 102.351 11.0717 102.003 11.3523C101.655 11.6328 101.397 12.0021 101.23 12.4602C101.063 12.9148 100.98 13.4102 100.98 13.9464C100.98 14.4826 101.063 14.978 101.23 15.4325C101.397 15.8871 101.655 16.2528 102.003 16.5298C102.351 16.8068 102.791 16.9453 103.324 16.9453ZM114.077 14.6335V9.81818H115.483V18H114.088V16.5991H114.002C113.814 17.0252 113.516 17.3839 113.107 17.6751C112.699 17.9627 112.186 18.1065 111.568 18.1065C111.05 18.1065 110.59 17.9929 110.188 17.7656C109.791 17.5348 109.476 17.1921 109.246 16.7376C109.018 16.2795 108.905 15.706 108.905 15.017V9.81818H110.316V14.8839C110.316 15.4663 110.478 15.9297 110.801 16.2741C111.124 16.6151 111.54 16.7855 112.047 16.7855C112.353 16.7855 112.662 16.7092 112.974 16.5565C113.287 16.4002 113.548 16.1641 113.757 15.848C113.97 15.5284 114.077 15.1236 114.077 14.6335ZM121.368 9.81818V10.9794H117.027V9.81818H121.368ZM118.246 7.85795H119.653V15.6296C119.653 15.9634 119.702 16.2138 119.802 16.3807C119.901 16.5476 120.029 16.6594 120.185 16.7163C120.345 16.7731 120.514 16.8015 120.691 16.8015C120.826 16.8015 120.94 16.7944 121.032 16.7802C121.125 16.7624 121.197 16.7482 121.251 16.7376L121.517 17.9467C121.428 17.9822 121.304 18.0178 121.144 18.0533C120.984 18.0888 120.782 18.1065 120.537 18.1065C120.153 18.1101 119.786 18.0355 119.434 17.8828C119.086 17.7266 118.8 17.4886 118.577 17.169C118.356 16.8494 118.246 16.4482 118.246 15.9652V7.85795ZM130.652 18.1705C129.899 18.1705 129.241 17.9947 128.676 17.6431C128.115 17.2915 127.678 16.7997 127.366 16.1676C127.053 15.532 126.897 14.7933 126.897 13.9517C126.897 13.0994 127.053 12.3555 127.366 11.7198C127.678 11.0842 128.115 10.5906 128.676 10.239C129.241 9.88743 129.899 9.71165 130.652 9.71165C131.402 9.71165 132.057 9.88743 132.618 10.239C133.182 10.5906 133.621 11.0842 133.933 11.7198C134.25 12.3555 134.408 13.0994 134.408 13.9517C134.408 14.7933 134.25 15.532 133.933 16.1676C133.621 16.7997 133.182 17.2915 132.618 17.6431C132.057 17.9947 131.402 18.1705 130.652 18.1705ZM130.652 16.9453C131.185 16.9453 131.623 16.8068 131.968 16.5298C132.316 16.2528 132.573 15.8871 132.74 15.4325C132.907 14.978 132.991 14.4826 132.991 13.9464C132.991 13.4102 132.907 12.9148 132.74 12.4602C132.573 12.0021 132.316 11.6328 131.968 11.3523C131.623 11.0717 131.185 10.9315 130.652 10.9315C130.12 10.9315 129.679 11.0717 129.331 11.3523C128.983 11.6328 128.726 12.0021 128.559 12.4602C128.392 12.9148 128.308 13.4102 128.308 13.9464C128.308 14.4826 128.392 14.978 128.559 15.4325C128.726 15.8871 128.983 16.2528 129.331 16.5298C129.679 16.8068 130.12 16.9453 130.652 16.9453ZM139.989 9.81818V10.9794H135.482V9.81818H139.989ZM136.782 18V8.76882C136.782 8.28232 136.892 7.87749 137.112 7.55433C137.336 7.22763 137.627 6.98437 137.986 6.82457C138.344 6.66122 138.73 6.57954 139.142 6.57954C139.454 6.57954 139.715 6.6044 139.925 6.65412C140.134 6.70383 140.29 6.75 140.393 6.79261L140.026 7.97514C139.958 7.95028 139.866 7.92365 139.749 7.89524C139.635 7.86328 139.491 7.8473 139.317 7.8473C138.916 7.8473 138.627 7.94851 138.449 8.15092C138.275 8.34979 138.188 8.64276 138.188 9.02983V18H136.782ZM149.24 18.1491C148.597 18.1491 148.018 18.0231 147.503 17.771C146.988 17.5188 146.576 17.1726 146.267 16.7322C145.962 16.2884 145.797 15.7841 145.772 15.2195H147.194C147.24 15.7024 147.457 16.1001 147.844 16.4126C148.235 16.7251 148.7 16.8814 149.24 16.8814C149.676 16.8814 150.064 16.7802 150.401 16.5778C150.742 16.3754 151.008 16.0966 151.2 15.7415C151.395 15.3864 151.493 14.9815 151.493 14.527C151.493 14.0653 151.392 13.6534 151.189 13.2912C150.99 12.929 150.715 12.6449 150.364 12.4389C150.016 12.2294 149.616 12.1229 149.165 12.1193C148.831 12.1158 148.492 12.169 148.148 12.2791C147.807 12.3857 147.526 12.5259 147.306 12.6999L145.948 12.5188L146.587 7.09091H152.404V8.36932H147.817L147.45 11.5121H147.514C147.73 11.3239 148.011 11.1658 148.355 11.038C148.7 10.9102 149.064 10.8462 149.447 10.8462C150.115 10.8462 150.71 11.006 151.232 11.3256C151.754 11.6417 152.164 12.0749 152.462 12.6254C152.764 13.1722 152.915 13.7972 152.915 14.5004C152.915 15.2035 152.757 15.8303 152.441 16.3807C152.125 16.9276 151.69 17.359 151.136 17.6751C150.582 17.9911 149.95 18.1491 149.24 18.1491Z" fill="var(--_color)"></path>
                                        </g>
                                        <defs>
                                        <clipPath id="clip0_1202_2-569336">
                                            <rect width="244" height="22" fill="white"></rect>
                                        </clipPath>
                                        </defs>
                                        </svg>
                                    </a>
                                </div>
                                <ul class="x-cell e22765-e12 mhkd-b mhkd-c" role="list">
                                    <li class="x-div e22765-e13 mhkd-i mhkd-k" role="none">
                                        <div class="x-text x-text-headline e22765-e14 mhkd-t mhkd-v">
                                            <div class="x-text-content">
                                                <div class="x-text-content-text">
                                                    <p class="x-text-content-text-primary">Packs</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="x-div e22765-e15 mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e16 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5 coming-soon" tabindex="0" data-sa-event="">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">NITY ESSENTIALS</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e15 mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e16 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5" tabindex="0" data-sa-event="footer_link_products_SENTIO">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">REVVING</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e15 mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e16 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5" tabindex="0" data-sa-event="footer_link_products_STARK">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">KAISEN</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e15 mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e16 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5" tabindex="0" data-sa-event="footer_link_products_HEARTS">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">REMINISCENT</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e15 mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e16 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5" tabindex="0" data-sa-event="footer_link_products_NURTURE">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">UNIVERSITY</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="x-cell e22765-e17 mhkd-b mhkd-c" role="list">
                                    <li class="x-div e22765-e18 mhkd-i mhkd-k" role="none">
                                        <div class="x-text x-text-headline e22765-e19 mhkd-t mhkd-v">
                                            <div class="x-text-content">
                                                <div class="x-text-content-text">
                                                    <p class="x-text-content-text-primary">ϐׁׅ֒ᥣׁׅ֪ᨵׁׅᧁׁ</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="x-div e22765-e20 mhkd-d mhkd-e mhkd-f mhkd-i mhkd-k mhkd-n">
                                        <a class="x-anchor x-anchor-button e22765-e21 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-13 mhkd-1 mhkd-5">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">𝓘ଘ⌕ꕤ ℛ⋆⊹𓂅✧ᯅ⋆⊹</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e20 mhkd-d mhkd-e mhkd-f mhkd-i mhkd-k mhkd-n">
                                        <a class="x-anchor x-anchor-button e22765-e21 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-13 mhkd-1 mhkd-5">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">𝓘ଘ⌕ꕤ ℛ⋆⊹𓂅✧ᯅ⋆⊹</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e20 mhkd-d mhkd-e mhkd-f mhkd-i mhkd-k mhkd-n">
                                        <a class="x-anchor x-anchor-button e22765-e21 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-13 mhkd-1 mhkd-5">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">𝓘ଘ⌕ꕤ ℛ⋆⊹𓂅✧ᯅ⋆⊹</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e20 mhkd-d mhkd-e mhkd-f mhkd-i mhkd-k mhkd-n">
                                        <a class="x-anchor x-anchor-button e22765-e21 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-13 mhkd-1 mhkd-5">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">𝓘ଘ⌕ꕤ ℛ⋆⊹𓂅✧ᯅ⋆⊹</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e20 mhkd-d mhkd-e mhkd-f mhkd-i mhkd-k mhkd-n">
                                        <a class="x-anchor x-anchor-button e22765-e21 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-13 mhkd-1 mhkd-5">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">𝓘ଘ⌕ꕤ ℛ⋆⊹𓂅✧ᯅ⋆⊹</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="x-cell e22765-e22 mhkd-b mhkd-c" role="list">
                                    <li class="x-div e22765-e23 mhkd-i mhkd-k" role="none">
                                        <div class="x-text x-text-headline e22765-e24 mhkd-t mhkd-v">
                                            <div class="x-text-content">
                                                <div class="x-text-content-text">
                                                    <p class="x-text-content-text-primary">Connect</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="x-div mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e26 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5 icon-ig" tabindex="0" href="https://www.instagram.com/ElectronNity_/" data-sa-event="footer_link_connect_Instagram">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">instagram␥˜ ͚̫͋˜</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e26 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5 icon-yt" tabindex="0" href="https://www.youtube.com/ElectronNity" data-sa-event="footer_link_connect_YouTube">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">youtube⁀t⁞͇͚♧</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e26 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5 icon-sc" tabindex="0" href="https://soundcloud.com/electronnity/" data-sa-event="footer_link_connect_SoundCloud">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">soundcloud‿⁛͇͋✳</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e26 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5 icon-fb" tabindex="0" href="https://www.facebook.com/ElectronNity/" data-sa-event="footer_link_connect_Facebook">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">facebook‧․⊱̥̤͋⏧₈</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div mhkd-d mhkd-e mhkd-f mhkd-g mhkd-h mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e26 mhkd-x mhkd-y mhkd-z mhkd-10 mhkd-11 mhkd-12 mhkd-1 mhkd-5 icon-tw" tabindex="0" href="https://twitter.com/ItsNity_" data-sa-event="footer_link_connect_X / Twitter">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">twitter⎠ ͇͋ Ξ͚</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="bar-container e22765-e27 mhkd-8 mhkd-9">
                            <hr class="x-line e22765-e28 mhkd-17 mhkd-1">
                            </hr>
                            <div class="x-div e22765-e29 mhkd-d mhkd-g mhkd-i mhkd-k mhkd-l mhkd-o mhkd-p">
                                <ul class="x-div e22765-e30 mhkd-d mhkd-f mhkd-g mhkd-i mhkd-k mhkd-l mhkd-p" role="list">
                                    <div class="x-text x-text-headline e22765-e31 mhkd-t mhkd-v visually-hidden">
                                        <div class="x-text-content">
                                            <div class="x-text-content-text">
                                                <p class="x-text-content-text-primary">Legal Resources</p>
                                            </div>
                                        </div>
                                    </div>
                                    <li class="x-div e22765-e32 mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e33 mhkd-x mhkd-y mhkd-11 mhkd-12 mhkd-14 mhkd-15 mhkd-1 mhkd-5" tabindex="0" href="/privacy-policy/" data-sa-event="footer_link_resources_Privacy Policy">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Privacy Policy</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e32 mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e33 mhkd-x mhkd-y mhkd-11 mhkd-12 mhkd-14 mhkd-15 mhkd-1 mhkd-5" tabindex="0" href="/terms-conditions/" data-sa-event="footer_link_resources_Terms &amp; Conditions">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Terms & Conditions</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e32 mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e33 mhkd-x mhkd-y mhkd-11 mhkd-12 mhkd-14 mhkd-15 mhkd-1 mhkd-5" tabindex="0" href="/legal-notice/" data-sa-event="footer_link_resources_Legal Notice">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Legal Notice</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e32 mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e33 mhkd-x mhkd-y mhkd-11 mhkd-12 mhkd-14 mhkd-15 mhkd-1 mhkd-5" tabindex="0" href="/copyright/" data-sa-event="footer_link_resources_Copyright">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Copyright</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="x-div e22765-e32 mhkd-i mhkd-k">
                                        <a class="x-anchor x-anchor-button e22765-e33 mhkd-x mhkd-y mhkd-11 mhkd-12 mhkd-14 mhkd-15 mhkd-1 mhkd-5" tabindex="0" href="/support/" data-sa-event="footer_link_resources_Support">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Support</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <div class="x-div e22765-e34 mhkd-d mhkd-g mhkd-i mhkd-k mhkd-l mhkd-p mhkd-q mhkd-1 mhkd-3 mhkd-6" data-x-effect="{&quot;durationBase&quot;:&quot;200ms&quot;}">
                                    <svg viewBox="0 0 38 24" xmlns="http://www.w3.org/2000/svg" width="38" height="24" role="img" aria-labelledby="pi-paypal">
                                    <title id="pi-paypal">PayPal</title>
                                    <path opacity=".07" d="M35 0H3C1.3 0 0 1.3 0 3v18c0 1.7 1.4 3 3 3h32c1.7 0 3-1.3 3-3V3c0-1.7-1.4-3-3-3z"></path>
                                    <path fill="#fff" d="M35 1c1.1 0 2 .9 2 2v18c0 1.1-.9 2-2 2H3c-1.1 0-2-.9-2-2V3c0-1.1.9-2 2-2h32"></path>
                                    <path fill="#003087" d="M23.9 8.3c.2-1 0-1.7-.6-2.3-.6-.7-1.7-1-3.1-1h-4.1c-.3 0-.5.2-.6.5L14 15.6c0 .2.1.4.3.4H17l.4-3.4 1.8-2.2 4.7-2.1z"></path>
                                    <path fill="#3086C8" d="M23.9 8.3l-.2.2c-.5 2.8-2.2 3.8-4.6 3.8H18c-.3 0-.5.2-.6.5l-.6 3.9-.2 1c0 .2.1.4.3.4H19c.3 0 .5-.2.5-.4v-.1l.4-2.4v-.1c0-.2.3-.4.5-.4h.3c2.1 0 3.7-.8 4.1-3.2.2-1 .1-1.8-.4-2.4-.1-.5-.3-.7-.5-.8z"></path>
                                    <path fill="#012169" d="M23.3 8.1c-.1-.1-.2-.1-.3-.1-.1 0-.2 0-.3-.1-.3-.1-.7-.1-1.1-.1h-3c-.1 0-.2 0-.2.1-.2.1-.3.2-.3.4l-.7 4.4v.1c0-.3.3-.5.6-.5h1.3c2.5 0 4.1-1 4.6-3.8v-.2c-.1-.1-.3-.2-.5-.2h-.1z"></path>
                                    </svg>
                                    <svg viewBox="0 0 38 24" xmlns="http://www.w3.org/2000/svg" role="img" width="38" height="24" aria-labelledby="pi-visa">
                                    <title id="pi-visa">Visa</title>
                                    <path opacity=".07" d="M35 0H3C1.3 0 0 1.3 0 3v18c0 1.7 1.4 3 3 3h32c1.7 0 3-1.3 3-3V3c0-1.7-1.4-3-3-3z"></path>
                                    <path fill="#fff" d="M35 1c1.1 0 2 .9 2 2v18c0 1.1-.9 2-2 2H3c-1.1 0-2-.9-2-2V3c0-1.1.9-2 2-2h32"></path>
                                    <path d="M28.3 10.1H28c-.4 1-.7 1.5-1 3h1.9c-.3-1.5-.3-2.2-.6-3zm2.9 5.9h-1.7c-.1 0-.1 0-.2-.1l-.2-.9-.1-.2h-2.4c-.1 0-.2 0-.2.2l-.3.9c0 .1-.1.1-.1.1h-2.1l.2-.5L27 8.7c0-.5.3-.7.8-.7h1.5c.1 0 .2 0 .2.2l1.4 6.5c.1.4.2.7.2 1.1.1.1.1.1.1.2zm-13.4-.3l.4-1.8c.1 0 .2.1.2.1.7.3 1.4.5 2.1.4.2 0 .5-.1.7-.2.5-.2.5-.7.1-1.1-.2-.2-.5-.3-.8-.5-.4-.2-.8-.4-1.1-.7-1.2-1-.8-2.4-.1-3.1.6-.4.9-.8 1.7-.8 1.2 0 2.5 0 3.1.2h.1c-.1.6-.2 1.1-.4 1.7-.5-.2-1-.4-1.5-.4-.3 0-.6 0-.9.1-.2 0-.3.1-.4.2-.2.2-.2.5 0 .7l.5.4c.4.2.8.4 1.1.6.5.3 1 .8 1.1 1.4.2.9-.1 1.7-.9 2.3-.5.4-.7.6-1.4.6-1.4 0-2.5.1-3.4-.2-.1.2-.1.2-.2.1zm-3.5.3c.1-.7.1-.7.2-1 .5-2.2 1-4.5 1.4-6.7.1-.2.1-.3.3-.3H18c-.2 1.2-.4 2.1-.7 3.2-.3 1.5-.6 3-1 4.5 0 .2-.1.2-.3.2M5 8.2c0-.1.2-.2.3-.2h3.4c.5 0 .9.3 1 .8l.9 4.4c0 .1 0 .1.1.2 0-.1.1-.1.1-.1l2.1-5.1c-.1-.1 0-.2.1-.2h2.1c0 .1 0 .1-.1.2l-3.1 7.3c-.1.2-.1.3-.2.4-.1.1-.3 0-.5 0H9.7c-.1 0-.2 0-.2-.2L7.9 9.5c-.2-.2-.5-.5-.9-.6-.6-.3-1.7-.5-1.9-.5L5 8.2z" fill="#142688"></path>
                                    </svg>
                                    <svg viewBox="0 0 38 24" xmlns="http://www.w3.org/2000/svg" width="38" height="24" role="img" aria-labelledby="pi-maestro">
                                    <title id="pi-maestro">Maestro</title>
                                    <path opacity=".07" d="M35 0H3C1.3 0 0 1.3 0 3v18c0 1.7 1.4 3 3 3h32c1.7 0 3-1.3 3-3V3c0-1.7-1.4-3-3-3z"></path>
                                    <path fill="#fff" d="M35 1c1.1 0 2 .9 2 2v18c0 1.1-.9 2-2 2H3c-1.1 0-2-.9-2-2V3c0-1.1.9-2 2-2h32"></path>
                                    <circle fill="#EB001B" cx="15" cy="12" r="7"></circle>
                                    <circle fill="#00A2E5" cx="23" cy="12" r="7"></circle>
                                    <path fill="#7375CF" d="M22 12c0-2.4-1.2-4.5-3-5.7-1.8 1.3-3 3.4-3 5.7s1.2 4.5 3 5.7c1.8-1.2 3-3.3 3-5.7z"></path>
                                    </svg>
                                    <svg viewBox="0 0 38 24" xmlns="http://www.w3.org/2000/svg" role="img" width="38" height="24" aria-labelledby="pi-master">
                                    <title id="pi-master">Mastercard</title>
                                    <path opacity=".07" d="M35 0H3C1.3 0 0 1.3 0 3v18c0 1.7 1.4 3 3 3h32c1.7 0 3-1.3 3-3V3c0-1.7-1.4-3-3-3z"></path>
                                    <path fill="#fff" d="M35 1c1.1 0 2 .9 2 2v18c0 1.1-.9 2-2 2H3c-1.1 0-2-.9-2-2V3c0-1.1.9-2 2-2h32"></path>
                                    <circle fill="#EB001B" cx="15" cy="12" r="7"></circle>
                                    <circle fill="#F79E1B" cx="23" cy="12" r="7"></circle>
                                    <path fill="#FF5F00" d="M22 12c0-2.4-1.2-4.5-3-5.7-1.8 1.3-3 3.4-3 5.7s1.2 4.5 3 5.7c1.8-1.2 3-3.3 3-5.7z"></path>
                                    </svg>
                                    <svg xmlns="http://www.w3.org/2000/svg" role="img" viewBox="0 0 38 24" width="38" height="24" aria-labelledby="pi-american_express">
                                    <title id="pi-american_express">American Express</title>
                                    <g fill="none">
                                    <path fill="#000" d="M35,0 L3,0 C1.3,0 0,1.3 0,3 L0,21 C0,22.7 1.4,24 3,24 L35,24 C36.7,24 38,22.7 38,21 L38,3 C38,1.3 36.6,0 35,0 Z" opacity=".07"></path>
                                    <path fill="#006FCF" d="M35,1 C36.1,1 37,1.9 37,3 L37,21 C37,22.1 36.1,23 35,23 L3,23 C1.9,23 1,22.1 1,21 L1,3 C1,1.9 1.9,1 3,1 L35,1"></path>
                                    <path fill="#FFF" d="M8.971,10.268 L9.745,12.144 L8.203,12.144 L8.971,10.268 Z M25.046,10.346 L22.069,10.346 L22.069,11.173 L24.998,11.173 L24.998,12.412 L22.075,12.412 L22.075,13.334 L25.052,13.334 L25.052,14.073 L27.129,11.828 L25.052,9.488 L25.046,10.346 L25.046,10.346 Z M10.983,8.006 L14.978,8.006 L15.865,9.941 L16.687,8 L27.057,8 L28.135,9.19 L29.25,8 L34.013,8 L30.494,11.852 L33.977,15.68 L29.143,15.68 L28.065,14.49 L26.94,15.68 L10.03,15.68 L9.536,14.49 L8.406,14.49 L7.911,15.68 L4,15.68 L7.286,8 L10.716,8 L10.983,8.006 Z M19.646,9.084 L17.407,9.084 L15.907,12.62 L14.282,9.084 L12.06,9.084 L12.06,13.894 L10,9.084 L8.007,9.084 L5.625,14.596 L7.18,14.596 L7.674,13.406 L10.27,13.406 L10.764,14.596 L13.484,14.596 L13.484,10.661 L15.235,14.602 L16.425,14.602 L18.165,10.673 L18.165,14.603 L19.623,14.603 L19.647,9.083 L19.646,9.084 Z M28.986,11.852 L31.517,9.084 L29.695,9.084 L28.094,10.81 L26.546,9.084 L20.652,9.084 L20.652,14.602 L26.462,14.602 L28.076,12.864 L29.624,14.602 L31.499,14.602 L28.987,11.852 L28.986,11.852 Z"></path>
                                    </g>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <div class="x-cart-notification">
                <div class="x-cart-notification-icon loading">
                    <i class='x-framework-icon x-icon-cart-arrow-down' data-x-icon-l='&#xf218;' aria-hidden=true></i>
                </div>
                <div class="x-cart-notification-icon added">
                    <i class='x-framework-icon x-icon-check' data-x-icon-l='&#xf00c;' aria-hidden=true></i>
                </div>
            </div>
            <div id="filler1-v2-dropdown" class="x-dropdown mgy8-5m mgy8-5n mgy8-5o filler1-v2 global_nav__item" data-x-stem data-x-stem-root data-x-toggleable="filler1-v2" data-x-hoverintent="{&quot;interval&quot;:0,&quot;timeout&quot;:50,&quot;sensitivity&quot;:9}" aria-hidden="true" style="--_elevated-group-count: 2; --_group-count: 1; --_item-total: 6;">
                <hr class="x-line filler1-v3 mgy8-5s">
                </hr>
                <div class="x-div filler1-v4 bar-text mgy8-m mgy8-o mgy8-p inn-col s-col bar-margin0 bar-margin2 bar-margin7 bar-margin8 bar-margin9 bar-margina bar-marginb bar-margin_2 submenu-container">
                    <ul class="x-div filler3-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                        <li class="x-div filler4-v0 s-col bar-margin_2" role="none">
                            <div class="x-text x-text-headline filler4-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                <div class="x-text-content">
                                    <div class="x-text-content-text">
                                        <h2 class="x-text-content-text-primary">Premium Packs</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="x-div filler5-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button filler5-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">LA BELLE</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div filler6-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button filler6-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">DUALITY</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div filler7-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button filler7-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" style="--_item-number: 4;" data-sa-event="header_dropdowm_HEARTS">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">REVVING</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div filler8-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button filler8-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" style="--_item-number: 5;" data-sa-event="header_dropdowm_NURTURE">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">KAISEN</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div filler9-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button filler9-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" style="--_item-number: 6;" data-sa-event="header_dropdowm_CHROMA">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">UNIVERSITY</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <ul class="x-div e21968-e20-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 1;" role="list">
                        <li class="x-div e21968-e21-v0 s-col bar-margin_2" role="none">
                            <div class="x-text x-text-headline e21968-e21-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                <div class="x-text-content">
                                    <div class="x-text-content-text">
                                        <h2 class="x-text-content-text-primary">Shop</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="x-div e21968-e22-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e22-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" href="${pageContext.request.contextPath}/shop" style="--_item-number: 2;" data-sa-event="header_dropdowm_All Packs">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">Go To Shop</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <ul class="x-div e21968-e23-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-margind bar-margine bar-marginf bar-margin_2" style="--_group-number: 2;" role="list">
                        <li class="x-div e21968-e24-v0 s-col bar-margin_2" role="none">
                            <div class="x-text x-text-headline e21968-e24-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                <div class="x-text-content">
                                    <div class="x-text-content-text">
                                        <h2 class="x-text-content-text-primary">Categories</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="x-div e21968-e25-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e25-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2 " tabindex="0" href="${pageContext.request.contextPath}/shop?filter=anime-series" style="--_item-number: 2;" data-sa-event="header_dropdowm_Artist Edition">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">Anime Series</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div e21968-e26-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e26-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2 " tabindex="0" href="${pageContext.request.contextPath}/shop?filter=album-series" style="--_item-number: 3;" data-sa-event="header_dropdowm_Serum Presets">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">Album Series</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div e21968-e29-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e29-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2 " tabindex="0" href="${pageContext.request.contextPath}/merch" style="--_item-number: 6;" data-sa-event="header_dropdowm_Under €20">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">Merchandise</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="e21968-e30-v2-dropdown" class="x-dropdown mgy8-5m mgy8-5n mgy8-5o e21968-e30-v2 global_nav__item" data-x-stem data-x-stem-root data-x-toggleable="e21968-e30-v2" data-x-hoverintent="{&quot;interval&quot;:0,&quot;timeout&quot;:50,&quot;sensitivity&quot;:9}" aria-hidden="true" style="--_elevated-group-count: 2; --_group-count: 1; --_item-total: 6;">
                <hr class="x-line e21968-e30-v3 mgy8-5s">
                </hr>
                <div class="x-div e21968-e30-v4 bar-text mgy8-m mgy8-o mgy8-p inn-col s-col bar-margin0 bar-margin2 bar-margin7 bar-margin8 bar-margin9 bar-margina bar-marginb bar-margin_2 submenu-container">
                    <ul class="x-div e21968-e32-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                        <li class="x-div e21968-e33-v0 s-col bar-margin_2" role="none">
                            <div class="x-text x-text-headline e21968-e33-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                <div class="x-text-content">
                                    <div class="x-text-content-text">
                                        <h2 class="x-text-content-text-primary">Freebies</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="x-div e21968-e34-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e34-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow coming-soon" tabindex="0" style="--_item-number: 2;" data-sa-event="">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">NITY ESSENTIALS</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="x-div e21968-e38-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e38-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" href="" style="--_item-number: 6;" data-sa-event="">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary"></span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <ul class="x-div e21968-e39-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 1;" role="list">
                        <li class="x-div e21968-e40-v0 s-col bar-margin_2" role="none">
                            <div class="x-text x-text-headline e21968-e40-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                <div class="x-text-content">
                                    <div class="x-text-content-text">
                                        <h2 class="x-text-content-text-primary">Merchandise</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="x-div e21968-e41-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e41-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" href="${pageContext.request.contextPath}/merch">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">ALL MERCH</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="e21968-e46-v2-dropdown" class="x-dropdown mgy8-5m mgy8-5n mgy8-5o e21968-e46-v2 global_nav__item" data-x-stem data-x-stem-root data-x-toggleable="e21968-e46-v2" data-x-hoverintent="{&quot;interval&quot;:0,&quot;timeout&quot;:50,&quot;sensitivity&quot;:9}" aria-hidden="true" style="--_elevated-group-count: 2; --_group-count: 0; --_item-total: 2;">
                <hr class="x-line e21968-e46-v3 mgy8-5s">
                </hr>
                <div class="x-div e21968-e46-v4 bar-text mgy8-m mgy8-o mgy8-p inn-col s-col bar-margin0 bar-margin2 bar-margin7 bar-margin8 bar-margin9 bar-margina bar-marginb bar-margin_2 submenu-container">
                    <ul class="x-div e21968-e48-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                        <li class="x-div e21968-e49-v0 s-col bar-margin_2" role="none">
                            <div class="x-text x-text-headline e21968-e49-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                <div class="x-text-content">
                                    <div class="x-text-content-text">
                                        <h2 class="x-text-content-text-primary">Musician Club</h2>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="x-div e21968-e50-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                            <a class="x-anchor x-anchor-button e21968-e50-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  coming-soon" tabindex="0" href="#" style="--_item-number: 2;" data-sa-event="header_dropdowm_Join the Club">
                                <div class="x-anchor-content">
                                    <div class="x-anchor-text">
                                        <span class="x-anchor-text-primary">Join the Club</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="x-div e21968-e51 bar-text mgy8-m mgy8-n mgy8-o col align s-col bar-marging bar-marginh bar-margini">
                        <svg width="160" height="40" viewBox="0 0 160 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 1.02045H10.6485C13.2863 1.02045 15.1913 1.55776 16.3636 2.63238C17.5522 3.69073 18.1465 5.10727 18.1465 6.88203C18.1465 8.64051 17.5603 10.0408 16.388 11.0828C15.2157 12.1086 13.3432 12.6215 10.7707 12.6215H4.59157V18.5564H0V1.02045ZM10.6974 8.86032C11.7069 8.86032 12.4314 8.68935 12.8711 8.34743C13.327 8.0055 13.5549 7.5089 13.5549 6.85761C13.5549 5.96209 13.2456 5.39221 12.6268 5.14798C12.0244 4.90375 11.3405 4.78163 10.5753 4.78163H4.59157V8.86032H10.6974Z" fill="var(--init)" />
                        <path d="M19.3192 1.02045H29.9677C32.5729 1.02045 34.4697 1.53334 35.6583 2.55911C36.8632 3.56861 37.4657 4.84676 37.4657 6.39357C37.4657 7.32165 37.2377 8.1439 36.7818 8.86032C36.3422 9.57673 35.6258 10.1222 34.6326 10.4967V10.7409C35.7398 11.0014 36.4887 11.4085 36.8795 11.9621C37.2703 12.5157 37.4657 13.2484 37.4657 14.1602C37.4657 15.1371 37.4901 15.9512 37.5389 16.6025C37.6041 17.2538 37.7425 17.9051 37.9541 18.5564H33.3626C33.1509 17.9865 33.0125 17.4085 32.9474 16.8223C32.8985 16.2361 32.8741 15.5116 32.8741 14.6486C32.8741 13.9973 32.6461 13.5007 32.1902 13.1588C31.7343 12.8006 30.9691 12.6215 29.8945 12.6215H23.9108V18.5564H19.3192V1.02045ZM30.0166 8.86032C31.0261 8.86032 31.7506 8.68935 32.1902 8.34743C32.6461 8.0055 32.8741 7.5089 32.8741 6.85761C32.8741 5.96209 32.5647 5.39221 31.946 5.14798C31.3436 4.90375 30.6597 4.78163 29.8945 4.78163H23.9108V8.86032H30.0166Z" fill="var(--init)" />
                        <path d="M49.3436 19.0448C47.292 19.0448 45.4603 18.6703 43.8483 17.9213C42.2364 17.1561 40.9664 16.0733 40.0383 14.6731C39.1265 13.2728 38.6706 11.6446 38.6706 9.7884C38.6706 7.93223 39.1265 6.30401 40.0383 4.90375C40.9501 3.50348 42.212 2.42886 43.8239 1.67988C45.4521 0.914614 47.292 0.531982 49.3436 0.531982C51.3788 0.531982 53.2025 0.914614 54.8144 1.67988C56.4263 2.42886 57.6882 3.50348 58.6 4.90375C59.5281 6.30401 59.9921 7.93223 59.9921 9.7884C59.9921 11.6446 59.5281 13.2728 58.6 14.6731C57.6882 16.0733 56.4263 17.1561 54.8144 17.9213C53.2025 18.6703 51.3788 19.0448 49.3436 19.0448ZM43.2378 9.7884C43.2378 10.8956 43.4983 11.8481 44.0193 12.6459C44.5566 13.4437 45.2812 14.0543 46.193 14.4777C47.1211 14.8847 48.1713 15.0882 49.3436 15.0882C50.4996 15.0882 51.5417 14.8847 52.4698 14.4777C53.3978 14.0543 54.1224 13.4437 54.6434 12.6459C55.1807 11.8481 55.4494 10.8956 55.4494 9.7884C55.4494 8.68121 55.1807 7.72871 54.6434 6.93088C54.1224 6.13305 53.3978 5.53061 52.4698 5.12356C51.5417 4.70022 50.4996 4.48855 49.3436 4.48855C48.1713 4.48855 47.1211 4.70022 46.193 5.12356C45.2812 5.53061 44.5566 6.13305 44.0193 6.93088C43.4983 7.72871 43.2378 8.68121 43.2378 9.7884Z" fill="var(--init)" />
                        <path d="M61.3205 1.02045H71.1631C74.5498 1.02045 77.1061 1.80199 78.832 3.36508C80.5579 4.91189 81.4209 7.053 81.4209 9.7884C81.4209 12.5238 80.5579 14.6731 78.832 16.2361C77.1061 17.783 74.5498 18.5564 71.1631 18.5564H61.3205V1.02045ZM70.9433 14.5754C72.7995 14.5754 74.1997 14.2009 75.1441 13.4519C76.1047 12.7029 76.5851 11.4817 76.5851 9.7884C76.5851 8.06249 76.1047 6.83318 75.1441 6.10049C74.1834 5.35151 72.7832 4.97702 70.9433 4.97702H65.9121V14.5754H70.9433Z" fill="var(--init)" />
                        <path d="M91.4327 19.0448C88.681 19.0448 86.5155 18.5156 84.9361 17.4573C83.373 16.399 82.5915 14.73 82.5915 12.4505V1.02045H87.183V11.8644C87.183 13.053 87.5412 13.8915 88.2577 14.38C88.9741 14.8522 90.0324 15.0882 91.4327 15.0882C92.8329 15.0882 93.8913 14.8522 94.6077 14.38C95.3241 13.8915 95.6823 13.053 95.6823 11.8644V1.02045H100.274V12.4505C100.274 14.73 99.4842 16.399 97.9048 17.4573C96.3418 18.5156 94.1844 19.0448 91.4327 19.0448Z" fill="var(--init)" />
                        <path d="M112.071 19.0448C110.02 19.0448 108.18 18.6703 106.552 17.9213C104.94 17.1561 103.678 16.0733 102.766 14.6731C101.854 13.2728 101.398 11.6446 101.398 9.7884C101.398 7.93223 101.854 6.30401 102.766 4.90375C103.678 3.50348 104.94 2.42886 106.552 1.67988C108.18 0.914614 110.02 0.531982 112.071 0.531982C114.4 0.531982 116.451 1.05301 118.226 2.09507C120.001 3.12085 121.246 4.52112 121.963 6.29587L117.689 7.78569C117.265 6.80876 116.549 6.0435 115.539 5.48991C114.546 4.93631 113.39 4.65952 112.071 4.65952C110.915 4.65952 109.873 4.86304 108.945 5.2701C108.017 5.67715 107.284 6.27145 106.747 7.05299C106.226 7.81826 105.965 8.73006 105.965 9.7884C105.965 10.8467 106.226 11.7667 106.747 12.5482C107.284 13.3135 108.017 13.8996 108.945 14.3067C109.873 14.7138 110.915 14.9173 112.071 14.9173C113.39 14.9173 114.546 14.6405 115.539 14.0869C116.549 13.5333 117.265 12.768 117.689 11.7911L121.963 13.2809C121.246 15.0557 120.001 16.4641 118.226 17.5062C116.451 18.5319 114.4 19.0448 112.071 19.0448Z" fill="var(--init)" />
                        <path d="M123.094 1.02045H139.433V4.97702H127.686V7.83454H139.433V11.7423H127.686V14.5998H139.433V18.5564H123.094V1.02045Z" fill="var(--init)" />
                        <path d="M141.245 1.02045H151.893C154.498 1.02045 156.395 1.53334 157.584 2.55911C158.789 3.56861 159.391 4.84676 159.391 6.39357C159.391 7.32165 159.163 8.1439 158.707 8.86032C158.268 9.57673 157.551 10.1222 156.558 10.4967V10.7409C157.665 11.0014 158.414 11.4085 158.805 11.9621C159.196 12.5157 159.391 13.2484 159.391 14.1602C159.391 15.1371 159.416 15.9512 159.464 16.6025C159.53 17.2538 159.668 17.9051 159.88 18.5564H155.288C155.076 17.9865 154.938 17.4085 154.873 16.8223C154.824 16.2361 154.8 15.5116 154.8 14.6486C154.8 13.9973 154.572 13.5007 154.116 13.1588C153.66 12.8006 152.895 12.6215 151.82 12.6215H145.836V18.5564H141.245V1.02045ZM151.942 8.86032C152.952 8.86032 153.676 8.68935 154.116 8.34743C154.572 8.0055 154.8 7.5089 154.8 6.85761C154.8 5.96209 154.49 5.39221 153.872 5.14798C153.269 4.90375 152.585 4.78163 151.82 4.78163H145.836V8.86032H151.942Z" fill="var(--init)" />
                        <path d="M96.3581 43.4682C94.3066 43.4682 92.4667 43.0937 90.8385 42.3447C89.2266 41.5794 87.9647 40.4967 87.0529 39.0964C86.1411 37.6961 85.6852 36.0679 85.6852 34.2117C85.6852 32.3556 86.1411 30.7274 87.0529 29.3271C87.9647 27.9268 89.2266 26.8522 90.8385 26.1032C92.4667 25.338 94.3066 24.9553 96.3581 24.9553C98.6865 24.9553 100.738 25.4764 102.513 26.5184C104.288 27.5442 105.533 28.9445 106.25 30.7192L101.975 32.209C101.552 31.2321 100.836 30.4668 99.8262 29.9132C98.833 29.3597 97.677 29.0829 96.3581 29.0829C95.2021 29.0829 94.1601 29.2864 93.232 29.6934C92.3039 30.1005 91.5712 30.6948 91.0339 31.4763C90.5128 32.2416 90.2523 33.1534 90.2523 34.2117C90.2523 35.2701 90.5128 36.19 91.0339 36.9716C91.5712 37.7368 92.3039 38.323 93.232 38.73C94.1601 39.1371 95.2021 39.3406 96.3581 39.3406C97.677 39.3406 98.833 39.0638 99.8262 38.5102C100.836 37.9566 101.552 37.1914 101.975 36.2144L106.25 37.7043C105.533 39.479 104.288 40.8874 102.513 41.9295C100.738 42.9553 98.6865 43.4682 96.3581 43.4682Z" fill="var(--init)" />
                        <path d="M107.381 25.4438H111.973V39.0231H121.278V42.9797H107.381V25.4438Z" fill="var(--init)" />
                        <path d="M130.887 43.4682C128.135 43.4682 125.969 42.939 124.39 41.8806C122.827 40.8223 122.045 39.1534 122.045 36.8739V25.4438H126.637V36.2877C126.637 37.4763 126.995 38.3148 127.712 38.8033C128.428 39.2755 129.486 39.5116 130.887 39.5116C132.287 39.5116 133.345 39.2755 134.062 38.8033C134.778 38.3148 135.136 37.4763 135.136 36.2877V25.4438H139.728V36.8739C139.728 39.1534 138.938 40.8223 137.359 41.8806C135.796 42.939 133.638 43.4682 130.887 43.4682Z" fill="var(--init)" />
                        <path d="M141.512 25.4438H153.503C155.425 25.4438 156.874 25.8427 157.851 26.6405C158.828 27.4384 159.316 28.6025 159.316 30.1331C159.316 30.9309 159.137 31.6554 158.779 32.3067C158.421 32.9417 157.94 33.4302 157.338 33.7721C159.113 34.4723 160 35.8074 160 37.7775C160 39.3732 159.487 40.6432 158.461 41.5876C157.452 42.5157 155.799 42.9797 153.503 42.9797H141.512V25.4438ZM152.649 39.1452C153.398 39.1452 154.024 39.0394 154.529 38.8277C155.05 38.6161 155.311 38.1113 155.311 37.3135C155.311 36.5971 155.058 36.1493 154.554 35.9702C154.049 35.7748 153.398 35.6771 152.6 35.6771H145.932V39.1452H152.649ZM152.697 32.2579C153.284 32.2579 153.788 32.1683 154.212 31.9892C154.651 31.7938 154.871 31.3624 154.871 30.6948C154.871 30.0272 154.643 29.6039 154.187 29.4248C153.748 29.2457 153.178 29.1561 152.478 29.1561H145.932V32.2579H152.697Z" fill="var(--init)" />
                        <line x1="79.3756" y1="33.8371" x2="14.2469" y2="33.8371" stroke="var(--init)" stroke-width="2.06784" />
                        <path d="M0.915882 41.5992C0.915758 41.3066 0.991202 41.0192 1.13492 40.7644L3.21702 36.8886L0.324362 31.7488C0.127126 31.4277 0.0154612 31.0617 0 30.6852C0.0138208 30.4047 0.0914772 30.1306 0.227049 29.8847C0.362621 29.6388 0.552548 29.4274 0.782326 29.2661L5.93103 25.0922C6.22731 24.8277 6.60718 24.6755 7.00414 24.6628C7.17992 24.6659 7.35332 24.7042 7.51409 24.7754C7.67486 24.8465 7.81974 24.9492 7.94024 25.0773C8.06073 25.2053 8.15436 25.3559 8.21564 25.5207C8.27692 25.6855 8.30459 25.8609 8.29702 26.0365C8.29749 26.3263 8.22453 26.6122 8.08488 26.8661L6.06231 30.7299L8.89543 35.8817C9.0887 36.1987 9.19699 36.5601 9.20987 36.9311C9.19835 37.2112 9.12248 37.4848 8.98814 37.7309C8.85379 37.9769 8.66458 38.1891 8.43519 38.3502L3.28648 42.548C2.98582 42.8054 2.60862 42.9561 2.21338 42.9773C2.03756 42.9724 1.86441 42.933 1.70394 42.861C1.54347 42.789 1.39881 42.6858 1.27826 42.5577C1.1577 42.4296 1.06365 42.2787 1.00146 42.1142C0.939267 41.9497 0.910184 41.775 0.915882 41.5992V41.5992Z" fill="var(--init)" />
                        </svg>
                    </div>
                </div>
            </div>
                <div id="e21968-e95-v2-dropdown" class="x-dropdown mgy8-5m mgy8-5n mgy8-5o e21968-e95-v2 global_nav__item" data-x-stem data-x-stem-root data-x-toggleable="e21968-e95-v2" data-x-hoverintent="{&quot;interval&quot;:0,&quot;timeout&quot;:50,&quot;sensitivity&quot;:9}" aria-hidden="true" style="--_elevated-group-count: 1; --_group-count: 1; --_item-total: 4;">
                    <hr class="x-line e21968-e95-v3 mgy8-5s">
                    </hr>
                    <div class="x-div e21968-e95-v4 bar-text mgy8-m mgy8-o mgy8-p inn-col s-col bar-margin0 bar-margin2 bar-margin7 bar-margin8 bar-margin9 bar-margina bar-marginb bar-margin_2 submenu-container">
                        <ul class="x-div e21968-e97-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                            <li class="x-div e21968-e98-v0 s-col bar-margin_2" role="none">
                                <div class="x-text x-text-headline e21968-e98-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h2 class="x-text-content-text-primary">Account</h2>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="x-div e21968-e99-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                <c:choose>
                                    <c:when test="${empty sessionScope.username}">
                                        <a class="x-anchor x-anchor-button e21968-e99-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" href="${pageContext.request.contextPath}/login" style="--_item-number: 2;" data-sa-event="header_dropdowm_Log in">
                                            <div class="x-anchor-content">
                                                <div class="x-anchor-text">
                                                    <span class="x-anchor-text-primary">Log in</span>
                                                </div>
                                            </div>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <form action="${pageContext.request.contextPath}/logout" method="POST" id="logout-form">
                                            <a class="x-anchor x-anchor-button e21968-e99-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" style="--_item-number: 2;" data-sa-event="header_dropdowm_Log out" onclick="document.getElementById('logout-form').submit()">
                                                <div class="x-anchor-content">
                                                    <div class="x-anchor-text">
                                                        <span class="x-anchor-text-primary">Log out</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                        </ul>
                        <ul class="x-div filler00-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-margind bar-margine bar-marginf bar-margin_2" style="--_group-number: 1;" role="list">
                            <li class="x-div filler01-v0 s-col bar-margin_2" role="none">
                                <div class="x-text x-text-headline filler01-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h2 class="x-text-content-text-primary">Quick Links</h2>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="x-div filler02-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                <a class="x-anchor x-anchor-button filler02-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2  i-downloads" tabindex="0" style="--_item-number: 2;" data-sa-event="header_dropdowm_Downloads">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary">Downloads</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="x-div filler03-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                <a class="x-anchor x-anchor-button filler03-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2  i-orders" tabindex="0" style="--_item-number: 3;" data-sa-event="header_dropdowm_Orders">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary">Orders</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="x-div filler04-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                <a class="x-anchor x-anchor-button filler04-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2  i-settings" tabindex="0" style="--_item-number: 4;" data-sa-event="header_dropdowm_Settings">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary">Settings</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            <div id="stickz_side_cart-off-canvas" class="x-off-canvas x-off-canvas-right mgy8-5t mgy8-5u filler30 global_nav__item-cart" role="dialog" data-x-toggleable="filler30" aria-hidden="true" aria-label="Off Canvas" data-x-disable-body-scroll="1">
                <span class="x-off-canvas-bg"></span>
                <div class="x-off-canvas-content x-off-canvas-content-right">
                    <div class="x-div filler31 bar-text mgy8-m mgy8-n mgy8-o mgy8-q col inn-col s-col bar-margin8 bar-marging bar-margino bar-marginp bar-margin_2 sc-content" id="cart-row">
                        <header class="x-div filler32 bar-text mgy8-h mgy8-l mgy8-m mgy8-n mgy8-p s-col bar-margind bar-margink bar-marginq bar-marginr bar-margins bar-margint bar-margin_2">
                            <div class="x-div filler33 bar-text mgy8-m mgy8-n mgy8-o mgy8-p s-col bar-margin4 bar-margin5 bar-margin8 bar-marginu bar-marginv">
                                <div class="x-text x-text-headline filler34 mgy8-2n mgy8-2o mgy8-2p mgy8-2t bar-margin_20 bar-margin_24 bar-margin_25 bar-margin_26 bar-margin_27 bar-margin_2 mgy8-5 mgy8-6">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h5 class="x-text-content-text-primary">Cart</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline filler35 mgy8-2o mgy8-2p mgy8-2q mgy8-2t mgy8-2v mgy8-2w bar-margin_20 bar-margin_22 bar-margin_23 bar-margin_28 bar-margin_29 bar-margin_2 mgy8-5 mgy8-6">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <span class="x-text-content-text-primary">
                                                <span class="visually-hidden">Cart item count: </span>
                                                <span data-csdc-wc="cart-items">0</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="x-div filler36 bar-text col align s-col bar-marginw bar-margin_2">
                                <button class="sc-close" data-x-toggle-close="1" aria-label="Close Side Cart">
                                    <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21.2319 34.7703C21.3378 34.8705 21.4584 34.9382 21.5937 34.9735C21.7291 35.0088 21.8644 35.0088 21.9997 34.9735C22.135 34.9382 22.2527 34.8705 22.3527 34.7703L28.0012 29.1173L33.6497 34.7703C33.7497 34.8705 33.8674 34.9382 34.0027 34.9735C34.138 35.0088 34.2733 35.0088 34.4087 34.9735C34.5499 34.9441 34.6705 34.8763 34.7705 34.7703C34.8706 34.6702 34.9353 34.5525 34.9647 34.417C35 34.2816 35 34.1462 34.9647 34.0107C34.9353 33.8753 34.8706 33.7575 34.7705 33.6574L29.1221 27.9956L34.7705 22.3426C34.8706 22.2425 34.9382 22.1247 34.9735 21.9893C35.0088 21.8538 35.0088 21.7184 34.9735 21.583C34.9382 21.4475 34.8706 21.3298 34.7705 21.2297C34.6646 21.1237 34.544 21.0559 34.4087 21.0265C34.2733 20.9912 34.138 20.9912 34.0027 21.0265C33.8674 21.0559 33.7497 21.1237 33.6497 21.2297L28.0012 26.8826L22.3527 21.2297C22.2527 21.1237 22.1321 21.0559 21.9909 21.0265C21.8556 20.9912 21.7202 20.9912 21.5849 21.0265C21.4496 21.0559 21.3319 21.1237 21.2319 21.2297C21.1319 21.3298 21.0642 21.4475 21.0289 21.583C20.9995 21.7184 20.9995 21.8538 21.0289 21.9893C21.0642 22.1247 21.1319 22.2425 21.2319 22.3426L26.8803 27.9956L21.2319 33.6574C21.1319 33.7575 21.0642 33.8753 21.0289 34.0107C20.9936 34.1462 20.9906 34.2816 21.0201 34.417C21.0554 34.5525 21.126 34.6702 21.2319 34.7703Z" fill="var(--note)" />
                                    </svg>
                                </button>
                            </div>
                        </header>
                        <div class="x-div filler83 bar-text mgy8-k mgy8-l mgy8-m mgy8-n mgy8-o mgy8-p col bar-margin5 bar-margin8 bar-marginh bar-marginu bar-marginv mgy8-23 mgy8-2h">
                            <div class="x-wc-shop-notices filler84 mgy8-5w">
                                <div class="woocommerce-notices-wrapper"></div>
                            </div>
                            <div class="x-div filler85 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginu">
                                <div class="x-text x-text-headline filler86 mgy8-2o mgy8-2t mgy8-2w mgy8-2y bar-margin_20 bar-margin_23 bar-margin_27 bar-margin_2a bar-margin_2c bar-margin_2t">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h2 class="x-text-content-text-primary">Your cart is empty.</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline filler87 mgy8-2o mgy8-2p mgy8-2t mgy8-2v mgy8-2w mgy8-2y bar-margin_20 bar-margin_23 bar-margin_27 bar-margin_2e bar-margin_2u">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <span class="x-text-content-text-primary">Browse packs and upgrade your sound arsenal with our royalty-free sample and preset&nbsp;packs.</span>
                                        </div>
                                    </div>
                                </div>
                                <a class="x-anchor x-anchor-button has-particle e21968-e188 bar-margin_2y bar-margin_2z mg-up mgy8-4e mgy8-4v mgy8-54 mgy8-55 mgy8-56 mgy8-57 bar-margin_2  busy-on" tabindex="0" href="${pageContext.request.contextPath}/shop" data-sa-event="sidecart_empty_button_browse_packs">
                                    <span class="x-particle is-primary" data-x-particle="inside-c_c" aria-hidden="true">
                                    </span>
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary">Browse Shops</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="x-off-canvas-close x-off-canvas-close-right" data-x-toggle-close="1" aria-label="Close Off Canvas Content">
                    <span>
                        <svg viewBox="0 0 16 16">
                        <g>
                        <path d="M14.7,1.3c-0.4-0.4-1-0.4-1.4,0L8,6.6L2.7,1.3c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L6.6,8l-5.3,5.3 c-0.4,0.4-0.4,1,0,1.4C1.5,14.9,1.7,15,2,15s0.5-0.1,0.7-0.3L8,9.4l5.3,5.3c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L9.4,8l5.3-5.3C15.1,2.3,15.1,1.7,14.7,1.3z"></path>
                        </g>
                        </svg>
                    </span>
                </button>
            </div>
            <div id="mm-off-canvas" class="x-off-canvas x-off-canvas-left mgy8-5t mgy8-5v filler91 global_nav__item" role="dialog" data-x-toggleable="filler91" aria-hidden="true" aria-label="Off Canvas" data-x-disable-body-scroll="1">
                <span class="x-off-canvas-bg"></span>
                <div class="x-off-canvas-content x-off-canvas-content-left" data-x-scrollbar="{&quot;suppressScrollX&quot;:true}" role="document" tabindex="-1" aria-label="Off Canvas Content">
                    <hr class="x-line filler92 mgy8-5s">
                    </hr>
                    <div class="x-div filler93 bar-text mgy8-m mgy8-o mgy8-p col inn-col s-col bar-margin0 bar-margin2 bar-margin8 bar-margin9 bar-margina bar-marginb bar-margin_2 submenu-container">
                        <div class="x-div filler94 s-col bar-margink bar-margin_2">
                            <div class="x-acc filler95 mgy8-5y bar-margin_2" id="x-acc-filler95" style="--_item-total: 5;">
                                <div class="filler96 x-acc-item mm-content" style="--_item-number: 1; --_elevated-group-count: 2; --_group-count: 1; --_item-total: 6;">
                                    <button id="tab-filler96" class="x-acc-header" role="button" type="button" aria-expanded="false" aria-controls="panel-filler96" data-x-toggle="collapse" data-x-toggleable="filler96" data-x-toggle-group="filler95">
                                        <span class="x-acc-header-content">
                                            <span class="x-acc-header-indicator"></span>
                                            <span class="x-acc-header-text">Shop</span>
                                        </span>
                                    </button>
                                    <div id="panel-filler96" role="tabpanel" aria-hidden="true" aria-labelledby="tab-filler96" data-x-toggleable="filler96" data-x-toggle-collapse="1" class="x-collapsed">
                                        <div class="x-acc-content">
                                            <ul class="x-div filler97-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                                                <li class="x-div filler98-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline filler98-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Shop</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="x-div filler99-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button filler99-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" href="${pageContext.request.contextPath}/shop" style="--_item-number: 1;" data-sa-event="header_dropdowm_All Packs">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Go To Shop</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul class="x-div e21968-e200-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 1;" role="list">
                                                <li class="x-div e21968-e201-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline e21968-e201-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Premium Packs</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="x-div e21968-e202-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e202-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  coming-soon">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">LA BELLE</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e203-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e203-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  coming-soon">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">DUALITY</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e204-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e204-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" href="/hearts-project-file-expansion/" style="--_item-number: 4;" data-sa-event="header_dropdowm_HEARTS">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">REVVING</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e205-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e205-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" href="/nurture/" style="--_item-number: 5;" data-sa-event="header_dropdowm_NURTURE">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">KAISEN</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e206-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e206-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2 " tabindex="0" href="/chroma/" style="--_item-number: 6;" data-sa-event="header_dropdowm_CHROMA">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">UNIVERSITY</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul class="x-div e21968-e207-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-margind bar-margine bar-marginf bar-margin_2" style="--_group-number: 2;" role="list">
                                                <li class="x-div e21968-e208-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline e21968-e208-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Categories</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="x-div e21968-e209-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e209-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2 " tabindex="0" href="${pageContext.request.contextPath}/shop?filter=anime-edition" style="--_item-number: 2;" data-sa-event="header_dropdowm_Artist Edition">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Anime Series</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e210-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e210-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2 " tabindex="0" href="${pageContext.request.contextPath}/shop?filter=album-series" style="--_item-number: 3;" data-sa-event="header_dropdowm_Serum Presets">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Album Series</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e213-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e213-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2 " tabindex="0" href="${pageContext.request.contextPath}/merch" style="--_item-number: 6;" data-sa-event="header_dropdowm_Under €20">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Merchandise</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="e21968-e214 x-acc-item mm-content" style="--_item-number: 2; --_elevated-group-count: 2; --_group-count: 1; --_item-total: 6;">
                                    <button id="tab-e21968-e214" class="x-acc-header" role="button" type="button" aria-expanded="false" aria-controls="panel-e21968-e214" data-x-toggle="collapse" data-x-toggleable="e21968-e214" data-x-toggle-group="filler95">
                                        <span class="x-acc-header-content">
                                            <span class="x-acc-header-indicator"></span>
                                            <span class="x-acc-header-text">Freebies & Merch</span>
                                        </span>
                                    </button>
                                    <div id="panel-e21968-e214" role="tabpanel" aria-hidden="true" aria-labelledby="tab-e21968-e214" data-x-toggleable="e21968-e214" data-x-toggle-collapse="1" class="x-collapsed">
                                        <div class="x-acc-content">
                                            <ul class="x-div e21968-e215-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                                                <li class="x-div e21968-e216-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline e21968-e216-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Freebies</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="x-div e21968-e217-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e217-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  coming-soon" tabindex="0" style="--_item-number: 2;" data-sa-event="">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">NITY ESSENTIALS</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                            </ul>
                                            <ul class="x-div e21968-e218-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 1;" role="list">
                                                <li class="x-div e21968-e219-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline e21968-e219-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Merchandise</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="x-div e21968-e220-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e220-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" href="${pageContext.request.contextPath}/merch">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">ALL MERCH</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="e21968-e259 x-acc-item mm-content" style="--_item-number: 5; --_elevated-group-count: 1; --_group-count: 1; --_item-total: 4;">
                                    <button id="tab-e21968-e259" class="x-acc-header" role="button" type="button" aria-expanded="false" aria-controls="panel-e21968-e259" data-x-toggle="collapse" data-x-toggleable="e21968-e259" data-x-toggle-group="filler95">
                                        <span class="x-acc-header-content">
                                            <span class="x-acc-header-indicator"></span>
                                            <span class="x-acc-header-text">Account</span>
                                        </span>
                                    </button>
                                    <div id="panel-e21968-e259" role="tabpanel" aria-hidden="true" aria-labelledby="tab-e21968-e259" data-x-toggleable="e21968-e259" data-x-toggle-collapse="1" class="x-collapsed">
                                        <div class="x-acc-content">
                                            <ul class="x-div e21968-e260-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-marginc bar-margind bar-margine bar-margin_2" style="--_group-number: 0;" role="list">
                                                <li class="x-div e21968-e261-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline e21968-e261-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Account</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <c:choose>
                                                    <c:when test="${empty sessionScope.username}">
                                                        <li class="x-div e21968-e262-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                            <a class="x-anchor x-anchor-button e21968-e262-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" href="${pageContext.request.contextPath}/login" style="--_item-number: 2;" data-sa-event="header_dropdowm_Log in">
                                                                <div class="x-anchor-content">
                                                                    <div class="x-anchor-text">
                                                                        <span class="x-anchor-text-primary">Log in</span>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li class="x-div e21968-e262-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                            <form action="${pageContext.request.contextPath}/logout" method="POST">
                                                                <a class="x-anchor x-anchor-button e21968-e262-v1 bar-margin_2y bar-margin_2z mg-up mg-op mgy8-4b mgy8-4c mgy8-4d mgy8-4e mgy8-4f bar-margin_2  arrow" tabindex="0" style="--_item-number: 2;" data-sa-event="header_dropdowm_Log out"  onclick="document.getElementById('logout-form').submit()">
                                                                    <div class="x-anchor-content">
                                                                        <div class="x-anchor-text">
                                                                            <span class="x-anchor-text-primary">Log out</span>
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                            </form>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            <ul class="x-div e21968-e266-v0 bar-text mgy8-m mgy8-n mgy8-o mgy8-p col inn-col s-col bar-margin4 bar-margin5 bar-margin8 bar-marginb bar-margind bar-margine bar-marginf bar-margin_2" style="--_group-number: 1;" role="list">
                                                <li class="x-div e21968-e267-v0 s-col bar-margin_2" role="none">
                                                    <div class="x-text x-text-headline e21968-e267-v1 mgy8-2o mgy8-2p mgy8-2q mgy8-2r mgy8-2s mgy8-2t mgy8-2v mgy8-2w mgy8-2x mgy8-2y mgy8-2z bar-margin_20 bar-margin_2 mgy8-5 mgy8-6" style="--_item-number: 1;">
                                                        <div class="x-text-content">
                                                            <div class="x-text-content-text">
                                                                <h2 class="x-text-content-text-primary">Quick Links</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="x-div e21968-e268-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e268-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2  i-downloads" tabindex="0" style="--_item-number: 2;" data-sa-event="header_dropdowm_Downloads">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Downloads</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e269-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e269-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2  i-orders" tabindex="0" style="--_item-number: 3;" data-sa-event="header_dropdowm_Orders">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Orders</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="x-div e21968-e270-v0 bar-text col inn-col s-col bar-margin8 bar-margin_2">
                                                    <a class="x-anchor x-anchor-button e21968-e270-v1 bar-margin_2y bar-margin_2z mg-up mg-font mg-op mgy8-4b mgy8-4d mgy8-4g bar-margin_2  i-settings" tabindex="0" style="--_item-number: 4;" data-sa-event="header_dropdowm_Settings">
                                                        <div class="x-anchor-content">
                                                            <div class="x-anchor-text">
                                                                <span class="x-anchor-text-primary">Settings</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="x-off-canvas-close x-off-canvas-close-left" data-x-toggle-close="1" aria-label="Close Off Canvas Content">
                    <span>
                        <svg viewBox="0 0 16 16">
                        <g>
                        <path d="M14.7,1.3c-0.4-0.4-1-0.4-1.4,0L8,6.6L2.7,1.3c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L6.6,8l-5.3,5.3 c-0.4,0.4-0.4,1,0,1.4C1.5,14.9,1.7,15,2,15s0.5-0.1,0.7-0.3L8,9.4l5.3,5.3c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L9.4,8l5.3-5.3C15.1,2.3,15.1,1.7,14.7,1.3z"></path>
                        </g>
                        </svg>
                    </span>
                </button>
            </div>
            <div id="e8-e82-modal" class="x-modal m8-3k e8-e82" role="dialog" data-x-toggleable="e8-e82" data-x-scrollbar="{&quot;suppressScrollX&quot;:true}" aria-hidden="true" aria-label="Modal" data-x-disable-body-scroll="1">
                <span class="x-modal-bg" data-x-scroll-link="#e8-e82-modal"></span>
                <div class="x-modal-content-scroll-area" tabindex="-1">
                    <div class="x-modal-content" role="document" aria-label="Modal Content">
                        <div class="x-div e8-e83 m8-g m8-h m8-i m8-j m8-k m8-n m8-1e">
                            <header class="x-div e8-e84 m8-g m8-h m8-l m8-n m8-w m8-y">
                                <div class="x-div e8-e85 m8-g m8-h m8-l m8-n m8-w m8-y">
                                    <?xml version="1.0" encoding="UTF-8"?>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" viewBox="0 0 80 80" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 0C9.84974 0 0 9.84973 0 22V58C0 70.1503 9.84973 80 22 80H58C70.1503 80 80 70.1503 80 58V22C80 9.84974 70.1503 0 58 0H22ZM21.3516 46.3516C20.9766 46.7422 20.5 46.9375 19.9219 46.9375C19.3906 46.9375 18.9375 46.7422 18.5625 46.3516C18.1875 45.9609 18 45.5 18 44.9688V37.2109C18 36.6797 18.1875 36.2188 18.5625 35.8281C18.9375 35.4219 19.3906 35.2188 19.9219 35.2188C20.5 35.2188 20.9766 35.4219 21.3516 35.8281C21.7422 36.2188 21.9375 36.6797 21.9375 37.2109V44.9688C21.9375 45.5 21.7422 45.9609 21.3516 46.3516ZM29.3203 55.9141C28.9453 56.2891 28.4766 56.4766 27.9141 56.4766C27.3516 56.4766 26.8828 56.2891 26.5078 55.9141C26.1328 55.5234 25.9453 55.0469 25.9453 54.4844V27.6953C25.9453 27.1328 26.1328 26.6562 26.5078 26.2656C26.8828 25.875 27.3516 25.6797 27.9141 25.6797C28.4766 25.6797 28.9453 25.875 29.3203 26.2656C29.6953 26.6562 29.8828 27.1328 29.8828 27.6953V54.4844C29.8828 55.0469 29.6953 55.5234 29.3203 55.9141ZM37.2656 65.1953C36.8906 65.5859 36.4219 65.7812 35.8594 65.7812C35.2969 65.7812 34.8281 65.5859 34.4531 65.1953C34.0938 64.8203 33.9141 64.3516 33.9141 63.7891V18.3906C33.9141 17.8281 34.0938 17.3594 34.4531 16.9844C34.8281 16.5938 35.2969 16.3984 35.8594 16.3984C36.4219 16.3984 36.8906 16.5938 37.2656 16.9844C37.6562 17.3594 37.8516 17.8281 37.8516 18.3906V63.7891C37.8516 64.3516 37.6562 64.8203 37.2656 65.1953ZM45.2109 52.9609C44.8359 53.3359 44.375 53.5234 43.8281 53.5234C43.2812 53.5234 42.8203 53.3359 42.4453 52.9609C42.0703 52.5859 41.8828 52.125 41.8828 51.5781V30.6016C41.8828 30.0547 42.0703 29.5938 42.4453 29.2188C42.8203 28.8281 43.2812 28.6328 43.8281 28.6328C44.375 28.6328 44.8359 28.8281 45.2109 29.2188C45.6016 29.5938 45.7969 30.0547 45.7969 30.6016V51.5781C45.7969 52.125 45.6016 52.5859 45.2109 52.9609ZM53.2031 59.9922C52.8281 60.3828 52.3594 60.5781 51.7969 60.5781C51.2344 60.5781 50.7656 60.3828 50.3906 59.9922C50.0156 59.6172 49.8281 59.1641 49.8281 58.6328V23.5469C49.8281 23.0156 50.0156 22.5547 50.3906 22.1641C50.7656 21.7734 51.2344 21.5781 51.7969 21.5781C52.3594 21.5781 52.8281 21.7734 53.2031 22.1641C53.5781 22.5547 53.7656 23.0156 53.7656 23.5469V58.6328C53.7656 59.1641 53.5781 59.6172 53.2031 59.9922ZM61.1484 48.3203C60.7734 48.6953 60.3047 48.8828 59.7422 48.8828C59.1797 48.8828 58.7109 48.6953 58.3359 48.3203C57.9766 47.9297 57.7969 47.4609 57.7969 46.9141V35.2422C57.7969 34.7109 57.9766 34.25 58.3359 33.8594C58.7109 33.4688 59.1797 33.2734 59.7422 33.2734C60.3047 33.2734 60.7734 33.4688 61.1484 33.8594C61.5391 34.25 61.7344 34.7109 61.7344 35.2422V46.9141C61.7344 47.4609 61.5391 47.9297 61.1484 48.3203Z" fill="var(--lfo)"></path>
                                    </svg>
                                </div>
                                <div class="x-text x-text-headline e8-e87 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-24 m8-25 m8-29 m8-2o">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h2 class="x-text-content-text-primary">100% royalty-free.</h2>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <div class="x-div e8-e88 m8-g m8-h m8-l m8-n m8-w m8-y">
                                <div class="x-text x-text-headline e8-e89 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">All of our presets, samples, and loops are 100% royalty-free — meaning you can use them for commercial purposes without any issues. </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline e8-e90 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">Want to distribute your music on streaming platforms, use it in a movie or video game? You got it!</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline e8-e91 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-23 m8-24 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">Note that all our project files are excluded from this since those are meant for educational purposes only.</p>
                                        </div>
                                    </div>
                                </div>
                                <hr class="x-line e8-e92 m8-3l">
                                </hr>
                                <div class="x-text x-text-headline e8-e93 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">For more details, please check our full copyright license and agreement.</p>
                                        </div>
                                    </div>
                                </div>
                                <a class="x-anchor x-anchor-button e8-e94 m8-2q m8-2t m8-2u m8-2v m8-2w m8-2x m8-2z m8-35 m8-37 m8-8 m8-9 m8-a" tabindex="0" href="/copyright/" target="_blank" data-sa-event="front_button_all_packs">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary">Copyright</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="x-div e8-e95 m8-g m8-h m8-l m8-n m8-w m8-y m8-18 m8-1a m8-1f">
                                <div class="x-anchor x-anchor-button e8-e96 m8-2q m8-2r m8-2v m8-2w m8-30 m8-31 m8-34 m8-38 m8-8 m8-9 m8-a m8-b m8-f" tabindex="0" data-x-effect="{&quot;durationBase&quot;:&quot;200ms&quot;}" data-x-toggle-close="1" aria-label="Close 100% royalty-free Modal">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="x-modal-close x-modal-close-top x-modal-close-right" data-x-toggle-close="1" aria-label="Close Modal Content">
                    <span>
                        <svg viewBox="0 0 16 16">
                        <g>
                        <path d="M14.7,1.3c-0.4-0.4-1-0.4-1.4,0L8,6.6L2.7,1.3c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L6.6,8l-5.3,5.3 c-0.4,0.4-0.4,1,0,1.4C1.5,14.9,1.7,15,2,15s0.5-0.1,0.7-0.3L8,9.4l5.3,5.3c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L9.4,8l5.3-5.3C15.1,2.3,15.1,1.7,14.7,1.3z"></path>
                        </g>
                        </svg>
                    </span>
                </button>
            </div>
            <div id="e8-e105-modal" class="x-modal m8-3k e8-e105" role="dialog" data-x-toggleable="e8-e105" data-x-scrollbar="{&quot;suppressScrollX&quot;:true}" aria-hidden="true" aria-label="Modal" data-x-disable-body-scroll="1">
                <span class="x-modal-bg" data-x-scroll-link="#e8-e105-modal"></span>
                <div class="x-modal-content-scroll-area" tabindex="-1">
                    <div class="x-modal-content" role="document" aria-label="Modal Content">
                        <div class="x-div e8-e106 m8-g m8-h m8-i m8-j m8-k m8-n m8-1e">
                            <header class="x-div e8-e107 m8-g m8-h m8-l m8-n m8-w m8-y">
                                <div class="x-div e8-e108 m8-g m8-h m8-l m8-n m8-w m8-y">
                                    <?xml version="1.0" encoding="UTF-8"?>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" viewBox="0 0 80 80" fill="none">
                                    <path d="M40.0859 22.0469V60.8125C40.2109 60.7812 40.3516 60.7266 40.5078 60.6484C40.6797 60.5703 40.8516 60.4766 41.0234 60.3672C43.7109 58.7422 45.9609 57.3438 47.7734 56.1719C49.6016 55 51.0625 53.8906 52.1562 52.8438C53.25 51.7969 54.0312 50.6484 54.5 49.3984C54.9844 48.1484 55.2266 46.6328 55.2266 44.8516V28.6328C55.2266 28.2266 55.1719 27.9219 55.0625 27.7188C54.9531 27.5156 54.7422 27.3594 54.4297 27.25C53.7109 27 52.8828 26.7109 51.9453 26.3828C51.0078 26.0391 50.0234 25.6875 48.9922 25.3281L45.9453 24.2031C44.9297 23.8281 43.9609 23.4766 43.0391 23.1484C42.1328 22.8047 41.3438 22.4922 40.6719 22.2109C40.5469 22.1641 40.4375 22.1328 40.3438 22.1172C40.25 22.0859 40.1641 22.0625 40.0859 22.0469Z" fill="var(--reverb)"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 0C9.84974 0 0 9.84973 0 22V58C0 70.1503 9.84973 80 22 80H58C70.1503 80 80 70.1503 80 58V22C80 9.84974 70.1503 0 58 0H22ZM20.9375 51.3203C20.3125 49.7422 20 47.8828 20 45.7422V27.8828C20 26.5859 20.2656 25.6484 20.7969 25.0703C21.3438 24.4766 22.1484 23.9609 23.2109 23.5234C23.7422 23.3047 24.4844 23.0156 25.4375 22.6562C26.3906 22.2812 27.4453 21.8828 28.6016 21.4609C29.7578 21.0234 30.9141 20.5938 32.0703 20.1719C33.2266 19.75 34.2812 19.375 35.2344 19.0469C36.1875 18.7188 36.9297 18.4766 37.4609 18.3203C37.8047 18.2422 38.1562 18.1641 38.5156 18.0859C38.8906 17.9922 39.2578 17.9453 39.6172 17.9453C39.9766 17.9453 40.3438 17.9844 40.7188 18.0625C41.0938 18.1406 41.4531 18.2266 41.7969 18.3203C42.3281 18.5078 43.0625 18.7734 44 19.1172C44.9531 19.4453 46.0078 19.8203 47.1641 20.2422C48.3359 20.6484 49.4922 21.0625 50.6328 21.4844C51.7891 21.9062 52.8438 22.2969 53.7969 22.6562C54.75 23.0156 55.4922 23.3047 56.0234 23.5234C57.1016 23.9766 57.9062 24.4922 58.4375 25.0703C58.9688 25.6484 59.2344 26.5859 59.2344 27.8828V45.7422C59.2344 47.8828 58.9219 49.75 58.2969 51.3438C57.6719 52.9219 56.6562 54.3984 55.25 55.7734C53.8594 57.1484 52.0078 58.5547 49.6953 59.9922C47.3984 61.4453 44.5703 63.1016 41.2109 64.9609C40.9141 65.1172 40.625 65.2344 40.3438 65.3125C40.0625 65.3906 39.8203 65.4297 39.6172 65.4297C39.4297 65.4297 39.1875 65.3906 38.8906 65.3125C38.6094 65.2344 38.3203 65.1172 38.0234 64.9609C34.6797 63.1016 31.8516 61.4453 29.5391 59.9922C27.2422 58.5391 25.3906 57.125 23.9844 55.75C22.5938 54.375 21.5781 52.8984 20.9375 51.3203Z" fill="var(--reverb)"></path>
                                    </svg>
                                </div>
                                <div class="x-text x-text-headline e8-e110 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-24 m8-25 m8-29 m8-2o">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h2 class="x-text-content-text-primary">30-day money-back guarantee.</h2>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <div class="x-div e8-e111 m8-g m8-h m8-l m8-n m8-w m8-y">
                                <div class="x-text x-text-headline e8-e112 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">Other sample pack sellers make it very clear that all sales are final — but we don't! We wholeheartedly believe in the sounds we sell, and if you aren't satisfied with them, get your money back.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline e8-e113 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">Our goal is to empower producers and help them step up their production game. If you find absolutely no use in one of the packs you purchased from us, we want you to get your money back.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline e8-e114 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-23 m8-24 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">Instead of clogging up your sample library with more sounds you won't use, we want to make it possible for you to invest that money elsewhere in your music career.</p>
                                        </div>
                                    </div>
                                </div>
                                <hr class="x-line e8-e115 m8-3l">
                                </hr>
                                <div class="x-text x-text-headline e8-e116 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">To request a refund or see if you're eligible, check our full refund policy:</p>
                                        </div>
                                    </div>
                                </div>
                                <a class="x-anchor x-anchor-button e8-e117 m8-2q m8-2t m8-2u m8-2v m8-2w m8-2x m8-2z m8-35 m8-37 m8-8 m8-9 m8-a" tabindex="0" href="/terms-conditions/#refund" target="_blank" data-sa-event="front_button_all_packs">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary">Refund Policy</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="x-div e8-e118 m8-g m8-h m8-l m8-n m8-w m8-y m8-18 m8-1a m8-1f">
                                <div class="x-anchor x-anchor-button e8-e119 m8-2q m8-2r m8-2v m8-2w m8-30 m8-31 m8-34 m8-38 m8-8 m8-9 m8-a m8-b m8-f" tabindex="0" data-x-effect="{&quot;durationBase&quot;:&quot;200ms&quot;}" data-x-toggle-close="1" aria-label="Close 100% royalty-free Modal">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="x-modal-close x-modal-close-top x-modal-close-right" data-x-toggle-close="1" aria-label="Close Modal Content">
                    <span>
                        <svg viewBox="0 0 16 16">
                        <g>
                        <path d="M14.7,1.3c-0.4-0.4-1-0.4-1.4,0L8,6.6L2.7,1.3c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L6.6,8l-5.3,5.3 c-0.4,0.4-0.4,1,0,1.4C1.5,14.9,1.7,15,2,15s0.5-0.1,0.7-0.3L8,9.4l5.3,5.3c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L9.4,8l5.3-5.3C15.1,2.3,15.1,1.7,14.7,1.3z"></path>
                        </g>
                        </svg>
                    </span>
                </button>
            </div>
            <div id="e8-e128-modal" class="x-modal m8-3k e8-e128" role="dialog" data-x-toggleable="e8-e128" data-x-scrollbar="{&quot;suppressScrollX&quot;:true}" aria-hidden="true" aria-label="Modal" data-x-disable-body-scroll="1">
                <span class="x-modal-bg" data-x-scroll-link="#e8-e128-modal"></span>
                <div class="x-modal-content-scroll-area" tabindex="-1">
                    <div class="x-modal-content" role="document" aria-label="Modal Content">
                        <div class="x-div e8-e129 m8-g m8-h m8-i m8-j m8-k m8-n m8-1e">
                            <header class="x-div e8-e130 m8-g m8-h m8-l m8-n m8-w m8-y">
                                <div class="x-div e8-e131 m8-g m8-h m8-l m8-n m8-w m8-y">
                                    <?xml version="1.0" encoding="UTF-8"?>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" viewBox="0 0 80 80" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 0C9.84974 0 0 9.84973 0 22V58C0 70.1503 9.84973 80 22 80H58C70.1503 80 80 70.1503 80 58V22C80 9.84974 70.1503 0 58 0H22ZM38.2422 19.6562C38.6797 19.2188 39.2344 19 39.9062 19C40.5781 19 41.125 19.2188 41.5469 19.6562C41.9688 20.0781 42.1797 20.625 42.1797 21.2969V44.1953L41.9922 49.1875L48.7188 41.8047L53.8047 36.8125C54.0078 36.6094 54.25 36.4531 54.5312 36.3438C54.8125 36.2188 55.1172 36.1562 55.4453 36.1562C56.0859 36.1562 56.6094 36.375 57.0156 36.8125C57.4375 37.2344 57.6484 37.7656 57.6484 38.4062C57.6484 38.7031 57.5859 38.9922 57.4609 39.2734C57.3359 39.5547 57.1484 39.8281 56.8984 40.0938L41.6172 55.3281C41.3828 55.5781 41.1172 55.7734 40.8203 55.9141C40.6719 55.9766 40.5215 56.0234 40.3691 56.0547H55.5391C56.1953 56.0547 56.7344 56.2734 57.1562 56.7109C57.5781 57.1328 57.7891 57.6719 57.7891 58.3281C57.7891 58.9844 57.5781 59.5234 57.1562 59.9453C56.7344 60.3828 56.1953 60.6016 55.5391 60.6016H24.2031C23.5625 60.6016 23.0312 60.3828 22.6094 59.9453C22.2031 59.5234 22 58.9844 22 58.3281C22 57.6719 22.2031 57.1328 22.6094 56.7109C23.0312 56.2734 23.5625 56.0547 24.2031 56.0547H39.4258C39.2695 56.0234 39.1172 55.9766 38.9688 55.9141C38.6875 55.7734 38.4297 55.5781 38.1953 55.3281L22.8906 40.0938C22.6562 39.8281 22.4766 39.5547 22.3516 39.2734C22.2266 38.9922 22.1641 38.7031 22.1641 38.4062C22.1641 37.7656 22.3672 37.2344 22.7734 36.8125C23.1953 36.375 23.7266 36.1562 24.3672 36.1562C24.6953 36.1562 25 36.2188 25.2812 36.3438C25.5625 36.4531 25.8047 36.6094 26.0078 36.8125L31.0938 41.8047L37.8203 49.2109L37.6094 44.1953V21.2969C37.6094 20.625 37.8203 20.0781 38.2422 19.6562Z" fill="var(--eq)"></path>
                                    </svg>
                                </div>
                                <div class="x-text x-text-headline e8-e133 m8-1i m8-1j m8-1l m8-1m m8-1n m8-1o m8-1q m8-1r m8-24 m8-25 m8-29 m8-2o">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <h2 class="x-text-content-text-primary">Instant downloads.</h2>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <div class="x-div e8-e134 m8-g m8-h m8-l m8-n m8-w m8-y">
                                <div class="x-text x-text-headline e8-e135 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">After checkout, you can download your purchased packs immediately to start producing and unleashing your creativity right away.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="x-text x-text-headline e8-e136 m8-1i m8-1m m8-1o m8-1q m8-1r m8-1s m8-1u m8-1v m8-1w m8-23 m8-2n m8-2p">
                                    <div class="x-text-content">
                                        <div class="x-text-content-text">
                                            <p class="x-text-content-text-primary">Additionally, we run blazing-fast download servers to ensure that even our larger products are downloaded in a few minutes if not seconds — depending on your internet connection.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="x-div e8-e137 m8-g m8-h m8-l m8-n m8-w m8-y m8-18 m8-1a m8-1f">
                                <div class="x-anchor x-anchor-button e8-e138 m8-2q m8-2r m8-2v m8-2w m8-30 m8-31 m8-34 m8-38 m8-8 m8-9 m8-a m8-b m8-f" tabindex="0" data-x-effect="{&quot;durationBase&quot;:&quot;200ms&quot;}" data-x-toggle-close="1" aria-label="Close 100% royalty-free Modal">
                                    <div class="x-anchor-content">
                                        <div class="x-anchor-text">
                                            <span class="x-anchor-text-primary"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="x-modal-close x-modal-close-top x-modal-close-right" data-x-toggle-close="1" aria-label="Close Modal Content">
                    <span>
                        <svg viewBox="0 0 16 16">
                        <g>
                        <path d="M14.7,1.3c-0.4-0.4-1-0.4-1.4,0L8,6.6L2.7,1.3c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L6.6,8l-5.3,5.3 c-0.4,0.4-0.4,1,0,1.4C1.5,14.9,1.7,15,2,15s0.5-0.1,0.7-0.3L8,9.4l5.3,5.3c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L9.4,8l5.3-5.3C15.1,2.3,15.1,1.7,14.7,1.3z"></path>
                        </g>
                        </svg>
                    </span>
                </button>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cs-classic.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/rocketlazyload-extra.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/LazyloadOptions.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/LazyloadOptions.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.3.7.1.js"></script>
</html>
