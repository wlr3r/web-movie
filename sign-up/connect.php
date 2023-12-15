<?php
// Start the session
session_start();

if (isset($_POST['email'], $_POST['password'])) {
    $pdo = new PDO('mysql:host=localhost;dbname=sak_movie;charset=utf8mb4', 'root', '');

    // Configure PDO to throw exceptions on error
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM utilisateur WHERE email = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$email]);
    $utilisateur = $stmt->fetch();

    if ($utilisateur && password_verify($password, $utilisateur['password'])) {
        // Store the user's name in the session
        $_SESSION['name'] = $utilisateur['nom'];

        // Redirect to index.html
        header('Location: ../index.php');
        exit();
    } else {
        echo "Échec de la connexion";
    }
}
?>