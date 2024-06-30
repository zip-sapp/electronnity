<%-- 
    Document   : create-user
    Created on : Jun 24, 2024, 7:41:40 PM
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <title>electronnity | create-users</title>

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
                    <a href="#" class="logo-icon"><span class="logo-text">Logout</span></a>
                    <div class="sidebar-user-switcher user-activity-online">
                        <a href="#">
                            <img src="images/inventory-images/profile-pic.png">
                            <span class="activity-indicator"></span>
                            <span class="user-info-text">Administrator<br><span class="user-state-info">Online</span></span>
                        </a>
                    </div>
                </div>
                <div class="app-menu">
                    <ul class="accordion-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/dashboard"></i>Dashboard</a>
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
                                    <a href="#" class="active">Create User</a>
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
                                        <h1>Create Client/Administrator</h1>
                                    </div>
                                </div>
                            </div>
                            <form class="card" id="form" action="${pageContext.request.contextPath}/userlist/update" method="POST">
                                <div class="card-body">
                                    <div class="example-container">
                                        <div class="example-content">
                                            <input type="hidden" name="id" value="${userDetails.id}">
                                            <div class="example-content">
                                                <label for="usertype" class="form-label">Role Select (Client or Administrator)</label>
                                                <input type="text" class="form-control" id="usertype" name="usertype" value="<c:out value='${userDetails.userType}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="username" class="form-label">Enter Username</label>
                                                <input type="text" class="form-control" id="username" name="username" value="<c:out value='${userDetails.username}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="password" class="form-label">Enter Password</label>
                                                <input type="password" class="form-control" id="password" name="password" value="<c:out value='${userDetails.password}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="email" class="form-label">Email Address</label>
                                                <input type="email" class="form-control" id="email" name="email" value="<c:out value='${userDetails.email}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="firstname" class="form-label">First Name</label>
                                                <input type="text" class="form-control" id="firstname" name="firstname" value="<c:out value='${userDetails.firstName}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="middlename" class="form-label">Middle Name</label>
                                                <input type="text" class="form-control" id="middlename" name="middlename" value="<c:out value='${userDetails.middleName}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="lastname" class="form-label">Last Name</label>
                                                <input type="text" class="form-control" id="lastname" name="lastname" value="<c:out value='${userDetails.lastName}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="address" class="form-label">Complete Address</label>
                                                <input type="text" class="form-control" id="address" name="address" value="<c:out value='${userDetails.address}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="birthday" class="form-label">MM-DD-YYYY</label>
                                                <input type="text" class="form-control" id="birthday" name="birthday" value="<c:out value='${userDetails.birthday}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="mobilenumber" class="form-label">Mobile Number</label>
                                                <input type="text" class="form-control" id="number" name="number" value="<c:out value='${userDetails.number}'/>">
                                            </div>
                                            <div class="example-content">
                                                <label for="attempts" class="form-label">Attempts</label>
                                                <input type="text" class="form-control" id="attempts" name="attempts" value="<c:out value='${userDetails.attempts}'/>">
                                            </div>
                                    </div>
                                </div>
                            </form>
                            <button id="add" type="submit" form="form" class="btn btn-primary"><i class="material-icons">add</i>Edit</button>
                            <button type="button" class="btn btn-danger"><i class="material-icons">delete_outline</i>Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascripts -->
        <script src="${pageContext.request.contextPath}/js/inventory-js/user-validation.js"></script>
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

