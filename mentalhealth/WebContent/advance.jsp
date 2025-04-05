<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced MCQ Test</title>
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
    <h1>Advanced MCQ Test</h1>
    <form id="mcqForm" action="resu.jsp" method="post">

        <div class="question">
            <label>1. What is the time complexity of binary search in a sorted array?</label><br>
            <input type="radio" name="q1" value="A"> A) O(n)<br>
            <input type="radio" name="q1" value="B"> B) O(log n)<br>
            <input type="radio" name="q1" value="C"> C) O(n log n)<br>
            <input type="radio" name="q1" value="D"> D) O(1)<br>
        </div>

        <div class="question">
            <label>2. Which data structure is best suited for implementing an LRU (Least Recently Used) cache?</label><br>
            <input type="radio" name="q2" value="A"> A) Stack<br>
            <input type="radio" name="q2" value="B"> B) Queue<br>
            <input type="radio" name="q2" value="C"> C) HashMap + Doubly Linked List<br>
            <input type="radio" name="q2" value="D"> D) Binary Search Tree<br>
        </div>

        <div class="question">
            <label>3. In Java, which keyword is used to prevent method overriding?</label><br>
            <input type="radio" name="q3" value="A"> A) static<br>
            <input type="radio" name="q3" value="B"> B) final<br>
            <input type="radio" name="q3" value="C"> C) private<br>
            <input type="radio" name="q3" value="D"> D) abstract<br>
        </div>

        <div class="question">
            <label>4. What will be the output of the following Java snippet?</label><br>
            <pre>
                public class Test {
                    public static void main(String[] args) {
                        int a = 10, b = 20;
                        System.out.println(a++ + --b);
                    }
                }
            </pre>
            <input type="radio" name="q4" value="A"> A) 29<br>
            <input type="radio" name="q4" value="B"> B) 30<br>
            <input type="radio" name="q4" value="C"> C) 31<br>
            <input type="radio" name="q4" value="D"> D) Compilation Error<br>
        </div>

        <div class="question">
            <label>5. Which of the following is a type of SQL injection attack?</label><br>
            <input type="radio" name="q5" value="A"> A) Blind SQL Injection<br>
            <input type="radio" name="q5" value="B"> B) Boolean-based SQL Injection<br>
            <input type="radio" name="q5" value="C"> C) Error-based SQL Injection<br>
            <input type="radio" name="q5" value="D"> D) All of the above<br>
        </div>

        <div class="question">
            <label>6. What is the primary purpose of a Firewall in cybersecurity?</label><br>
            <input type="radio" name="q6" value="A"> A) To encrypt data<br>
            <input type="radio" name="q6" value="B"> B) To monitor and control incoming/outgoing network traffic<br>
            <input type="radio" name="q6" value="C"> C) To prevent hardware failures<br>
            <input type="radio" name="q6" value="D"> D) To compress network packets<br>
        </div>

        <div class="question">
            <label>7. What does ACID stand for in database transactions?</label><br>
            <input type="radio" name="q7" value="A"> A) Atomicity, Consistency, Isolation, Durability<br>
            <input type="radio" name="q7" value="B"> B) Automated, Concurrent, Integrity, Database<br>
            <input type="radio" name="q7" value="C"> C) Accessible, Connected, Indexed, Durable<br>
            <input type="radio" name="q7" value="D"> D) Active, Constant, Immutable, Dependent<br>
        </div>

        <div class="question">
            <label>8. Which sorting algorithm has the worst-case time complexity of O(n²)?</label><br>
            <input type="radio" name="q8" value="A"> A) Quick Sort<br>
            <input type="radio" name="q8" value="B"> B) Merge Sort<br>
            <input type="radio" name="q8" value="C"> C) Bubble Sort<br>
            <input type="radio" name="q8" value="D"> D) Heap Sort<br>
        </div>

        <div class="question">
            <label>9. What is the main use of a "Salt" in password hashing?</label><br>
            <input type="radio" name="q9" value="A"> A) To speed up the hashing process<br>
            <input type="radio" name="q9" value="B"> B) To add randomness and prevent rainbow table attacks<br>
            <input type="radio" name="q9" value="C"> C) To make passwords case-insensitive<br>
            <input type="radio" name="q9" value="D"> D) To convert a hash back to its original value<br>
        </div>

    </form>
</div>

</body>
</html>
