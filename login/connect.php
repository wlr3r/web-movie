<?php
header('Content-Type: application/json');
$data = json_decode(file_get_contents('php://input'), true);
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "sak_movie";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("INSERT INTO utilisateur (email, password) VALUES (:email, :password)");
    $stmt->bindParam(':email', $data['email']);
    $stmt->bindParam(':password', password_hash($data['password'], PASSWORD_DEFAULT));
    $stmt->execute();

    echo json_encode(array('success' => true));
} catch(PDOException $e) {
    echo json_encode(array('success' => false, 'message' => $e->getMessage()));
}
$conn = null;
?>