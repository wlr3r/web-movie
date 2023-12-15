<?php
 // Si un ID de film a été sélectionné
 if (isset($_POST['id_film'])) {
  // Exécution de la requête
  $stmt = $pdo->prepare("SELECT * FROM film WHERE id_film = ?");
  $stmt->execute([$_POST['id_film']]);
  $film = $stmt->fetch();

  // Affichage des résultats
  if ($film) {
  echo '<div class="film-details">';
  echo "ID du film: " . $film['id_film'] . "<br>";
  echo "Nom du film: " . $film['nom_film'] . "<br>";
  echo "Auteur: " . $film['auteur'] . "<br>";
  echo "Synopsis: " . $film['synopsis'] . "<br>";
  echo "Date de création: " . $film['date_creation'] . "<br>";
  echo "Genre: " . $film['genre'] . "<br>";
  echo "Durée: " . $film['duree_heures'] . " heures " . $film['duree_minutes'] . " minutes<br>";
  echo "Image: " . $film['image'] . "<br>";
  echo "Restriction d'âge: " . $film['restriction_age'] . "<br>";
  echo "Pays: " . $film['pays'] . "<br>";
  echo "Langue: " . $film['langue'] . "<br>";
  echo "Sous-titre: " . $film['sous_titre'] . "<br><hr>";
  echo '</div>';
  } else {
  echo "Aucun film trouvé avec l'ID " . $_POST['id_film'];
  }
 } else {
  echo "Aucun ID de film n'a été soumis.";
 }
?>