<?php
// Inclusion du fichier de connexion à la base de données
include 'db_connect.php';

// Vérifie si la requête est de type POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupère les données du formulaire ou assigne null si elles n'existent pas
    $nom_film = $_POST['nom_film'];
    $auteur = $_POST['auteur'];
    $synopsis = $_POST['synopsis'];
    $date_creation = $_POST['date_creation'];
    $genre = $_POST['genre'];
    $duree_heures = $_POST['duree_heures'];
    $duree_minutes = $_POST['duree_minutes'];
    $pays = $_POST['pays'];
    $langue = $_POST['langue'];
    $sous_titre = isset($_POST['sous_titre']) ? $_POST['sous_titre'] : '';
    
    // Vérifie si la langue est dans la liste des langues acceptées
    if (!in_array($langue, ['Anglais', 'Français', 'Espagnol', 'Japonais', 'Chinois', 'Coréen'])) {
        // Si la langue n'est pas acceptée, affiche la langue
    }

    // Vérifie si le sous-titre est dans la liste des langues acceptées
    if (!in_array($sous_titre, ['Anglais', 'Français', 'Espagnol', 'Japonais', 'Chinois', 'Coréen', 'Autre', ''])) {
        // Si le sous-titre n'est pas accepté, affiche le sous-titre
    }

    // Vérifie si un fichier image a été téléchargé
    if (isset($_FILES['image'])) {
        // Vérifie si le téléchargement du fichier a réussi
        if ($_FILES['image']['error'] == 0) {
            // Définit le répertoire de destination pour les fichiers téléchargés
            $target_dir = 'uploads/';
            // Vérifie si le répertoire existe, sinon le crée
            if (!file_exists($target_dir)) {
                mkdir($target_dir, 0777, true);
            }
            // Construit le chemin complet du fichier image
            $imagePath = $target_dir . $_FILES['image']['name'];
            // Tente de déplacer le fichier téléchargé vers le répertoire de destination
            if (move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
                // Si le déplacement réussit, affiche un message de succès
                echo "Le fichier ". basename( $_FILES["image"]["name"]). " a été téléchargé.";
            } else {
                // Sinon, affiche un message d'erreur
                echo "Désolé, une erreur s'est produite lors du téléchargement de votre fichier.";
            }
        } else {
            // Si une erreur s'est produite lors du téléchargement du fichier, affiche un message d'erreur avec le code d'erreur
            echo "Erreur lors du téléchargement de l'image. Code d'erreur : " . $_FILES['image']['error'];
        }
    }

    $stmt = $pdo->prepare("INSERT INTO film (nom_film, auteur, synopsis, date_creation, genre, duree_heures, duree_minutes, image, pays, langue, sous_titre) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->execute([$nom_film, $auteur, $synopsis, $date_creation, $genre, $duree_heures, $duree_minutes,$imagePath, $pays, $langue, $sous_titre]);
    echo 'Film ajouté avec succès !';
}
?>
<a href="index.php">Retour à l'accueil</a>
