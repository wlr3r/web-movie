<?php

// Connexion à la base de données
session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Document</title>
    <link rel="stylesheet" href="./css/mstyle.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #1f1f1f;
            color: #fff;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        .left {
            width: 15%;
            background-color: #111;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        p {
            font-size: 18px;
            color: #fff;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        .flow {
            width: 100%;
            display: flex;
            align-items: center;
            padding: 15px;
            margin-bottom: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
            border-radius: 10px;
        }

        .flow:hover {
            background-color: #2c2c2c;
        }

        .flow .material-icons {
            font-size: 25px;
            color: #fff;
            margin-right: 10px;
        }

        h2 {
            font-size: 18px;
            color: #fff;
            text-transform: capitalize;
            margin: 0;
        }

        .sign-in-link {
            text-decoration: none;
            color: #fff;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .sign-in-link:hover {
            color: #ff4500;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="left">
            <p>Web-Movie</p>
            <div class="flow home">
                <span class="material-icons">home</span>
                <a href="index.html" class="redirection-btn">Accueil</a>
            </div>
            
            <div class="flow">
                <span class="material-icons">movie_filter</span>
                <h2>Réservation</h2>
            </div>
            <div class="flow">
                <span class="material-icons">search</span>
                <h2>Rechercher</h2>
            </div>
            <p>Comptes</p>
            <div class="dropdown">
                <button class="dropbtn">Langue</button>
                <div class="dropdown-content">
                    <a href="index.php">Anglais</a>
                    <a href="indexFr.php">Français</a>
                </div>
            </div>
            <div class="flow">
                <span class="material-icons">account_circle</span>
                <div class="flow">
                <?php if (isset($_SESSION['name'])): ?>
        <a href="#" class="sign-in-link"><?php echo $_SESSION['name']; ?></a>
    <?php else: ?>
        <a href="../web-movie-master/sign-up/signin.html" class="sign-in-link">Connexion</a>
    <?php endif; ?>
            </div>
        </div>
        <div class="right">         
            <div class="heading">
                <div class="head-content">
                    <h2>Fantasy island</h2>
                    <div class="rating">
                        <div class="btn"><span class="material-icons">movie_filter</span><span>2021</span></div>
                        <div class="btn"><span class="material-icons star">star</span><span>26.1</span></div>
                    </div>
                    <p>Un groupe de téléspectateurs arrive sur une île-hôtel pour vivre ses rêves, mais se retrouve piégé dans des scénarios cauchemardesques.</p>
                    <a href="../web-movie-master/AfficheFIlm/fantasy.html" class="btn btn-main">voir plus</a>
                </div>
                <div class="img-container"></div>
            </div>
            <div class="trending">
                <h1>Films à la mode <span>voir tout</span></h1>
                <div class="movie-container">
                    <div class="list"></div>
                    <div class="list"></div>
                    <div class="list"></div>
                    <div class="list"></div>
                    <div class="list"></div>
                </div>
            </div>
            <div class="trending">
                <h1>Films à la mode<span>voir tout</span></h1>
                <div class="movie-container tv">
                    <div class="list"></div>
                    <div class="list"></div>
                    <div class="list"></div>
                    <div class="list"></div>
                    <div class="list"></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
