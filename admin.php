//Admin login page
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            width: 300px;
            margin: 0 auto;
            margin-top: 100px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
        }
        .btn {
            padding: 10px;
            width: 100%;
            background-color: #007BFF;
            color: white;
            border: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="login_process.php" method="post">
            <input type="text" name="username" class="form-control" placeholder="Username" required>
            <input type="password" name="password" class="form-control" placeholder="Password" required>
            <input type="submit" value="Login" class="btn">
        </form>
    </div>
</body>
</html>