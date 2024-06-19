<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navbar Example</title>
    <!-- Include your custom CSS here -->
    <style>
        /* Custom CSS for the navigation bar */
        body {
            background-color: #f7f7f7; /* Background color for the entire page */
        }

        .navbar {
            background-color: #3498db; /* Background color for the navbar */
            border-bottom: 2px solid #2980b9; /* Add a border at the bottom of the navbar */
        }

        .navbar-brand {
            color: #fff; /* Text color for the brand */
            font-size: 24px; /* Adjust the font size as needed */
            font-weight: bold;
        }

        .navbar-brand:hover {
            color: #ddd; /* Text color for the brand on hover */
        }

        .navbar-toggler-icon {
            background-color: #fff; /* Color of the toggle icon */
        }

        .navbar-nav .nav-link {
            color: #fff; /* Text color for the navigation links */
            font-weight: bold;
            margin: 0 15px; /* Adjust the margin between the links */
        }

        .navbar-nav .nav-link:hover {
            color: #ddd; /* Text color for the links on hover */
        }

        .navbar-nav .nav-item.active {
            background-color: #2980b9; /* Background color for the active link */
        }

        .navbar-nav .nav-item.active .nav-link {
            color: #fff; /* Text color for the active link */
        }

        .form-inline .form-control {
            border: 2px solid #3498db; /* Border for the search input */
        }

        .form-inline .form-control:focus {
            border-color: #2980b9; /* Border color on focus */
        }

        .btn-outline-success {
            color: #3498db; /* Text color for the search button */
            border-color: #3498db; /* Border color for the search button */
        }

        .btn-outline-success:hover {
            color: #fff; /* Text color on button hover */
            background-color: #2980b9; /* Background color on button hover */
        }

        /* Additional styles */
        .page-title {
            text-align: center;
            margin-top: 20px;
            font-size: 36px;
            font-weight: bold;
            color: #fff;
        }
        
    </style>
</head>
<body>

<jsp:include page="nav.jsp" />
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="nav.jsp">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>



</body>
</html>
