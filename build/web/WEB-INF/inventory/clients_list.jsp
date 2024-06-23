<%-- 
    Document   : users-list
    Created on : Jun 21, 2024, 2:59:55 PM
    Author     : nchln
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Electronnity - Clients List</title>

    <!-- Styles -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/plugins/perfectscroll/perfect-scrollbar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/plugins/pace/pace.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/plugins/apexcharts/apexcharts.css" rel="stylesheet">
    
    <!-- Theme Styles -->
    <link href="${pageContext.request.contextPath}/css/main.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/darktheme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">

    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png" />

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
                <a href="#" class="logo-icon"><span class="logo-text">Electronnity</span></a>
                <div class="sidebar-user-switcher user-activity-online">
                    <a href="#">
                        <img src="images/profile-pic.png">
                        <span class="activity-indicator"></span>
                        <span class="user-info-text">Administrator<br><span class="user-state-info">Online</span></span>
                    </a>
                </div>
            </div>
            <div class="app-menu">
                <ul class="accordion-menu">
                    <li>
                        <a href="#"></i>Dashboard</a>
                    </li>

                    <li>
                        <a href="#">Products<i class="material-icons has-sub-menu">keyboard_arrow_right</i></a>
                        <ul class="sub-menu">
                            <li class="active-page">
                                <a href="${pageContext.request.contextPath}/create_product" class="active">Create Product</a>
                            </li>
                            <li>
                                <a href="#">Products List</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#"></i>Expenses</a>
                    </li>

                    <li>
                        <a href="#">Purchases</a>
                    </li>

                    <li>
                        <a href="#">Sales<i class="material-icons has-sub-menu">keyboard_arrow_right</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/sales_list">Sales List</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/shipment">Shipment</a>
                            </li>
                        </ul>
                    </li>

                    <li class="active-page">
                        <a href="#">People<i class="material-icons has-sub-menu">keyboard_arrow_right</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/create_user">Create User</a>
                            </li>
                            <li class="active-page">
                                <a href="${pageContext.request.contextPath}/clients_list" class="active">Clients List</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admins_list">Admins List</a>
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
                        <div class="d-flex">
                            <ul class="navbar-nav">
                                <li class="nav-item hidden-on-mobile">
                                    <a class="nav-link active" href="#">Home</a>
                                </li>
                                <li class="nav-item hidden-on-mobile">
                                    <a class="nav-link" href="#">Reports</a>
                                </li>
                                <li class="nav-item hidden-on-mobile">
                                    <a class="nav-link language-dropdown-toggle" href="#" id="languageDropDown" data-bs-toggle="dropdown"><img src="images/flags/us.png" alt=""></a>
                                        <ul class="dropdown-menu dropdown-menu-end language-dropdown" aria-labelledby="languageDropDown">
                                            <li><a class="dropdown-item" href="#"><img src="images/flags/us.png" alt="">English</a></li>
                                            <li><a class="dropdown-item" href="#"><img src="images/flags/philippines.png" alt="">Filipino</a></li>
                                        </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link toggle-search" href="#"><i class="material-icons">search</i></a>
                                </li>
                                <li class="nav-item hidden-on-mobile">
                                    <a class="nav-link nav-notifications-toggle" id="notificationsDropDown" href="#" data-bs-toggle="dropdown">4</a>
                                    <div class="dropdown-menu dropdown-menu-end notifications-dropdown" aria-labelledby="notificationsDropDown">
                                        <h6 class="dropdown-header">Notifications</h6>
                                        <div class="notifications-dropdown-list">
                                            <a href="#">
                                                <div class="notifications-dropdown-item">
                                                    <div class="notifications-dropdown-item-image">
                                                        <span class="notifications-badge bg-info text-white">
                                                            <i class="material-icons-outlined">campaign</i>
                                                        </span>
                                                    </div>
                                                    <div class="notifications-dropdown-item-text">
                                                        <p class="bold-notifications-text">Inventory Alert! New stocks have just arrived! Visit the website now to explore and shop the newest additions!</p>
                                                        <small>19:00</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notifications-dropdown-item">
                                                    <div class="notifications-dropdown-item-image">
                                                        <span class="notifications-badge bg-danger text-white">
                                                            <i class="material-icons-outlined">bolt</i>
                                                        </span>
                                                    </div>
                                                    <div class="notifications-dropdown-item-text">
                                                        <p class="bold-notifications-text">Exciting news! Our products are now on sale for a limited time. Enjoy fantastic discounts on your favorite items.</p>
                                                        <small>18:00</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notifications-dropdown-item">
                                                    <div class="notifications-dropdown-item-image">
                                                        <span class="notifications-badge bg-success text-white">
                                                            <i class="material-icons-outlined">alternate_email</i>
                                                        </span>
                                                    </div>
                                                    <div class="notifications-dropdown-item-text">
                                                        <p>An email address has been replaced in a client account.</p>
                                                        <small>yesterday</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notifications-dropdown-item">
                                                    <div class="notifications-dropdown-item-image">
                                                        <span class="notifications-badge">
                                                            <img src="images/logo-dark_bg.png" alt="">
                                                        </span>
                                                    </div>
                                                    <div class="notifications-dropdown-item-text">
                                                        <p>A new client has been added to the list.</p>
                                                        <small>2d ago</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notifications-dropdown-item">
                                                    <div class="notifications-dropdown-item-image">
                                                        <span class="notifications-badge">
                                                            <img src="images/logo-dark_bg.png" alt="">
                                                        </span>
                                                    </div>
                                                    <div class="notifications-dropdown-item-text">
                                                        <p>A new admin has been added to the list.</p>
                                                        <small>15w ago</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
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
                                    <h1>Clients List</h1>
                                </div>
                            </div>
                        </div>
                        
                        <div class="example-content">
                            <div class="table-responsive-lg">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col"></th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Country</th>
                                            <th scope="col">City</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Maraiah Queen Arceta</td>
                                            <td>+63 916 766 5632</td>
                                            <td>maraiah.arceta@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>Lapu-Lapu</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Ma. Nicolette Vergara</td>
                                            <td>+63 916 766 2980</td>
                                            <td>colet.vergara@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>Tagbilaran</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Gweneth Apuli</td>
                                            <td>+63 915 107 8924</td>
                                            <td>gwyn.apuli@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>Daraga</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Jhoanna Christine Robles</td>
                                            <td>+63 915 709 7352</td>
                                            <td>jhoanna.chr@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>Calamba</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Mary Loi Yves Ricalde</td>
                                            <td>+63 917 906 8772</td>
                                            <td>maloi.ricalde@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>General Trias</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Mikhaela Janna Lim</td>
                                            <td>+63 927 809 1255</td>
                                            <td>janna.mikha@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>San Juan</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Sheena Mae Catacutan</td>
                                            <td>+63 917 225 7086</td>
                                            <td>sheena.catacutan@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>Santiago</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">
                                            </th>
                                            <td>Lindtsey Stacey Aubrey Sevilleja</td>
                                            <td>+63 915 098 8854</td>
                                            <td>stacey.sevilleja@gmail.com</td>
                                            <td>Philippines</td>
                                            <td>Bagabag</td>
                                            <td>    
                                                <button type="button" class="btn btn-danger btn-burger"><i class="material-icons">delete_outline</i></button>    
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <nav aria-label="...">
                            <ul class="pagination justify-content-end">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item" aria-current="page">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascripts -->
    <script src="${pageContext.request.contextPath}/plugins/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/perfectscroll/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/apexcharts/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    <script src="${pageContext.request.contextPath}/js/pages/dashboard.js"></script>
    <script src="${pageContext.request.contextPath}/js/pages/charts-apex.js"></script>
</body>
</html>
