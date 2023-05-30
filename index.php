<?php
$title = 'Accueil';
include ('header.php');
ob_start();


// $getIdLast = htmlspecialchars($_GET['id']);
// $getIdLast = (int)($_GET['id']);

require_once("Produits.php");


$produits = new Produits();
if (isset($_POST['id']) && !empty($_POST['id']) && isset($_POST['image'])&& !empty($_POST['image'] &&
                isset($_POST['date']) && !empty($_POST['date']) && isset($_POST['titre']) && !empty($_POST['titre']))){
 $lastf = $produits->last_films($_POST["id"], $_POST["image"], $_POST ["date"], $_POST["titre"], $_POST["date"]);
 $lasts = $produits->last_séries($_POST["id"], $_POST["image"], $_POST ["date"], $_POST["titre"], $_POST["date"]);}
// var_dump($last);


?>
<main class="main-first">
    <section class="section-first">
        <h1 class="title-main">Liste des 6 derniers articles</h1>
        <div class="container-art">
            <div class="libelle">
                <?php
                if (isset($_POST['id']) && !empty($_POST['id']) && isset($_POST['image'])&& !empty($_POST['image'] &&
                isset($_POST['date']) && !empty($_POST['date']) && isset($_POST['titre']) && !empty($_POST['titre']))){
                 foreach ($lastf as $film) { ?>

                    <a href="films.php?id=<?= $produits['id'] ?>">
                    <img class="responsive"  src="assets/films<?php echo $produits['image'] ?>" alt="">
                    <?= date_format(date_create($produits['date']), 'd/m/Y H:i:s') ?> <br>
                    <?= $produits['titre'] ?> <br>
                    
                <?php }} ?>
                    </a>
            </div>
            <div class="séries">
                <?php 
                if (isset($_POST['id']) && !empty($_POST['id']) && isset($_POST['image'])&& !empty($_POST['image'] &&
                isset($_POST['date']) && !empty($_POST['date']) && isset($_POST['titre']) && !empty($_POST['titre']))){
                foreach ($lasts as $série) { ?>

                    <a href="séries.php?id=<?= $produits['id'] ?>">
                    <img class="responsive"  src="assets/séries<?php echo $article['image'] ?>" alt="">
                    <?= date_format(date_create($produits['date']), 'd/m/Y H:i:s') ?> <br>
                    <?= $produits['titre'] ?> <br>
                    
                <?php } }?>
                    </a>
            </div>
        </div>
        <p class="title-main">
            <a href="articles.php">Cliquez ici, pour découvrir les autres articles.</a>
        </p>
        
        
        
    </section>
</main>
<?php
//define('DOC_ROOT_PATH', $_SERVER['DOCUMENT_ROOT'].'/');
//require DOC_ROOT_PATH . "footer.php";
//include ('footer.php');
?>