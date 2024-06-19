<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Input Form</title>
</head>
<body>
   <script>
    // This script will automatically submit the form when the page loads
    document.addEventListener("DOMContentLoaded", function () {
        document.getElementById("myForm").submit(); // Change "myForm" to your form's ID
    });
</script>

<form id="myForm" action="/grievancesrstu" method="get">
    <input type="hidden" id="idnum" name="idnum" value="${studentId}">
    <!-- Other form fields here -->
</form>



</body>
</html>