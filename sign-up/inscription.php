<?php
if (isset($_POST['email'], $_POST['password'], $_POST['confirm_password'], $_POST['name'], $_POST['age'])) {
    $pdo = new PDO('mysql:host=localhost;dbname=sak_movie;charset=utf8mb4', 'root', '');

    // Configure PDO to throw exceptions on error
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];
    $name = $_POST['name'];
    $age = $_POST['age'];

    if ($password != $confirm_password) {
        echo "T'es nul";
        exit();
    }

    $sql = "INSERT INTO utilisateur (nom, email, password, age) VALUES (?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);

    try {
        $result = $stmt->execute([$name, $email, $password, $age]);
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
        exit();
    }

    if ($result) {
        echo "NICE ";
    } else {
        echo "FONCTIONNE PAS";
    }
}
?>