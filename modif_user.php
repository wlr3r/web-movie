<?php
// Include your database connection file
include 'db_connect.php';

// Get the user ID from the GET parameters
$id = $_GET['id'];

// SQL query to get the current user information
$query = "SELECT * FROM utilisateur WHERE id_utilisateur = ?";
$stmt = $pdo->prepare($query);
$stmt->execute([$id]);
$user = $stmt->fetch();

// Check if the SQL query was successful
if ($user === false) {
    die("Erreur : L'utilisateur n'a pas été trouvé.");
}

// If the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the new user information from the POST parameters
    $nom = $_POST['nom'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $age = $_POST['age'];
    $role = $_POST['role'];

    // SQL query to update the user
    $query = "UPDATE utilisateur SET nom = ?, email = ?, password = ?, age = ?, role = ? WHERE id_utilisateur = ?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$nom, $email, $password, $age, $role, $id]);

    // Redirect to the user list
    header("Location: users.php");
    exit;
}

// Display the form with the current user information
echo "
<form method='post'>
    Nom: <input type='text' name='nom' value='{$user['nom']}'><br>
    Email: <input type='text' name='email' value='{$user['email']}'><br>
    Password: <input type='text' name='password' value='{$user['password']}'><br>
    Age: <input type='text' name='age' value='{$user['age']}'><br>
    Role: <input type='text' name='role' value='{$user['role']}'><br>
    <input type='submit' value='Mettre à jour'>
</form>
";
?>