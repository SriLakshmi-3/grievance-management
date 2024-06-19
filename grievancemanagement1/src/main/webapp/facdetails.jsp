<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <style>
        /* Your CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20201009/pngtree-d-abstract-digital-technology-background-futuristic-sci-fi-user-interface-concept-image_406794.jpg"); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #3498db;
            color: white;
            padding: 20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px #ccc;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #ffffff;
        }
        a {
            display: block;
            width: 100px;
            margin: 20px auto;
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 10px;
            border-radius: 5px;
            text-decoration: none;
        }
        a:hover {
            background-color: #2980b9;
        }
        a.view-grievances-link {
            display: block;
            width: 100px;
            margin: 20px auto;
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 10px;
            border-radius: 10px;
            text-decoration: none;
        }
        a.view-grievances-link:hover {
            background-color: #2980b9;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(1, 0, 0, 0.7);
        }
        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fefefe;
            padding: 30px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            box-shadow: 0 4px 8px 0 rgba(1, 0, 0, 0.2);
            border-radius: 5px;
        }
        .close {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>User Details</h1>
    <table>
        <tr>
            <th>Email</th>
            <th>Faculty ID</th>
            <th>Name</th>
            <th>Grievances</th> <!-- New column header -->
        </tr>
        <tr>
            <td>${firstName}</td>
            <td>${lastName}</td>
            <td>${studentId}</td>
            <td>${year}</td>
            <td>${branch}</td>
            <td>${email}</td>
            <td>
                <a href="#" class="view-grievances-link" onclick="openGrievancesPopup('${studentId}')">&#128065;</a>
            </td>
        </tr>
    </table>
    <a href="user.jsp">Go Back</a>

    <!-- Modal Popup for Grievances -->
    <div id="grievancesModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeGrievancesPopup()">&times;</span>
            <h2>Grievances for Student ID: <span id="modalStudentId"></span></h2>
            <div id="grievancesContent">
                <!-- Grievances content will be displayed here -->
            </div>
        </div>
    </div>

    <script>
        function openGrievancesPopup(studentId) {
            const modal = document.getElementById("grievancesModal");
            const modalStudentId = document.getElementById("modalStudentId");
            modalStudentId.textContent = studentId;

            // Replace this with code to fetch grievances data for the selected student.
            const grievancesData = getGrievancesData(studentId);
            const grievancesContent = document.getElementById("grievancesContent");
            grievancesContent.textContent = grievancesData;

            modal.style.display = "block";
        }

        function closeGrievancesPopup() {
            const modal = document.getElementById("grievancesModal");
            modal.style.display = "none";
        }

        // Replace this with code to fetch grievances data for the selected student.
        function getGrievancesData(studentId) {
            // Example: Fetch grievances data using AJAX or from a database.
            // Return the data in the desired format.
            
        }
    </script>
</body>
</html>
