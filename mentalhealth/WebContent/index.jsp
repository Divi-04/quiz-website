<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mental Health Portal</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #6dd5fa, #2980b9, #6dd5fa);
            background-size: 400% 400%;
            animation: gradientAnimation 10s infinite alternate;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            overflow: hidden;
        }
        @keyframes gradientAnimation {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .container {
            background: white;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.4);
            width: 500px;
            animation: fadeIn 2s ease-out;
            transform: scale(0.9);
            transition: transform 0.5s ease-in-out;
        }
        .container:hover {
            transform: scale(1);
        }
        h1 {
            color: #2980b9;
            margin-bottom: 20px;
            letter-spacing: 2px;
            text-transform: uppercase;
        }
        p {
            color: #555;
            margin-bottom: 30px;
            font-size: 16px;
        }
        .btn {
            display: inline-block;
            padding: 12px 25px;
            background: #2980b9;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            transition: background 0.3s ease, transform 0.3s ease;
            margin: 10px;
            box-shadow: 0 5px 15px rgba(41, 128, 185, 0.5);
        }
        .btn:hover {
            background: #1a5276;
            transform: scale(1.1);
        }
        .wave {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100px;
            background: url('https://www.transparenttextures.com/patterns/waves.png');
            animation: waveAnimation 5s infinite linear;
        }
        @keyframes waveAnimation {
            from { background-position: 0 0; }
            to { background-position: 1000px 0; }
        }
    </style>
</head>
<body>
<div class="wave"></div>
<div class="container">
    <h1>Welcome to Empowering Mental Health Portal</h1>
    <p>Your journey towards mental well-being begins here.</p>
    <a href="register.jsp" class="btn">Get Started</a>
    <a href="login.jsp" class="btn">Login</a>
</div>
</body>
</html>
