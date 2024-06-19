<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.example.demo.Grievance, java.util.*, com.example.demo.Faculty" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grievance List</title>
    <style>
        /* Custom CSS for the Grievance List */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #3498db;
            color: white;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        img {
            max-width: 100px;
            max-height: 100px;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #2980b9;
        }

        /* CSS for the image popup */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
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
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }
        .close {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 20px;
            cursor: pointer;
        }

        /* CSS for the "Delete" button */
        .delete-button {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <h1>Grievance List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Category</th>
            <th>Description</th>
            <th>Image</th>
            <th>Student IDNum</th>
            <th>Delete Grievance</th>
            <th>Assign Grievance</th>
        </tr>
        <% for (Grievance s : (List<Grievance>) request.getAttribute("grievances")) { %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getCategory() %></td>
                <td><%= s.getDescription() %></td>
                <td>
                    <%
                        String imageUrl = "image/" + s.getId(); // Replace with the actual path to your images
                        boolean imageExists = /* Check if the image file exists on the server */ true; // Replace with your logic
                    %>
                    <a href="javascript:void(0);" class="view-image-link" onclick="openImagePopup('<%= imageUrl %>')">&#128065;</a>
                    <%
                        if (imageExists) {
                    %>
                    <a href="<%= imageUrl %>" download="image_<%= s.getId() %>">
                        <button>Download</button>
                    </a>
                    <%
                        } else {
                    %>
                    <button disabled>Download</button>
                    <%
                        }
                    %>
                </td>
                <td><%= s.getIdnum() %></td>
                <td>
                    <a href="/delete/<%= s.getId() %>" class="delete-button">Delete</a>
                </td>
                <td>
                    <form method="post" action="/assignGrievance">
                        <input type="hidden" name="id" value="<%= s.getId() %>">
                            <input type="hidden" name="category" value="<%= s.getCategory() %>">
                        <input type="hidden" name="description" value="<%= s.getDescription() %>">
                        <input type="hidden" name="idnum" value="<%= s.getIdnum() %>">
                        
                        <select name="facultyId">
                            <option value="">Assign to Faculty</option>
                            <% for (Faculty faculty : (List<Faculty>) request.getAttribute("faculty")) { %>
                                <option value="<%= faculty.getFacultyId() %>"><%= faculty.getFacultyId() %></option>
                            <% } %>
                        </select>
                        <input type="submit" value="Assign">
                    </form>
                </td>
            </tr>
        <% } %>
    </table>
    <a href="/management.jsp">Back</a>

    <div id="imagePopup" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeImagePopup()">&times;</span>
            <img id="popupImage" src="" alt="Image Not Available Or Not Uploaded By User">
        </div>
    </div>

    <script>
        function openImagePopup(imageUrl) {
            const modal = document.getElementById("imagePopup");
            const popupImage = document.getElementById("popupImage");
            popupImage.src = imageUrl;
            modal.style.display = "block";
        }

        function closeImagePopup() {
            const modal = document.getElementById("imagePopup");
            modal.style.display = "none";
        }
    </script>
</body>
</html>
