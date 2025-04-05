<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MCQ Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 400px;
            margin: auto;
        }
        h1 {
            color: #2980b9;
        }
        .score {
            font-size: 24px;
            font-weight: bold;
            color: #2c3e50;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>MCQ Test Result</h1>

    <%
    HttpSession ses= request.getSession();
  String name=  ses.getAttribute("username").toString();
        int score = 0;

        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");
        String q3 = request.getParameter("q3");
        String q4 = request.getParameter("q4");
        String q5 = request.getParameter("q5");
        String q6 = request.getParameter("q6");
        String q7 = request.getParameter("q7");
        String q8 = request.getParameter("q8");
        String q9 = request.getParameter("q9");

        // Correct answers
        if ("B".equals(q1)) score++; // O(log n)
        if ("C".equals(q2)) score++; // HashMap + Doubly Linked List
        if ("B".equals(q3)) score++; // final
        if ("B".equals(q4)) score++; // Output: 30
        if ("D".equals(q5)) score++; // All of the above
        if ("B".equals(q6)) score++; // Firewall monitors traffic
        if ("A".equals(q7)) score++; // ACID properties
        if ("C".equals(q8)) score++; // Bubble Sort O(n²)
        if ("B".equals(q9)) score++; // Salt prevents rainbow table attacks

    %>

    <p class="score">Your Score: <%= score %> / 9</p>
    <p class="score">Your Name: <%= name %> / 9</p>
    
    

</div>

</body>
</html>
