<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        /* Define your CSS styles */
        body {
            
            font-family: Arial, sans-serif;
            background:#E0DCCC;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        div.container {
            max-width: 800px;
            margin: 0 auto;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        h1 {
            background-color: #3498db;
            color: white;
            padding: 20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-align: center;
        }
        h2 {
            font-size: 24px;
            margin-top: 20px;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin: 10px 0;
        }
        .button-container {
            text-align: center;
        }
        .button {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
        }
        .button-blue {
            background-color: #3498db;
        }
        .button-green {
            background-color: #44bd32;
        }
        .button-orange {
            background-color: #f39c12;
        }
        .button-red {
            background-color: #e74c3c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, ${studentId} - ${firstName} </h1>
        
        <h2>User Dashboard</h2>
        <div class="button-container">
            <button class="button button-blue" onclick="window.location.href='details.jsp'">User Details</button>
            <button class="button button-green" onclick="window.location.href='/submitgrievance'">Submit Grievance</button>
            <button class="button button-orange" onclick="window.location.href='/idnum'">Grievance History</button>
            <button class="button button-red" onclick="window.location.href='/track'">Track Status</button>
        </div>
        <form action="/logout" method="GET">
            <button class="button button-blue">Log Out</button>
        </form>
    </div>
</body>
</html>