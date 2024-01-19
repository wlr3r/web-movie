<!DOCTYPE html>
<html>
<head>
    <title>Modification d'un utilisateur</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5; /* Fond gris doux */
    }

    form {
        margin: auto;
        width: 50%;
        padding: 20px;
        background-color: #fff; /* Fond blanc */
        border-radius: 10px; /* Bords arrondis */
        box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.05); /* Ombre légère */
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        box-sizing: border-box;
        border: 1px solid #ddd; /* Bordure douce */
        border-radius: 5px; /* Bords arrondis */
    }

    input[type="submit"] {
        background-color: #4CAF50; /* Vert */
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        border-radius: 5px; /* Bords arrondis */
        transition: background-color 0.3s ease; /* Transition douce */
    }

    input[type="submit"]:hover {
        background-color: #45a049; /* Vert plus foncé au survol */
    }
    </style>
</head>
<body>
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
</body>
</html>
