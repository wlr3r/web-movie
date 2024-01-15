<?php
// Include your database connection file here
include 'db_connect.php';

// Get the user ID from the GET parameters
$id = $_GET['id'];
echo "User ID: $id<br>";

// Print the PDO instance
var_dump($pdo);

// SQL query to delete the user
try {
    // SQL query to delete the user
    $query = "DELETE FROM utilisateur WHERE id_utilisateur = ?";
    $stmt = $pdo->prepare($query);
    $result = $stmt->execute([$id]);
} catch (PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}

// Redirect to the users page
header("Location: users.php");
exit();
?>