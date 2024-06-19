<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grievance Management Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
        h1 {
            margin: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .grievance-form {
            border: 1px solid #ccc;
            padding: 10px;
            margin-top: 20px;
        }
        .go-back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .go-back-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <header>
        <h1>Grievance Management Portal</h1>
    </header>
    <div class="container">
        <!-- Grievance viewing section -->
        <a href="/grievancesm"><h2>View Grievances</h2></a>
        <!-- Add code here to display grievances -->

        <!-- Grievance allocation section -->
        <h2>Allocate Grievances</h2>
        <div class="grievance-form">
            <!-- Add code here to create a form for allocating grievances to faculty -->
        </div>
    </div>
    <a href="/welcome" class="go-back-button">Go Back</a>
</body>
</html>
