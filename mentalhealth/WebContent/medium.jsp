<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT Quiz</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6dd5fa, #2980b9);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            width: 600px;
        }
        h1 {
            color: #2980b9;
        }
        form {
            text-align: left;
        }
        .question {
            display: none;
        }
        .active {
            display: block;
        }
        input[type="radio"] {
            margin-right: 10px;
            cursor: pointer;
        }
        .btn {
            padding: 10px 20px;
            background: #2980b9;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
            margin-top: 20px;
        }
        .btn:hover {
            background: #1a5276;
        }
    </style>
    <script>
        let currentQuestion = 0;
        function showNextQuestion() {
            let questions = document.querySelectorAll('.question');
            if (currentQuestion < questions.length) {
                if (currentQuestion > 0) {
                    questions[currentQuestion - 1].classList.remove('active');
                }
                questions[currentQuestion].classList.add('active');
                currentQuestion++;
                setTimeout(showNextQuestion, 10000); // 10 seconds per question
            } else {
                document.getElementById("mcqForm").submit(); // Auto-submit at the end
            }
        }
        window.onload = function() {
            showNextQuestion();
        };
    </script>
</head>
<body>

<div class="container">
    <h1>IT Quiz</h1>
    <form id="mcqForm" action="res.jsp" method="post">
        
        <div class="question">
            <label>1. Which language is used for Android app development?</label>
            <input type="radio" name="q1" value="A"> A) Python<br>
            <input type="radio" name="q1" value="B"> B) Java/Kotlin<br>
            <input type="radio" name="q1" value="C"> C) C++<br>
            <input type="radio" name="q1" value="D"> D) Swift<br>
        </div>

        <div class="question">
            <label>2. What does HTML stand for?</label>
            <input type="radio" name="q2" value="A"> A) Hyper Text Markup Language<br>
            <input type="radio" name="q2" value="B"> B) High Transfer Machine Language<br>
            <input type="radio" name="q2" value="C"> C) Hyperlink and Text Markup Language<br>
            <input type="radio" name="q2" value="D"> D) None of the above<br>
        </div>

        <div class="question">
            <label>3. Which of the following is a version control system?</label>
            <input type="radio" name="q3" value="A"> A) Git<br>
            <input type="radio" name="q3" value="B"> B) Docker<br>
            <input type="radio" name="q3" value="C"> C) Jenkins<br>
            <input type="radio" name="q3" value="D"> D) Kubernetes<br>
        </div>

        <div class="question">
            <label>4. What is the primary function of an Operating System?</label>
            <input type="radio" name="q4" value="A"> A) Manage hardware and software resources<br>
            <input type="radio" name="q4" value="B"> B) Run web browsers<br>
            <input type="radio" name="q4" value="C"> C) Store user data<br>
            <input type="radio" name="q4" value="D"> D) Provide an internet connection<br>
        </div>

        <div class="question">
            <label>5. Which database is known as a NoSQL database?</label>
            <input type="radio" name="q5" value="A"> A) MySQL<br>
            <input type="radio" name="q5" value="B"> B) Oracle<br>
            <input type="radio" name="q5" value="C"> C) MongoDB<br>
            <input type="radio" name="q5" value="D"> D) PostgreSQL<br>
        </div>

        <div class="question">
            <label>6. Which protocol is used for secure data transfer over the internet?</label>
            <input type="radio" name="q6" value="A"> A) HTTP<br>
            <input type="radio" name="q6" value="B"> B) FTP<br>
            <input type="radio" name="q6" value="C"> C) HTTPS<br>
            <input type="radio" name="q6" value="D"> D) SMTP<br>
        </div>

        <div class="question">
            <label>7. What does IDE stand for in programming?</label>
            <input type="radio" name="q7" value="A"> A) Integrated Data Environment<br>
            <input type="radio" name="q7" value="B"> B) Internal Development Engine<br>
            <input type="radio" name="q7" value="C"> C) Integrated Development Environment<br>
            <input type="radio" name="q7" value="D"> D) Intelligent Debugging Emulator<br>
        </div>

    </form>
</div>

</body>
</html>
