<?php
session_start();

// Connexion à la base de données
$db = new PDO('mysql:host=localhost;dbname=sak_movie', 'root', '');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
 $username = $_POST['nom'];
 $password = $_POST['password'];

 // Récupération de l'utilisateur et de son pass hashé
 $req = $db->prepare('SELECT id_utilisateur, role, password FROM utilisateur WHERE nom = :nom');
 $req->execute(['nom' => $username]);
 $result = $req->fetch();

 if (!$result) {
  $error = "Nom d'utilisateur incorrect";
 } else {
  $hashed_password = $result['password'];
  $role = $result['role'];
  $id_utilisateur = $result['id_utilisateur'];

  if (password_verify($password, $hashed_password) && ($role === 'membre' || $role === 'admin')) {
   $_SESSION['username'] = $username;
   $_SESSION['role'] = $role;
   $_SESSION['id_utilisateur'] = $id_utilisateur;

   header('Location: 1reservation.php');
   exit;
  } else {
   $error = "Mot de passe incorrect ou vous n'avez pas les permissions nécessaires pour accéder à cette page";
  }
 }
}
?>

<!-- Reste de votre HTML ici -->


<!DOCTYPE html>
<html lang="fr">
<head>
    <style>
     .login-form {
      width: 300px;
      margin: 0 auto;
      padding: 30px;
      background-color: #f0f0f0;
      border-radius: 8px;
      box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
     }

     .login-form label {
      display: block;
      margin-bottom: 5px;
      font-size: 0.9em;
      color: #333;
     }

     .login-form input[type="text"],
     .login-form input[type="password"] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      border-radius: 4px;
     }

     .login-form input[type="submit"] {
      width: 100%;
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
     }

     .login-form input[type="submit"]:hover {
      background-color: #45a049;
     }
    </style>
</head>
<body>
    <?php if (isset($error)): ?>
        <p><?php echo $error; ?></p>
    <?php endif; ?>
    <form class="login-form" method="post" action="loginreservation.php">
        <label for="nom">Nom d'utilisateur :</label>
        <input type="text" id="nom" name="nom" required>
        <label for="password">Mot de passe :</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Se connecter">
    </form>
</body>
</html>