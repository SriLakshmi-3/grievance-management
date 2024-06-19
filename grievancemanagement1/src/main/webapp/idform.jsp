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

<form id="myForm" action="/assignGrievance" method="post">
    <input type="hidden" id="idnum" name="idnum" value="1">
        <input type="hidden" id="category" name="category" value="cse">
        <input type="hidden" id="description" name="description" value="hello">
        <input type="hidden" id="facultyid" name="facultyid" value="2100030067">
       <!--  <input type="hidden" id="image" name="image" value="${studentId}"> -->
        
</form>



</body>
</html>