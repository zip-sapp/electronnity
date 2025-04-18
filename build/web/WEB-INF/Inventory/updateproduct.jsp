<%-- 
    Document   : create-product
    Created on : Jun 24, 2024, 7:42:53 PM
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive Admin Dashboard Template">
    <meta name="keywords" content="admin,dashboard">
    <meta name="author" content="stacks">
    <title>electronnity | update-products</title>

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
    <link href="${pageContext.request.contextPath}/css/inventory-css/main.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/inventory-css/darktheme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/inventory-css/custom.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/images/inventory-images/favicon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/images/inventory-images/favicon.png">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
        
        .page-description {
            margin-bottom: 20px;
            text-align: center; /* Center the header text */
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
                                <a href="#" class="active">Update Product</a>
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
                                    <h1>Update Product</h1>
                                </div>
                            </div>
                        </div>
                        <form class="card" id="form" action="${pageContext.request.contextPath}/productlist/update" method="POST" onsubmit="return formValidation()">
                            <div class="card-body">
                                <div class="example-container">
                                    <div class="example-content">
                                        <label for="productid" class="form-label">Product ID</label>
                                        <input type="text" class="form-control" id="productid" name="productid" value="<c:out value='${productDetails.productId}'/>" readonly>
                                    </div>
                                    <div class="example-content">
                                        <label for="productname" class="form-label">Product Name</label>
                                        <input type="text" class="form-control" id="productname" name="productname" value="<c:out value='${productDetails.productName}'/>" required>
                                    </div>
                                    <div class="example-content">
                                        <label for="description" class="form-label">Product Description</label>
                                        <textarea class="form-control" id="description" name="description" required><c:out value='${productDetails.description}'/></textarea>
                                    </div>
                                    <div class="example-content">
                                        <label for="size" class="form-label">Product Size</label>
                                        <input type="text" class="form-control" id="size" name="size" value="<c:out value='${productDetails.size}'/>">
                                    </div>
                                    <div class="example-content">
                                        <label for="price" class="form-label">Price</label>
                                        <input type="number" class="form-control" id="price" name="price" value="<fmt:formatNumber value='${productDetails.price}'/>" step="0.01" required>
                                    </div>
                                    <div class="example-content">
                                        <label for="quantity" class="form-label">Quantity</label>
                                        <input type="number" class="form-control" id="quantity" name="quantity" value="<c:out value='${productDetails.quantity}'/>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="button" id="add" class="btn btn-primary">Update</button>
                                <button type="button" class="btn btn-danger">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>    
        </div>
    </div>
    <!-- Javascripts -->
    <script src="${pageContext.request.contextPath}/js/inventory-js/product-validation.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/main.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/custom.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/dashboard.js"></script>
    <script src="${pageContext.request.contextPath}/js/inventory-js/charts-apex.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Cancel button confirmation
            const cancelButton = document.querySelector('.btn-danger');
            cancelButton.addEventListener('click', function(event) {
                const confirmation = confirm('Do you want to cancel?');
                if (confirmation) {
                    // Redirect to the desired page if confirmed
                    window.location.href = '${pageContext.request.contextPath}/productlist';
                }
            });
        });
    </script>
</body>
</html>