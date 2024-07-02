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
        <link href="${pageContext.request.contextPath}/css/inventory-css/github-gist.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/dropzone.min.css" rel="stylesheet">

        <!-- Theme Styles -->
        <link href="${pageContext.request.contextPath}/css/inventory-css/main.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/darktheme.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/inventory-css/custom.css" rel="stylesheet">

        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/images/inventory-images/favicon.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/images/inventory-images/favicon.png" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        <style>
            .content-wrapper {
                padding: 20px;
            }

            .page-description {
                margin-bottom: 20px;
                text-align: center; /* Center the header text */
            }

            .example-content {
                margin-bottom: 15px;
            }

            .form-label {
                display: block;
                margin-bottom: 5px;
                font-weight: 500;
            }

            .form-control {
                width: 100%;
                padding: 10px;
            }

            .btn {
                margin: 10px 5px 0 0; /* Margin for spacing between buttons */
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                transition: background-color 0.3s ease;
                cursor: pointer;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
            }

            .btn-primary:hover {
                background-color: #0056b3;
            }

            .btn-danger {
                background-color: #dc3545;
                color: #fff;
            }

            .btn-danger:hover {
                background-color: #c82333;
            }

            .material-icons {
                vertical-align: middle;
                margin-right: 5px;
            }
        </style>
    </head>

    <body>
        <div class="app align-content-stretch d-flex flex-wrap">
            <div class="app-sidebar">
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/logout" method="POST" class="logo-icon"><span class="logo-text">Logout</span></a>
                    <div class="sidebar-user-switcher user-activity-online">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/images/inventory-images/profile-pic.png">
                            <span class="activity-indicator"></span>
                            <span class="user-info-text">${username}<br><span class="user-state-info">Administrator</span></span>
                        </a>
                    </div>
                </div>
                <div class="app-menu">
                    <ul class="accordion-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/dashboard">Dashboard</a>
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
                                    <a href="${pageContext.request.contextPath}/userlist/create/form" class="active">Create User</a>
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
                                        <h1>Create Client/Administrator</h1>
                                    </div>
                                </div>
                            </div>
                            <form class="card" id="form" action="${pageContext.request.contextPath}/userlist/create" method="POST">
                                <div class="card-body">
                                    <div class="example-container">
                                        <div class="example-content">
                                            <div class="example-content">
                                                <label for="usertype" class="form-label">Role Select (Client or Administrator)</label>
                                                <input type="text" class="form-control" id="usertype" name="usertype">
                                            </div>
                                            <div class="example-content">
                                                <label for="username" class="form-label">Enter Username</label>
                                                <input type="text" class="form-control" id="username" name="username">
                                            </div>
                                            <div class="example-content">
                                                <label for="password" class="form-label">Enter Password</label>
                                                <input type="password" class="form-control" id="password" name="password">
                                            </div>
                                            <div class="example-content">
                                                <label for="confirmPass" class="form-label">Confirm Password</label>
                                                <input type="password" class="form-control" id="confirmPass" name="confirmPass">
                                            </div>
                                            <div class="example-content">
                                                <label for="email" class="form-label">Email Address</label>
                                                <input type="email" class="form-control" id="email" name="email">
                                            </div>
                                            <div class="example-content">
                                                <label for="firstname" class="form-label">First Name</label>
                                                <input type="text" class="form-control" id="firstname" name="firstname">
                                            </div>
                                            <div class="example-content">
                                                <label for="middlename" class="form-label">Middle Name</label>
                                                <input type="text" class="form-control" id="middlename" name="middlename">
                                            </div>
                                            <div class="example-content">
                                                <label for="lastname" class="form-label">Last Name</label>
                                                <input type="text" class="form-control" id="lastname" name="lastname">
                                            </div>
                                            <div class="example-content">
                                                <label for="address" class="form-label">Complete Address</label>
                                                <input type="text" class="form-control" id="address" name="address">
                                            </div>
                                            <div class="example-content">
                                                <label for="birthday" class="form-label">MM-DD-YYYY</label>
                                                <input type="text" class="form-control" id="birthday" name="birthday">
                                            </div>
                                            <div class="example-content">
                                                <label for="mobilenumber" class="form-label">Mobile Number</label>
                                                <input type="text" class="form-control" id="number" name="number">
                                            </div>
                                        </div>
                                    </div>
                                    <script src="${pageContext.request.contextPath}/js/inventory-js/user-validation.js"></script>
                                    <button type="submit" class="btn btn-primary"><i class="material-icons">add</i>Add</button>
                                    <button type="button" class="btn btn-danger"><i class="material-icons">delete_outline</i>Cancel</button>
                                </div>
                            </form>
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
