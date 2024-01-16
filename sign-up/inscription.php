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
        echo "Les mots de passe ne correspondent pas";
        exit();
    }

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO utilisateur (nom, email, password, age, role) VALUES (?, ?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);

    $result = $stmt->execute([$name, $email, $hashed_password, $age, "membre"]);

    if ($result) {
        // Redirect to signin.html
        header('Location: signin.html');
        exit();
    } else {
        echo "Erreur lors de l'inscription";
    }
}
?>