<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            height: 100vh;
            background: linear-gradient(to right, #6dd5fa, #2980b9);
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            animation: fadeIn 1.5s ease;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .container {
            background: white;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            width: 500px;
        }
        h1 {
            color: #2980b9;
            margin-bottom: 20px;
        }
        p {
            color: #555;
            font-size: 18px;
            margin-bottom: 30px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #2980b9;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background: #1a5276;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Your Depression Score</h1>
    <% 
        int totalScore = 0;
        for (int i = 1; i <= 7; i++) {
            String score = request.getParameter("q" + i);
            if (score != null) {
                totalScore += Integer.parseInt(score);
            }
        }
    %>
    <p>Your total score is: <%= totalScore %></p>
    <% if (totalScore >= 0 && totalScore <= 9) { %>
        <p>You have Normal Depression Level.</p>
    <% } else if (totalScore >= 10 && totalScore <= 13) { %>
        <p>You have Mild Depression Level.</p>
    <% } else if (totalScore >= 14 && totalScore <= 20) { %>
        <p>You have Moderate Depression Level.</p>
    <% } else if (totalScore >= 21 && totalScore <= 27) { %>
        <p>You have Severe Depression Level.</p>
    <% } else { %>
        <p>You have Extremely Severe Depression Level.</p>
    <% } %>
    <a href="index.jsp" class="btn">Go to Home</a>
</div>
</body>
</html>