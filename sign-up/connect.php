<?php
$pdo = new PDO('mysql:host=localhost;dbname=sak_movie;charset=utf8mb4', 'root', '');

$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT * FROM utilisateur WHERE email = ? AND password = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$email, $password]);
$user = $stmt->fetch();

if ($user) {
    echo "Login successful";
} else {
    echo "Invalid email or password";
}
?>