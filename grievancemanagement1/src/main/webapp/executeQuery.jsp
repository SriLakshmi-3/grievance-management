<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" import = "java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Execute SQL Query</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px #ccc;
        }

        h1 {
            background-color: #3498db;
            color: white;
            padding: 20px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }

        p {
            margin-top: 20px;
        }

        a {
            color: #3498db;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Status of the gravience</h1>
        <%
            // Get the ID from the form submission
            String id = request.getParameter("id");

            // Initialize database connection parameters
            String url = "jdbc:mysql://localhost:3306/grievance";
            String user = "root";
            String password = "bvsk2085";

            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish a database connection
                Connection connection = DriverManager.getConnection(url, user, password);

                // Create an SQL statement with the ID parameter
                String sql = "SELECT * FROM grievance WHERE id = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, id);

                // Execute the SQL query
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Process the query result
                    String resultData = resultSet.getString("description");
                    out.println("<p>Status of  " + id + ": " + resultData + "</p>");
                } else {
                    out.println("<p>No results found for ID " + id + "</p>");
                }

                // Close database resources
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (Exception e) {
                out.println("<p>Status: " + e.getMessage() + "</p>");
            }
        %>
        <a href="/user">Go Back</a>
    </div>
</body>
</html>
