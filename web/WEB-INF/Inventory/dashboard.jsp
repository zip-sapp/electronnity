<%-- 
    Document   : dashboard
    Created on : Jun 24, 2024, 8:04:36 PM
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Admin Dashboard Template">
        <meta name="keywords" content="admin,dashboard">
        <meta name="author" content="stacks">
        <!-- The above 6 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>electronnity | dashboard</title>

        <!-- Styles -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700;800&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/perfect-scrollbar.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/pace.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/apexcharts.css" rel="stylesheet">

        <!-- Theme Styles -->
        <link href="${pageContext.request.contextPath}/css/inventory-css/main.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/darktheme.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/custom.css" rel="stylesheet">

        <link rel="icon" type="image/png" sizes="32x32" href="images/inventory-images/favicon.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="images/inventory-images/favicon.png" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <div class="app align-content-stretch d-flex flex-wrap">
            <div class="app-sidebar">
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/logout" method="POST" class="logo-icon"><span class="logo-text">Logout</span></a>
                    <div class="sidebar-user-switcher user-activity-online">
                        <a href="#">
                            <img src="images/inventory-images/profile-pic.png">
                            <span class="activity-indicator"></span>
                            <span class="user-info-text">${username}<br><span class="user-state-info">Administrator</span></span>
                        </a>
                    </div>
                </div>
                <div class="app-menu">
                    <ul class="accordion-menu">
                        <li>
                            <a href="#" class="active"></i>Dashboard</a>
                        </li>

                        <li>
                            <a href="#">Products<i class="material-icons has-sub-menu">keyboard_arrow_right</i></a>
                            <ul class="sub-menu">
                                <li class="active-page">
                                    <a href="${pageContext.request.contextPath}/productlist/create/form">Create Product</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/productlist">Products List</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="#">People<i class="material-icons has-sub-menu">keyboard_arrow_right</i></a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${pageContext.request.contextPath}/userlist/create/form">Create User</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/userlist">Users List</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="app-container">
                <div class="search">
                    <form>
                        <input class="form-control" type="text" placeholder="Type here..." aria-label="Search">
                    </form>
                    <a href="#" class="toggle-search"><i class="material-icons">close</i></a>
                </div>
                <div class="app-header">
                    <nav class="navbar navbar-light navbar-expand-lg">
                        <div class="container-fluid">
                            <div class="navbar-nav" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link hide-sidebar-toggle-button" href="#"><i class="material-icons">first_page</i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
                <div class="app-content">
                    <div class="content-wrapper">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="page-description">
                                        <h1>Dashboard</h1>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-4">
                                    <div class="card widget widget-stats">
                                        <div class="card-body">
                                            <div class="widget-stats-container d-flex">
                                                <div class="widget-stats-icon widget-stats-icon-primary">
                                                    <i class="material-icons-outlined">paid</i>
                                                </div>
                                                <div class="widget-stats-content flex-fill">
                                                    <span class="widget-stats-title">Today's Sales</span>
                                                    <span class="widget-stats-amount">₱38,211</span>
                                                    <span class="widget-stats-info">471 Orders Total</span>
                                                </div>
                                                <div class="widget-stats-indicator widget-stats-indicator-positive align-self-start">
                                                    <i class="material-icons">keyboard_arrow_up</i> 5%
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="card widget widget-stats">
                                        <div class="card-body">
                                            <div class="widget-stats-container d-flex">
                                                <div class="widget-stats-icon widget-stats-icon-warning">
                                                    <i class="material-icons-outlined">person</i>
                                                </div>
                                                <div class="widget-stats-content flex-fill">
                                                    <span class="widget-stats-title">Active Users</span>
                                                    <span class="widget-stats-amount">23,491</span>
                                                    <span class="widget-stats-info">790 unique this month</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="card widget widget-bank-card" style="height: 135px;">
                                        <div class="card-body">
                                            <div class="widget-bank-card-container widget-bank-card-visa d-flex flex-column">
                                                <div class="widget-bank-card-logo"></div>
                                                <span class="widget-bank-card-balance-title">
                                                    BALANCE
                                                </span>
                                                <span class="widget-bank-card-balance">
                                                    ₱5,688
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="card widget widget-stats-large">
                                        <div class="row">
                                            <div class="col-xl-8">
                                                <div class="widget-stats-large-chart-container">
                                                    <div class="card-header">
                                                        <h5 class="card-title">Earnings<span class="badge badge-light badge-style-light">Last Year</span></h5>
                                                    </div>
                                                    <div class="card-body">
                                                        <div id="apex-earnings"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="widget-stats-large-info-container">
                                                    <div class="card-header">
                                                        <h5 class="card-title">Report<span class="badge badge-info badge-style-light">Updated 5 min ago</span></h5>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="card-description">This report provides a detailed analysis of the product result earnings for last year. It includes an overview of the revenue generated, costs incurred, and the net profit or loss.</p>
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item">Hoodie - v1.0<span class="float-end text-success">20%<i class="material-icons align-middle">keyboard_arrow_up</i></span></li>
                                                            <li class="list-group-item">Jacket - v1.2<span class="float-end text-danger">4%<i class="material-icons align-middle">keyboard_arrow_down</i></span></li>
                                                            <li class="list-group-item">Cap - v1.0.3<span class="float-end text-success">21%<i class="material-icons align-middle">keyboard_arrow_up</i></span></li>
                                                            <li class="list-group-item">T-shirt - v2.3<span class="float-end text-success">17%<i class="material-icons align-middle">keyboard_arrow_up</i></span></li>
                                                            <li class="list-group-item">Plush - v1.7<span class="float-end text-danger">3%<i class="material-icons align-middle">keyboard_arrow_down</i></span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="card widget widget-stats-large">
                                        <div class="row">
                                            <div class="col-xl-8">
                                                <div class="widget-stats-large-chart-container">
                                                    <div class="card-header">
                                                        <h5 class="card-title">Sales per Product<span class="badge badge-light badge-style-light">This Year</span></h5>
                                                    </div>
                                                    <div class="card-body">
                                                        <div id="apex2"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="widget-stats-large-info-container">
                                                    <div class="card-header">
                                                        <h5 class="card-title">Report<span class="badge badge-info badge-style-light">Updated 5 min ago</span></h5>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="card-description">This report provides a detailed analysis of the earnings generated from the sales of individual products.</p>
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item">Hoodie - v1.0<span class="float-end text-success">14%<i class="material-icons align-middle">keyboard_arrow_up</i></span></li>
                                                            <li class="list-group-item">Jacket - v1.2<span class="float-end text-danger">67%<i class="material-icons align-middle">keyboard_arrow_down</i></span></li>
                                                            <li class="list-group-item">Cap - v1.0.3<span class="float-end text-success">21%<i class="material-icons align-middle">keyboard_arrow_up</i></span></li>
                                                            <li class="list-group-item">T-shirt - v2.3<span class="float-end text-success">17%<i class="material-icons align-middle">keyboard_arrow_up</i></span></li>
                                                            <li class="list-group-item">Plush - v1.7<span class="float-end text-danger">3%<i class="material-icons align-middle">keyboard_arrow_down</i></span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascripts -->
        <script src="${pageContext.request.contextPath}/js/inventory-js/jquery-3.5.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/perfect-scrollbar.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/pace.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/apexcharts.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/main.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/dashboard.js"></script>
        <script src="${pageContext.request.contextPath}/js/inventory-js/charts-apex.js"></script>
    </body>
</html>
