<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0; /* Background color for the entire page */
            margin: 0;
            padding: 0;
            overflow: hidden; /* Hide overflow for full-page animations */
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff; /* Background color for the container */
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
            animation: fadeIn 2s; /* Fade-in animation */
        }
        h1 {
            color: #007bff;
        }
        h2 {
            color: #333;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin: 10px 0;
        }
        .button-container {
            text-align: center;
        }
        .button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            padding: 10px 20px;
            text-decoration: none; /* Remove underline from buttons */
            display: inline-block;
            margin: 10px;
            animation: pulse 2s infinite; /* Pulse animation */
        }

        .button1 {
            background-color: green;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            padding: 10px 20px;
            text-decoration: none; /* Remove underline from buttons */
            display: inline-block;
            margin: 10px;
           animation: pulse 2s infinite; /* Pulse animation */
        }

        .button2 {
            background-color: red;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            padding: 10px 20px;
            text-decoration: none; /* Remove underline from buttons */
            display: inline-block;
            margin: 10px;
            
        }
        .button:hover {
            background-color: #0056b3;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.2);
            }
        }

        @keyframes rotate {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

        @keyframes bounce {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-20px);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome ${facultyName}</h1>
        <h2>Faculty Dashboard</h2>
        <div class="button-container">
            <a class="button" href="/grievancesr">Assigned Grievance</a>
            <a class="button1" href="facdetails.jsp">Faculty Details</a>
        </div>
        <!-- Log Out button that should be handled by your controller -->
        <form action="/logout1" method="GET">
            <input type="submit" class="button2" value="Log Out">
        </form>
    </div>
</body>
</html>