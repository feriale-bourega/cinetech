<?php

class Produits
{
    private $id;  
    private $id_article;
    public $articles;
    public $id_utilisateur; 
    public $id_categorie;
    public $date;
    public $bdd;
    public $images;
    public $commentaire;
    public $name;


    public function __construct()
    {
        try
        {
            $options = 
            [
                PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            ];
            require('db-config.php');
            $this->bdd = new PDO($DB_SDN, $DB_USER, $DB_PASS, $options);
        }
        catch(PDOException $exception)
        {
            echo 'ERREUR :'.$exception->getMessage();
        }
    }

    //==>PAGE INDEX.PHP
    //Les 6 derniers articles parus
    public function last_films()
    {
        $sql = "SELECT titre, image, date
                FROM `films` 
                ORDER BY date DESC 
                LIMIT 3";
        $request = $this->bdd->prepare($sql);
        $request->execute();
        // var_dump($request);

        $list_films = $request->fetchAll(PDO::FETCH_ASSOC);
        // var_dump($list_categ);
        return $list_films;
    }

    public function last_séries()
    {
        $sql = "SELECT titre, image, date
                FROM `séries` 
                ORDER BY date DESC 
                LIMIT 3";
        $request = $this->bdd->prepare($sql);
        $request->execute();
        // var_dump($request);

        $list_séries = $request->fetchAll(PDO::FETCH_ASSOC);
        // var_dump($list_categ);
        return $list_séries;
    }


     //==>PAGE ARTICLE.PHP
        //(1/5)Creation page article selon son id 
        public function single_film($id)
        {   //$result_art
            $sql ="SELECT * 
                    FROM `films` 
                    WHERE id = $id ";
            // On prepare la requete
            $request = $this->bdd->prepare($sql);
            // On execute
            $request->execute([$id]);
            // On recupere les valeurs dans un tableau associatif
            // $articles = $request->fetchAll(PDO::FETCH_ASSOC);
            $films = $request->fetch(PDO::FETCH_ASSOC);
            // var_dump($articles);
    
            return $films;
        }

        public function single_série($id)
        {   //$result_art
            $sql ="SELECT * 
                    FROM `séries` 
                    WHERE id = $id ";
            // On prepare la requete
            $request = $this->bdd->prepare($sql);
            // On execute
            $request->execute([$id]);
            // On recupere les valeurs dans un tableau associatif
            // $articles = $request->fetchAll(PDO::FETCH_ASSOC);
            $séries = $request->fetch(PDO::FETCH_ASSOC);
            // var_dump($articles);
    
            return $séries;
        }

    }
    