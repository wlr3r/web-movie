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
    $restriction_age = $_POST['restriction_age'];
    $pays = $_POST['pays'];
    $langue = $_POST['langue'];
    $sous_titre = $_POST['sous_titre'];

    if (isset($_FILES['image'])) {
        if ($_FILES['image']['error'] == 0) {
            $target_dir = 'uploads/';
            if (!file_exists($target_dir)) {
                mkdir($target_dir, 0777, true);
            }
            $imagePath = $target_dir . $_FILES['image']['name'];
            if (move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
                echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        } else {
            // Handle error
            echo "Erreur lors du téléchargement de l'image. Code d'erreur : " . $_FILES['image']['error'];
        }
    }


    $sql = "INSERT INTO film (nom_film, auteur, synopsis, date_creation, genre, duree_heures, duree_minutes, image, restriction_age, pays, langue, sous_titre) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt= $pdo->prepare($sql);
    if (!$stmt->execute([$nom_film, $auteur, $synopsis, $date_creation, $genre, $duree_heures, $duree_minutes, $imagePath, $restriction_age, $pays, $langue, $sous_titre])) {
        print_r($stmt->errorInfo());
    }
}
?>