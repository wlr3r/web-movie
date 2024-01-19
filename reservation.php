<?php
session_start(); // démarrer la session
require 'db_connect.php';

// Récupérer les films de la base de données
$stmt = $pdo->query('SELECT id_film, nom_film, duree_heures, duree_minutes FROM film');
$films = $stmt->fetchAll();
$user = $stmt->fetch();
// Gérer la soumission du formulaire
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
 $film_id = $_POST['film'];
 $date = $_POST['date'];
 $nombre_places = $_POST['nombre_places'];
 $salle_id = $_POST['type_salle'];

 // Récupérer l'ID de l'utilisateur
 $user_id = $_SESSION['id_utilisateur'];
 var_dump($user_id);

 // Récupérer les informations de la salle de la base de données
 $stmt = $pdo->prepare('SELECT * FROM salle_cinema WHERE id_salle_cinema = :id_salle_cinema');
 $stmt->execute(['id_salle_cinema' => $salle_id]);
 $salle = $stmt->fetch();

 // Trouver le prix de la salle
 $prix_salle = $salle['prix'];

 // Calculer le prix total
 $prix_total = $nombre_places * $prix_salle;

 // Insérer la réservation dans la base de données
 $stmt = $pdo->prepare('INSERT INTO reservation (places, date, prix, ref_user) VALUES (?, ?, ?, ?)');
$stmt->execute([$nombre_places, $date, $prix_total, $user_id]);

 echo 'Réservation effectuée avec succès !';
}
?>