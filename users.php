<!DOCTYPE html>
<html>
<head>
 <title>Liste des utilisateurs</title>
 <style>
  body {
    font-family: Arial, sans-serif;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
  }

  th {
    background-color: #4CAF50;
    color: white;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }
 </style>
</head>
<body>
 <?php
  $host = 'localhost';
  $db   = 'sak_movie';
  $user = 'root';
  $pass = '';
  $charset = 'utf8mb4';

  $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
  $opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
  ];
  $pdo = new PDO($dsn, $user, $pass, $opt);

  $sql = "SELECT * FROM utilisateur";
  $stmt = $pdo->query($sql);

  $users = $stmt->fetchAll();
 ?>

 <form action="" method="post">
  <input type="text" name="search" placeholder="Rechercher...">
  <input type="submit" value="Rechercher">
 </form>

 <table>
  <tr>
   <th>ID</th>
   <th>Nom</th>
   <th>Email</th>
   <th>Mot de passe</th>
   <th>Rôle</th>
   <th>Age</th>
  </tr>
  <?php foreach ($user as $user): ?>
  <tr>
   <td><?= $user['id'] ?></td>
   <td><?= $user['nom'] ?></td>
   <td><?= $user['email'] ?></td>
   <td><?= $user['password'] ?></td>
   <td><?= $user['role'] ?></td>
   <td><?= $user['age'] ?></td>
  </tr>
  <?php endforeach; ?>
 </table>
</body>
</html>