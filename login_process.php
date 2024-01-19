// login_process.php
<?php
session_start();
$pdo = new PDO('mysql:host=localhost;dbname=sak_movie;charset=utf8mb4', 'root', '');

if (!isset($_POST['username']) || !isset($_POST['password'])) {
    echo "Username or password not provided";
    exit;
}   

$username = $_POST['username'];
$password = $_POST['password'];

// Vérifiez les informations d'identification de l'administrateur dans la base de données
$stmt = $pdo->prepare('SELECT * FROM utilisateur WHERE nom = :nom AND role = :role');
$stmt->execute(['nom' => $username, 'role' => 'admin']);
$user = $stmt->fetch();

if ($user && password_verify($password, $user['password'])) {
    $_SESSION['admin_logged_in'] = true; 
    header('Location: users.php');
} else {
    echo "Invalid username or password";
}

?>

