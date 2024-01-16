<?php
// Récupérer les films de la base de données
$stmt = $pdo->query('SELECT id_film, nom_film, duree_minutes FROM film');
$films = $stmt->fetchAll();

// Gérer la soumission du formulaire
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
 $film_id = $_POST['film'];
 $date = $_POST['date'];
 $nombre_places = $_POST['nombre_places'];
 $salle_id = $_POST['type_salle'];

 // Récupérer les types de salles de la base de données
 $stmt = $pdo->query('SELECT id_film, nom_film, duree_minutes FROM film');
 $stmt->execute(["salle"=>$salle_id]);
 $films = $stmt->fetchAll();

 // Trouver le prix de la salle
 $prix_salle = $salle['prix'];

 // Calculer le prix total
 $prix_total = $nombre_places * $prix_salle;

 // Insérer la réservation dans la base de données
 $stmt = $pdo->prepare('INSERT INTO reservation (places, date, prix) VALUES (?, ?, ?)');
 $stmt->execute([$nombre_places, $date, $prix_total]);

 echo 'Réservation effectuée avec succès !';
}
?>