<?php
$pdo = new PDO('mysql:host=localhost;dbname=sak_movie', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom_film = $_POST['nom_film'];
    $auteur = $_POST['auteur'];
    $synopsis = $_POST['synopsis'];
    $date_creation = $_POST['date_creation'];
    $genre = $_POST['genre'];
    $duree_heures = $_POST['duree_heures'];
    $duree_minutes = $_POST['duree_minutes'];
    $image = $_POST['image'];
    $restriction_age = $_POST['restriction_age'];
    $pays = $_POST['pays'];
    $langue = $_POST['langue'];
    $sous_titre = $_POST['sous_titre'];

    $sql = "INSERT INTO film (nom_film, auteur, synopsis, date_creation, genre, duree_heures, duree_minutes, image, restriction_age, pays, langue, sous_titre) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt= $pdo->prepare($sql);
    if (!$stmt->execute([$nom_film, $auteur, $synopsis, $date_creation, $genre, $duree_heures, $duree_minutes, $image, $restriction_age, $pays, $langue, $sous_titre])) {
        print_r($stmt->errorInfo());
    }
}
?>