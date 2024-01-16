<?php
// Connectez-vous à la base de données
include 'db_connect.php';

// Préparez la requête SQL pour récupérer les films
$stmt = $pdo->prepare('SELECT * FROM Film');
$stmt->execute();
$films = $stmt->fetchAll();

// Préparez la requête SQL pour récupérer les salles
$stmt = $pdo->prepare('SELECT * FROM salle_cinema');
$stmt->execute();
$salles = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Réservation de film</title>

<style>
body {
 font-family: Arial, sans-serif;
 background-color: #f4f4f4;
 margin: 0;
 padding: 0;
}

h2 {
 color: #333;
 text-align: center;
 margin-top: 50px;
}

form {
 width: 500px;
 margin: 50px auto;
 background-color: #fff;
 padding: 30px;
 border-radius: 8px;
 box-shadow: 0px 0px 10px 0px #000;
}

form div {
 margin-bottom: 15px;
}

form label {
 display: block;
 margin-bottom: 5px;
}

form select, form input[type="number"], form input[type="date"], form input[type="text"] {
 width: 100%;
 padding: 10px;
 border: 1px solid #ddd;
 border-radius: 4px;
}

form input[type="submit"] {
 background-color: #333;
 color: #fff;
 padding: 10px 20px;
 border: none;
 border-radius: 4px;
 cursor: pointer;
}

form input[type="submit"]:hover {
 background-color: #444;
}
</style>

</head>
<body>

<h2>Formulaire de réservation de film</h2>

<form action="reservation.php" method="post">
<div>
 <label for="film">Film:</label>
 <select id="film" name="film">
 <?php foreach ($films as $film): ?>
 <option value="<?= $film['id_film'] ?>"><?= $film['nom_film'] ?> (<?= $film['duree'] ?> minutes)</option>
 <?php endforeach; ?>
 </select>
</div>
 <div>
 <label for="date">Date:</label>
 <input type="date" id="date" name="date">
 </div>
 <div>
 <label for="nombre_places">Nombre de places:</label>
 <input type="number" id="nombre_places" name="nombre_places" min="1">
 </div>
 <div>
 <label for="type_salle">Type de salle:</label>
 <select id="type_salle" name="type_salle" onchange="updatePrice()">
 <?php foreach ($salles as $salle): ?>
 <option value="<?= $salle['id_salle_cinema'] ?>" data-price="<?= $salle['prix'] ?>"><?= $salle['type'] ?></option>
 <?php endforeach; ?>
 </select>
 </div>
 <div>
 <label for="prix">Prix:</label>
 <input type="text" id="prix" name="prix" readonly>
 </div>
 <div>
 <input type="submit" value="Réserver">
 </div>
</form>

<script>
function updatePrice() {
 var salleSelect = document.getElementById('type_salle');
 var nombrePlacesInput = document.getElementById('nombre_places');
 var prixInput = document.getElementById('prix');
 var selectedOption = salleSelect.options[salleSelect.selectedIndex];
 var pricePerPlace = parseFloat(selectedOption.getAttribute('data-price'));
 var nombrePlaces = parseInt(nombrePlacesInput.value, 10);
 var totalPrice = pricePerPlace * nombrePlaces;
 prixInput.value = totalPrice.toFixed(2);
}

// Appeler la fonction une fois au chargement de la page pour initialiser le prix
updatePrice();

// Mettre à jour le prix lorsque le nombre de places change
document.getElementById('nombre_places').addEventListener('change', updatePrice);

// Mettre à jour le prix lorsque le type de salle change
document.getElementById('type_salle').addEventListener('change', updatePrice);
</script>

</body>
</html>