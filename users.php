<!DOCTYPE html>
<html>
<head>
<style>
  .add-button {
    display: inline-block;
    padding: 10px 20px;
    margin: 2px; /* Reduced margin */
    border-radius: 5px;
    color: white;
    text-decoration: none;
    text-align: center;
    transition: all 0.3s ease; /* Smooth transition for hover effects */
} 
.modify-button, .delete-button {
    display: inline-block;
    padding: 10px 20px;
    margin: 2px; /* Reduced margin */
    border-radius: 5px;
    color: white;
    text-decoration: none;
    text-align: center;
    transition: all 0.3s ease; /* Smooth transition for hover effects */
}

.modify-button {
    background-color: #4CAF50; /* Green background */
}

.modify-button:hover {
    background-color: #45a049; /* Darker green when hovered */
    box-shadow: 0 0 10px #45a049; /* Green glow effect when hovered */
}

.delete-button {
    background-color: #f44336; /* Red background */
}

.delete-button:hover {
    background-color: #da190b; /* Darker red when hovered */
    box-shadow: 0 0 10px #da190b; /* Red glow effect when hovered */
}
  body {
    background-color: #E8E8E8; /* Lighter gray background for a softer look */
  }

  table {
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
    border-radius: 10px;
    overflow: hidden;
  }

  th, td {
    padding: 15px;
    text-align: left;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }

  th {
    background-color: #000000; /* Black header */
    color: white; /* Changed text color to white for better contrast */
  }
  

  input[type="search"] {
    width: 50%; /* Adjust as needed */
    padding: 10px;
    border-radius: 5px;
    margin: auto;
    display: block;
  }
</style>
</head>
<body>
    <form method="post">
        <input type="search" id="search" name="search" placeholder="Search...">
    </form>

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

    $search = '';
    if (isset($_POST['search'])) {
        $search = $_POST['search'];
    }

  
    $sql = "SELECT * FROM utilisateur WHERE id_utilisateur LIKE ? OR nom LIKE ? OR email LIKE ? OR role LIKE ? OR age LIKE ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(["%$search%", "%$search%", "%$search%", "%$search%", "%$search%"]);

    $users = $stmt->fetchAll();
    ?>

<table>
  <tr>
    <th>Users</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
    <th>Role</th>
    <th>Age</th>
    <th>Actions</th>
  </tr>
  <?php foreach ($users as $user): ?>
    <tr>
        <td><?= $user['id_utilisateur'] ?></td>
        <td><?= $user['nom'] ?></td>
        <td><?= $user['email'] ?></td>
        <td><?= $user['password'] ?></td>
        <td><?= $user['role'] ?></td>
        <td><?= $user['age'] ?></td>
        <td>
        <a href="modif_user.php?id=<?= $user['id_utilisateur'] ?>" class="modify-button">Modify</a>
        <a href="delete_user.php?id=<?= $user['id_utilisateur'] ?>" class="delete-button">Supprimer</a>
</form>        </td>
    </tr>
  <?php endforeach; ?>
</table>
</body>
</html>