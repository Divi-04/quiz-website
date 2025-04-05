<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Mental Health Portal</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #6dd5fa, #2980b9);
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
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.4);
            width: 400px;
            animation: fadeIn 2s ease-out;
        }
        h1 {
            color: #2980b9;
            margin-bottom: 20px;
            letter-spacing: 2px;
            text-transform: uppercase;
        }
        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }
        .btn {
            display: inline-block;
            padding: 12px 25px;
            background: #2980b9;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            transition: background 0.3s ease, transform 0.3s ease;
            margin-top: 20px;
            cursor: pointer;
            box-shadow: 0 5px 15px rgba(41, 128, 185, 0.5);
        }
        .btn:hover {
            background: #1a5276;
            transform: scale(1.1);
        }
        a {
            display: block;
            margin-top: 20px;
            color: #2980b9;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #1a5276;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <form action="LoginServlet" method="post">
        <input type="email" name="email" placeholder="Email" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <button type="submit" class="btn">Login</button>
    </form>
    <a href="register.jsp">Don't have an account? Register Here</a>
</div>
</body>
</html>
