<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mental Health Assessment</title>
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
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            width: 600px;
        }
        h1 {
            color: #2980b9;
            margin-bottom: 20px;
            font-size: 36px;
        }
        p {
            color: #555;
            font-size: 18px;
            margin-bottom: 40px;
        }
        .btn {
            display: inline-block;
            padding: 12px 30px;
            margin: 10px;
            background: #2980b9;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            transition: background 0.3s ease, transform 0.3s ease;
            font-weight: 600;
        }
        .btn:hover {
            background: #1a5276;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to Empowering Mental Health</h1>
    <p>Take a step towards better mental health by assessing your depression level using DASS-21.</p>
    
    <a href="depression.jsp" class="btn">Start Quiz</a>
        <a href="medium.jsp" class="btn">Medium</a>
            <a href="advance.jsp" class="btn">Advanced</a>
        
    
</div>
</body>
</html>
