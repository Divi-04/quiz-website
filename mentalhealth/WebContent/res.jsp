<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MCQ Result</title>
</head>
<body>

<%

    int score = 0;
    String q1 = request.getParameter("q1");
    String q2 = request.getParameter("q2");
    String q3 = request.getParameter("q3");
    String q4 = request.getParameter("q4");
    String q5 = request.getParameter("q5");

    if ("C".equals(q1)) score++;
    if ("C".equals(q2)) score++;
    if ("B".equals(q3)) score++;
    if ("B".equals(q4)) score++;
    if ("A".equals(q5)) score++;
%>

<h1>Your Score: <%= score %> / 5</h1>

</body>
</html>
