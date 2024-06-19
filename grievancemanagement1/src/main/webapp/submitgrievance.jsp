<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <style>
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
            text-align: center;
        }

        form {
            max-width: auto;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 10px #ccc;
        }

        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        a {
            display: block;
            text-align: center;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 15px;
        }

        a:hover {
            background-color: #2980b9;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .error {
            color: red;
            margin-bottom: 20px;
        }

        /* Popup Style */
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0px 0px 10px #ccc;
            border-radius: 5px;
        }
                .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0px 0px 10px #ccc;
            border-radius: 5px;
            text-align: center;
        }

        .popup p {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .popup-button {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .popup-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>Submit Your Grievance Here</h1>
    <form action="/grievance" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="idnum">ID Number:</label>
            <input type="text" name="idnum" id="idnum" placeholder="ID Number" required pattern="[0-9]{10}" title="Please enter a valid ID number" value="${empty studentId ? sessionScope.loggedInUserId : studentId}">
        </div>
        <div class="form-group">
            <label for="category">Category:</label>
            <select name="category" id="category" required>
                <option value="">Select a Category</option>
                <option value="P&D">P&D</option>
                <option value="CENTRAL GRIEVANCES">CENTRAL GRIEVANCES</option>
                <option value="EXAMINATION SECTION">EXAMINATION SECTION</option>
                <option value="ECM Dept.">ECM Dept.</option>
                <option value="CSE Dept.">CSE Dept.</option>
                <option value="ECE Dept.">ECE Dept.</option>
                <option value="BES-1 Dept.">BES-1 Dept.</option>
                <option value="BES-Il Dept.">BES-Il Dept.</option>
                <option value="BIO TECHNOLOGY Dept.">BIO TECHNOLOGY Dept.</option>
                <option value="B.Arch Dept.">B.Arch Dept.</option>
                <option value="BA Dept.">BA Dept.</option>
                <option value="BBA Dept.">BBA Dept.</option>
                <option value="MECHANICAL Dept.">MECHANICAL Dept.</option>
                <option value="B.Sc(Hons.) Agri Dept.">B.Sc(Hons.) Agri Dept.</option>
                <option value="B.Sc HM Dept.">B.Sc HM Dept.</option>
                <option value="CAMS Dept.">CAMS Dept.</option>
                <option value="CIVIL Dept.">CIVIL Dept.</option>
                <option value="Chemistry Dept.">Chemistry Dept.</option>
                <option value="B. Pharm Dept.">B. Pharm Dept.</option>
                <option value="BCA Dept.">BCA Dept.</option>
                <option value="EEE Dept.">EEE Dept.</option>
                <option value="English Dept.">English Dept.</option>
                <option value="LAW Dept.">LAW Dept.</option>
                <option value="MATHEMATICS Dept.">MATHEMATICS Dept.</option>
                <option value="MBA Dept.">MBA Dept.</option>
                <option value="Physics Dept.">Physics Dept.</option>
                <option value="KANCHANAGANGA GIRLS HOSTEL">KANCHANAGANGA GIRLS HOSTEL</option>
                <option value="STAFF QUARTERS">STAFF QUARTERS</option>
                <option value="CAMPUS NILAGIRI BOYS HOSTEL">NILAGIRI BOYS HOSTEL</option>
                <option value="ARAVALI GIRLS HOSTEL">ARAVALI GIRLS HOSTEL</option>
                <option value="VINDYA GIRLS HOSTEL">VINDYA GIRLS HOSTEL</option>
                <option value="SATPURA BOYS HOSTEL">SATPURA BOYS HOSTEL</option>
                <option value="SAHYADRI BOYS HOSTEL">SAHYADRI BOYS HOSTEL</option>
                <option value="HIMALAYA BOYS HOSTEL">HIMALAYA BOYS HOSTEL</option>
                <option value="CAMPUS ERP">ERP</option>
                <option value="FACULTY & STAFF AFFAIRS">FACULTY & STAFF AFFAIRS</option>
                <option value="P&D HYD">P&D HYD</option>
                <option value="Research & Development (R&D)">Research & Development (R&D)</option>
                <option value="CDOE GRIEVANCES">CDOE GRIEVANCES</option>
                <option value="ACCOUNTS & FINANCE">ACCOUNTS & FINANCE</option>
            </select>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea name="description" id="description" placeholder="Description" required></textarea>
        </div>
        <div class="form-group">
            <label for="file">Upload File:</label>
            <input type="file" name="file" id="file">
        </div>
        <input type="submit" value="Submit Grievance">
    </form>
    <a href="user">Go Back</a>

    <!-- Popup Window -->
    <div id="successPopup" class="popup" th:if="${successMessage}">
        <p th:text="${successMessage}"></p>
        <button id="closePopupButton">Close</button>
    </div>

     <script>
        // JavaScript to close the popup
        document.getElementById("closePopupButton").addEventListener("click", function () {
            document.getElementById("successPopup").style.display = "none";
        });

        // JavaScript to log a message when the form is successfully submitted
        document.getElementById("grievanceForm").addEventListener("submit", function () {
            // Log a message to the console
            console.log("Form submitted successfully!");

            // Redirect to another page for 5 seconds
            window.location.href = '/another-page';

            // After 5 seconds, redirect back to the 'user' page
            setTimeout(function () {
                window.location.href = '/user';
            }, 5000); // 5000 milliseconds (5 seconds)
        });
    </script>
</body>
</html>
