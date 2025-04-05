<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Depression Level Assessment</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
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
            animation: fadeIn 1s ease-in-out;
            overflow: auto;
            height: 80vh;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        h1 {
            color: #2980b9;
        }
        form {
            text-align: left;
        }
        label {
            display: block;
            margin: 20px 0 10px 0;
            font-size: 18px;
            color: #333;
        }
        input[type="radio"] {
            margin-right: 10px;
            cursor: pointer;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #2980b9;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
            margin-top: 20px;
            outline: none;
        }
        .btn:hover {
            background: #1a5276;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Depression Level Assessment</h1>
    <form action="result.jsp" method="post">
        <div>
            <label>1. Feeling down or hopeless?</label>
            <input type="radio" name="q1" value="0"> Never
            <input type="radio" name="q1" value="1"> Sometimes
            <input type="radio" name="q1" value="2"> Often
            <input type="radio" name="q1" value="3"> Always
        </div>

        <div>
            <label>2. Trouble falling asleep or sleeping too much?</label>
            <input type="radio" name="q2" value="0"> Never
            <input type="radio" name="q2" value="1"> Sometimes
            <input type="radio" name="q2" value="2"> Often
            <input type="radio" name="q2" value="3"> Always
        </div>

        <div>
            <label>3. Feeling tired or having low energy?</label>
            <input type="radio" name="q3" value="0"> Never
            <input type="radio" name="q3" value="1"> Sometimes
            <input type="radio" name="q3" value="2"> Often
            <input type="radio" name="q3" value="3"> Always
        </div>

        <div>
            <label>4. Poor appetite or overeating?</label>
            <input type="radio" name="q4" value="0"> Never
            <input type="radio" name="q4" value="1"> Sometimes
            <input type="radio" name="q4" value="2"> Often
            <input type="radio" name="q4" value="3"> Always
        </div>

        <div>
            <label>5. Feeling bad about yourself?</label>
            <input type="radio" name="q5" value="0"> Never
            <input type="radio" name="q5" value="1"> Sometimes
            <input type="radio" name="q5" value="2"> Often
            <input type="radio" name="q5" value="3"> Always
        </div>

        <div>
            <label>6. Trouble concentrating?</label>
            <input type="radio" name="q6" value="0"> Never
            <input type="radio" name="q6" value="1"> Sometimes
            <input type="radio" name="q6" value="2"> Often
            <input type="radio" name="q6" value="3"> Always
        </div>

        <div>
            <label>7. Thoughts of self-harm?</label>
            <input type="radio" name="q7" value="0"> Never
            <input type="radio" name="q7" value="1"> Sometimes
            <input type="radio" name="q7" value="2"> Often
            <input type="radio" name="q7" value="3"> Always
        </div>

        <button type="submit" class="btn">Submit</button>
    </form>
</div>

</body>
</html>
