<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Customer Information</title>
    <style>
        /* Styles for the navigation bar */
        nav {
            background-color: #6dbceb;
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        nav li {
            float: left;
        }

        nav li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav li a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Styles for the form */
        #customerForm {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        #customerForm h2 {
            margin-top: 0;
            margin-bottom: 20px;
        }

        #customerForm label {
            display: block;
            margin-bottom: 10px;
        }

        #customerForm input[type="text"],
        #customerForm input[type="number"],
        #customerForm input[type="email"],
        #customerForm input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #customerForm button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 3px;
        }

        #customerForm button[type="reset"] {
            background-color: #f44336;
        }

        button {
            background-color: blue;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 3px;
        }

        button:hover {
            background-color: darkblue;
        }

        /* Increase table size */
        #customerTable {
            width: 80%;
            border-collapse: collapse;
        }

        #customerTable th, #customerTable td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        #customerTable th {
            background-color: #f2f2f2;
        }

        #customerTable tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<!-- Navigation bar -->
<nav>
    <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
    </ul>
</nav>

<h2>Customer Information</h2>

<table border="1" id="customerTable">
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Email</th>
        <th>Phone Number</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>John Otieno</td>
        <td>30</td>
        <td>johno@gmail.com</td>
        <td>0734567890</td>
    </tr>
    <tr>
        <td>Jane Smith</td>
        <td>25</td>
        <td>jane.smith@gmail.com</td>
        <td>0776543210</td>
    </tr>
    <tr>
        <td>Michael Johnson</td>
        <td>34</td>
        <td>michael.johnson@gmail.com</td>
        <td>0767890123</td>
    </tr>
    <tr>
        <td>Sarah Williams</td>
        <td>35</td>
        <td>sarah.williams@gmail.com</td>
        <td>0790123456</td>
    </tr>
    <tr>
        <td>David Brown</td>
        <td>28</td>
        <td>david.brown@gmail.com</td>
        <td>0716549870</td>
    </tr>

    </tbody>
</table>

<button onclick="toggleForm()">Add Customer</button>

<div id="customerForm">
    <h2>Customer Information Form</h2>
    <form action="/submitCustomer" method="post">
        <!-- Form fields go here -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>
        <br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br><br>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required>
        <br><br>

        <button type="submit">Submit</button>
        <button type="reset">Cancel</button>
    </form>
</div>

<script>
    function toggleForm() {
        var form = document.getElementById("customerForm");
        form.style.display = (form.style.display === "none") ? "block" : "none";
    }
</script>

</body>
</html>
