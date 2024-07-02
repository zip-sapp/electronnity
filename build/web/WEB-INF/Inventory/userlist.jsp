<%-- 
    Document   : users-list
    Created on : Jun 24, 2024, 7:32:51 PM
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
        <title>electronnity | users-list</title>

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

        <script type="text/javascript">
            function confirmDelete(event) {
                event.preventDefault();
                const target = event.currentTarget;
                const confirmation = confirm("Are you sure you want to delete this product?");
                if (confirmation) {
                    window.location.href = target.href;  // Proceed with the delete action
                }
            }

            document.addEventListener("DOMContentLoaded", function () {
                const deleteButtons = document.querySelectorAll('.btn-danger');

                deleteButtons.forEach(button => {
                    button.addEventListener('click', confirmDelete);
                });
            });
        </script>

        <style>
            
            .page-description {
                margin-bottom: 20px;
                text-align: center; /* Center the header text */
            }
            
            .table-responsive-lg {
                overflow-x: auto;
                padding: 15px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            /* Dark scrollbar styling */
            .table-responsive-lg::-webkit-scrollbar {
                height: 12px; /* Scrollbar height for horizontal scrolling */
            }

            .table-responsive-lg::-webkit-scrollbar-track {
                background: #333; /* Track color */
            }

            .table-responsive-lg::-webkit-scrollbar-thumb {
                background-color: #555; /* Scrollbar thumb color */
                border-radius: 10px; /* Roundness of the scrollbar thumb */
                border: 3px solid #333; /* Padding around the scrollbar thumb */
            }

            .table-responsive-lg::-webkit-scrollbar-thumb:hover {
                background-color: #777; /* Scrollbar thumb hover color */
            }

            .btn-burger {
                margin: 5px;
            }

            .table {
                width: 100%;
                max-width: 100%;
                margin-bottom: 1rem;
                background-color: transparent;
                table-layout: auto; /* Allow columns to adjust width based on content */
            }

            th, td {
                white-space: nowrap; 
                text-align: center;
                vertical-align: middle;
            }

            .btn-group {
                display: flex;
                justify-content: center; /* Center horizontally */
                align-items: center; /* Center vertically */
            }

            .btn-group .btn {
                margin-right: 5px;
            }

            .page-description {
                margin-bottom: 10px; /* Compact margin */
            }

            .content-wrapper {
                padding: 10px; /* Compact padding */
            }

            .example-content {
                margin-bottom: 10px; /* Compact margin */
            }

            .table-row {
                height: auto; /* Allow rows to adjust height based on content */
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
                                    <a href="${pageContext.request.contextPath}/userlist/create/form">Create User</a>
                                </li>
                                <li class="active-page">
                                    <a href="${pageContext.request.contextPath}/userlist" class="active">Users List</a>
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
                                        <h1>Users List</h1>
                                    </div>
                                </div>
                            </div>
                            <div class="example-content">
                                <div class="table-responsive-lg">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Role</th>
                                            <th scope="col">User ID</th>
                                            <th scope="col">Username</th>
                                            <th scope="col">Password</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">First Name</th>
                                            <th scope="col">Middle Name</th>
                                            <th scope="col">Last Name</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Birthday</th>
                                            <th scope="col">Number</th>
                                            <th scope="col">Attempts</th>
                                            <th scope="col">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${userList}" var="user">
                                            <tr class="table-row">
                                                <td>${user.userType}</td>
                                                <td>${user.id}</td>
                                                <td>${user.username}</td>
                                                <td>${user.password}</td>
                                                <td>${user.email}</td>
                                                <td>${user.firstName}</td>
                                                <td>${user.middleName}</td>
                                                <td>${user.lastName}</td>
                                                <td>${user.address}</td>
                                                <td>${user.birthday}</td>
                                                <td>${user.number}</td>
                                                <td>${user.attempts}</td>
                                                <td class="btn-group">
                                                    <a href="${pageContext.request.contextPath}/userlist/delete?id=${user.id}" class="btn btn-danger btn-burger">
                                                        <i class="material-icons">delete</i>DEL
                                                    </a>
                                                    <a href="${pageContext.request.contextPath}/userlist/update/form?id=${user.id}" class="btn btn-success btn-burger">
                                                        <i class="material-icons">edit</i>EDIT
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
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