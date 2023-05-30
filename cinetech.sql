-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 25 mai 2023 à 12:52
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinetech`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `durée` time NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `réalisateurs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `noms acteurs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `images acteurs` text COLLATE utf8mb4_general_ci NOT NULL,
  `vidéo` text COLLATE utf8mb4_general_ci NOT NULL,
  `recommandations` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `image`, `date`, `type`, `durée`, `description`, `réalisateurs`, `noms acteurs`, `images acteurs`, `vidéo`, `recommandations`) VALUES
(1, 'Les gardiens de la galaxie', 'galaxie/galaxie1.jpg', '0000-00-00', 'Science-fiction, aventure, action', '00:00:02', 'Peter Quill, encore sous le choc de la perte de Gamora, doit rallier son équipe pour une mission dangereuse visant à sauver Rocket. Une mission qui, en cas d’échec, pourrait bien conduire à la fin des Gardiens tels que nous les connaissons.', 'James Gunn', 'Roger Stern      Don Heck\r\nJim Starlin      Jack Kirby\r\nStan Lee         Larry Lieber\r\nKeith Giffen     Sal Buscema\r\nSteve Gann       John Buscema\r\nSteve Englehart  Bill Mantlo', 'galaxie/galaxieact1.jpg\r\ngalaxie/galaxieact2.jpg\r\ngalaxie/galaxieact3.jpg\r\ngalaxie/galaxieact4.jpg\r\ngalaxie/galaxieact5.jpg\r\ngalaxie/galaxieact6.jpg\r\ngalaxie/galaxieact7.jpg\r\ngalaxie/galaxieact8.jpg\r\ngalaxie/galaxieact9.jpg', 'https://www.themoviedb.org/movie/447365-guardians-of-the-galaxy-vol-3', 'galaxie/galaxierecom1.jpg\r\ngalaxie/galaxierecom2.jpg\r\ngalaxie/galaxierecom3.jpg\r\ngalaxie/galaxierecom4.jpg\r\ngalaxie/galaxierecom5.jpg'),
(2, 'Ant-man et la Guêpe : Quantumania', 'quantumania/quantumania1.jpg', '0000-00-00', 'Action, aventure, science-fiction', '00:00:02', 'Tout va pour le mieux : Scott a écrit un livre à succès tandis que Hope défend avec le plus grand dévouement des causes humanitaires. Leur famille - Janet van Dyne et Hank Pym (les parents de Hope) et Cassie, la fille de Scott - font enfin partie de leur quotidien. Cassie partage la passion de sa nouvelle famille pour la science et la technologie, notamment en ce qui concerne le domaine quantique. Mais sa curiosité les entraîne tous dans une odyssée imprévue et sans retour dans le vaste monde su', 'Peyton Reed   \r\nJeff Loveness', 'Ernie Hart\r\nJack Kirby\r\nStan Lee\r\nLarry Lieber', 'quantumania/quantumaniaact1.jpg\r\nquantumania/quantumaniaact2.jpg\r\nquantumania/quantumaniaact3.jpg\r\nquantumania/quantumaniaact4.jpg\r\nquantumania/quantumaniaact5.jpg\r\nquantumania/quantumaniaact6.jpg\r\nquantumania/quantumaniaact7.jpg\r\nquantumania/quantumaniaact8.jpg\r\nquantumania/quantumaniaact9.jpg', 'https://www.themoviedb.org/movie/640146-ant-man-and-the-wasp-quantumania', 'quantumania/quantumaniarecom1.jpg\r\nquantumania/quantumaniarecom2.jpg\r\nquantumania/quantumaniarecom3.jpg\r\nquantumania/quantumaniarecom4.jpg\r\nquantumania/quantumaniarecom5.jpg'),
(3, 'Super Mario Bros', 'mario/mario1.jpg', '0000-00-00', 'Animation, Familial, Aventure, Fantastique, Comédie ', '00:00:01', 'Alors qu’ils tentent de réparer une canalisation souterraine, Mario et son frère Luigi, tous deux plombiers, se retrouvent plongés dans un nouvel univers féerique à travers un mystérieux conduit. Mais lorsque les deux frères sont séparés, Mario s’engage dans une aventure trépidante pour retrouver Luigi. Dans sa quête, il peut compter sur l’aide du champignon Toad, habitant du Royaume Champignon, et les conseils avisés, en matière de techniques de combat, de la Princesse Peach, guerrière détermin', 'Michael Jelenic  Aaron Horvath  Matt Fogel', 'Shigeru Miyamoto', 'mario/marioact1.jpg\r\nmario/marioact2.jpg\r\nmario/marioact3.jpg\r\nmario/marioact4.jpg\r\nmario/marioact5.jpg\r\nmario/marioact6.jpg\r\nmario/marioact7.jpg\r\nmario/marioact8.jpg\r\nmario/marioact9.jpg', 'https://www.themoviedb.org/movie/502356-the-super-mario-bros-movie', 'mario/mariorecom1.jpg\r\nmario/mariorecom2.jpg\r\nmario/mariorecom3.jpg\r\nmario/mariorecom4.jpg\r\nmario/mariorecom5.jpg'),
(4, 'Ghosted', 'ghosted/ghosted1.jpg', '0000-00-00', 'Action, Comédie, Romance', '00:00:01', 'Cole, un agriculteur sans histoire, tombe éperdument amoureux de la mystérieuse Sadie, mais découvre avec stupeur qu\'elle est agent secret. Avant même un second rencard, Cole et Sadie vont être embarqués dans une aventure au-delà des frontières lors de laquelle ils vont devoir sauver le monde.', 'Dexter Fletcher   Rhett Reese  Erik Sommers\r\nChris McKenna  Paul Wernick', '', 'ghosted/ghostedact1.jpg\r\nghosted/ghostedact2.jpg\r\nghosted/ghostedact3.jpg\r\nghosted/ghostedact4.jpg\r\nghosted/ghostedact5.jpg\r\nghosted/ghostedact6.jpg\r\nghosted/ghostedact7.jpg\r\nghosted/ghostedact8.jpg\r\nghosted/ghostedact9.jpg', 'https://www.themoviedb.org/movie/868759-ghosted', 'ghosted/ghostedrecom1.jpg\r\nghosted/ghostedrecom2.jpg\r\nghosted/ghostedrecom3.jpg\r\nghosted/ghostedrecom4.jpg\r\nghosted/ghostedrecom5.jpg'),
(5, 'Avatar : La Voie de l\'eau', 'avatar/avatar1.jpg', '0000-00-00', 'Science-Fiction, Aventure, Action ', '00:00:03', 'Jake Sully et Neytiri sont devenus parents. L\'intrigue se déroule une dizaine d\'années après les événements racontés dans le long-métrage originel. Leur vie idyllique, proche de la nature, est menacée lorsque la « Resources Development Administration », dangereuse organisation non-gouvernementale, est de retour sur Pandora. Contraints de quitter leur habitat naturel, Jake et sa famille se rendent sur les récifs, où ils pensent trouver asile. Mais ils tombent sur un clan, les Metkayina, aux mœurs', 'James Cameron   Amanda Silver  Rick Jaffa\r\nShane Salerno  Josh Friedman', 'James Cameron', 'avatar/avataract1.jpg\r\navatar/avataract2.jpg\r\navatar/avataract3.jpg\r\navatar/avataract4.jpg\r\navatar/avataract5.jpg\r\navatar/avataract6.jpg\r\navatar/avataract7.jpg\r\navatar/avataract8.jpg\r\navatar/avataract9.jpg', 'https://www.themoviedb.org/movie/76600-avatar-the-way-of-water', 'avatar/avatarrecom1.jpg\r\navatar/avatarrecom2.jpg\r\navatar/avatarrecom3.jpg\r\navatar/avatarrecom4.jpg\r\navatar/avatarrecom5.jpg'),
(6, 'Peter Pan et Wendy', 'peter/peter1.jpg', '0000-00-00', 'Familial, Fantastique, Action, Aventure', '00:00:01', 'Wendy Darling, une jeune fille ayant peur de quitter la maison familiale, qui rencontre Peter Pan, un garçon qui refuse de grandir. Avec ses frères et une petite fée, la fée Clochette, elle voyage avec Peter dans le monde magique du Pays Imaginaire. Elle y rencontre un capitaine pirate maléfique, le capitaine Crochet, et se lance dans une aventure palpitante et dangereuse qui changera sa vie à jamais.', 'David Lowery  J.M Barry   Toby Halbrooks', '', 'peter/peteract1.jpg\r\npeter/peteract2.jpg\r\npeter/peteract3.jpg\r\npeter/peteract4.jpg\r\npeter/peteract5.jpg\r\npeter/peteract6.jpg\r\npeter/peteract7.jpg\r\npeter/peteract8.jpg\r\npeter/peteract9.jpg', 'https://www.themoviedb.org/movie/420808-peter-pan-wendy', 'peter/peterrecom1.jpg\r\npeter/peterrecom2.jpg\r\npeter/peterrecom3.jpg\r\npeter/peterrecom4.jpg\r\npeter/peterrecom5.jpg'),
(7, 'Shazam!La rage des Dieux', 'shazam/shazam1.jpg', '0000-00-00', 'Comédie, Action, Fantastique', '00:00:02', 'Investis des pouvoirs des dieux, Billy Batson et ses copains apprennent encore à concilier leur vie d’ados avec leurs responsabilités de super-héros dès lors qu’ils se transforment en adultes. Mais quand les Filles de l’Atlas, trio d’anciennes déesses ivres de vengeance, débarquent sur Terre pour retrouver la magie qu’on leur a volée il y a longtemps, Billy, alias Shazam, et sa famille s’engagent dans une bataille destinée à conserver leurs superpouvoirs, à rester en vie et à sauver la planète. ', 'David F.Sandberg   Chris Morgan  Henry Gayden', 'C.C Beck   Bill Parker  \r\n Willian Moulton Marston', 'shazam/shazamact1.jpg\r\nshazam/shazamact2.jpg\r\nshazam/shazamact3.jpg\r\nshazam/shazamact4.jpg\r\nshazam/shazamact5.jpg\r\nshazam/shazamact6.jpg\r\nshazam/shazamact7.jpg\r\nshazam/shazamact8.jpg\r\nshazam/shazamact9.jpg', 'https://www.themoviedb.org/movie/594767-shazam-fury-of-the-gods', 'shazam/shazamrecom1.jpg\r\nshazam/shazamrecom2.jpg\r\nshazam/shazamrecom3.jpg\r\nshazam/shazamrecom4.jpg\r\nshazam/shazamrecom5.jpg'),
(8, 'Aka', 'aka/aka1.jpg', '0000-00-00', 'Thriller, Action, Crime', '00:00:28', 'Adam Franco est un agent infiltré, effectuant le sale boulot partout où il est nécessaire. Sa nouvelle mission, intégrer une organisation mafieuse en France pour déjouer un attentat terroriste imninent dans la capitale.', 'Morgan S.Dalibert      Alban Lenoir', '', 'aka/akaact1.jpg\r\naka/akaact2.jpg\r\naka/akaact3.jpg\r\naka/akaact4.jpg\r\naka/akaact5.jpg\r\naka/akaact6.jpg\r\naka/akaact7.jpg\r\naka/akaact8.jpg\r\naka/akaact9.jpg', 'https://www.themoviedb.org/movie/1102776-aka', 'aka/akarecom1.jpg\r\naka/akarecom2.jpg\r\naka/akarecom3.jpg\r\naka/akarecom4.jpg\r\naka/akarecom5.jpg'),
(9, 'John Wick', 'wick/wick1.jpg', '0000-00-00', 'Action, Thriller, Crime', '00:00:02', 'John Wick affronte ses adversaires les plus redoutables dans ce quatrième volet de la série. De New York à Osaka, en passant par Paris et Berlin, John Wick mène un combat contre la Grande Table, la terrible organisation criminelle qui a mis sa tête à prix, en affrontant ses tueurs les plus dangereux...', 'Chad Stahelski   Shay Hatten   Michael Fintch ', 'Derek Kolstad', 'wick/wickact1.jpg\r\nwick/wickact2.jpg\r\nwick/wickact3.jpg\r\nwick/wickact4.jpg\r\nwick/wickact5.jpg\r\nwick/wickact6.jpg\r\nwick/wickact7.jpg\r\nwick/wickact8.jpg\r\nwick/wickact9.jpg', 'https://www.themoviedb.org/movie/603692-john-wick-chapter-4', 'wick/wickrecom1.jpg\r\nwick/wickrecom2.jpg\r\nwick/wickrecom3.jpg\r\nwick/wickrecom4.jpg\r\nwick/wickrecom5.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `séries`
--

DROP TABLE IF EXISTS `séries`;
CREATE TABLE IF NOT EXISTS `séries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `durée` time NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `réalisateurs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `noms acteurs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `images acteurs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `vidéo` text COLLATE utf8mb4_general_ci NOT NULL,
  `recommandations` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `séries`
--

INSERT INTO `séries` (`id`, `titre`, `image`, `date`, `type`, `durée`, `description`, `réalisateurs`, `noms acteurs`, `images acteurs`, `vidéo`, `recommandations`) VALUES
(1, 'Les Mystères de l\'amour', 'mystères/mystères1.jpg', '0000-00-00', 'Comédie', '00:00:00', 'Les années ont passé depuis l\'époque de la cafét\' et du garage. Nicolas est devenu photographe. Il vit dans une péniche amarrée au bord de la Seine. Bénédicte et José ont pris la gérance d\'un restaurant sur l\'île de la Jatte. Après le départ de Johanna pour le Texas, Christian a rejoint ses amis de toujours. Il poursuit son rêve de devenir une star de la musique, soutenu par Angèle, sa jeune fiancée. Olga est devenue la meilleure amie de Bénedicte, après avoir sauvé la vie de Léa, la petite fill', 'Jean-Luc Azoulay', '', 'mystères/mystèresact1.jpg\r\nmystères/mystèresact2.jpg\r\nmystères/mystèresact3.jpg\r\nmystères/mystèresact4.jpg\r\nmystères/mystèresact5.jpg\r\nmystères/mystèresact6.jpg\r\nmystères/mystèresact7.jpg\r\nmystères/mystèresact8.jpg\r\nmystères/mystèresact9.jpg', 'https://www.themoviedb.org/tv/63935-les-myst-res-de-l-amour', 'mystères/mystèresrecom1.jpg\r\nmystères/mystèresrecom2.jpg\r\nmystères/mystèresrecom3.jpg\r\nmystères/mystèresrecom4.jpg\r\nmystères/mystèresrecom5.jpg'),
(2, 'Silo', 'silo/silo1.jpg', '0000-00-00', 'Science-Fiction, Fantastique, Drame', '00:00:00', 'Dans un futur où la Terre est dévastée et l\'air devenu toxique, les survivants vivent dans un silo géant souterrain de 144 étages. Au sein de cette communauté, les individus doivent se plier à toute une série de règles très strictes destinées les protéger. Les citoyens qui enfreignent la loi sont envoyés en dehors du silo, condamnés à y trouver la mort au contact d’une atmosphère irrespirable. Pourtant, peu à peu, l\'idée que les dirigeants mentent sur ce qu\'il se passe à l\'extérieur fait son che', 'Graham Yost', '', 'silo/siloact1.jpg\r\nsilo/siloact2.jpg\r\nsilo/siloact3.jpg\r\nsilo/siloact4.jpg\r\nsilo/siloact5.jpg\r\nsilo/siloact6.jpg\r\nsilo/siloact7.jpg\r\nsilo/siloact8.jpg\r\nsilo/siloact9.jpg', 'https://www.themoviedb.org/tv/125988-wool', 'silo/silorecom1.jpg\r\nsilo/silorecom2.jpg\r\nsilo/silorecom3.jpg\r\nsilo/silorecom4.jpg\r\nsilo/silorecom5.jpg'),
(3, 'Grey\'s Anatomy', 'grey/grey1.jpg', '0000-00-00', 'Drame', '00:00:00', 'Meredith Grey, fille d\'un chirurgien très réputé, commence son internat de première année en médecine chirurgicale dans un hôpital de Seattle. La jeune femme s\'efforce de maintenir de bonnes relations avec ses camarades internes, mais dans ce métier difficile la compétition fait rage.\r\n', 'Shonda Rhimes', '', 'grey/greyact1.jpg\r\ngrey/greyact2.jpg\r\ngrey/greyact3.jpg\r\ngrey/greyact4.jpg\r\ngrey/greyact5.jpg\r\ngrey/greyact6.jpg\r\ngrey/greyact7.jpg\r\ngrey/greyact8.jpg\r\ngrey/greyact9.jpg', 'https://www.themoviedb.org/tv/1416-grey-s-anatomy', 'grey/greyrecom1.jpg\r\ngrey/greyrecom2.jpg\r\ngrey/greyrecom3.jpg\r\ngrey/greyrecom4.jpg\r\ngrey/greyrecom5.jpg'),
(4, 'Flash', 'flash/flash1.jpg', '0000-00-00', 'Drame, Science-Fiction, Fantastique', '00:00:00', 'Jeune expert de la police scientifique de Central City, Barry Allen se retrouve doté d\'une vitesse extraordinaire après avoir été frappé par la foudre. Sous le costume de Flash, il utilise ses nouveaux pouvoirs pour combattre le crime.', 'Greg Berlanti   Geoff Johns   Andrew Kreisberg', '', 'flash/flashact1.jpg\r\nflash/flashact2.jpg\r\nflash/flashact3.jpg\r\nflash/flashact4.jpg\r\nflash/flashact5.jpg\r\nflash/flashact6.jpg\r\nflash/flashact7.jpg\r\nflash/flashact8.jpg\r\nflash/flashact9.jpg', 'https://www.themoviedb.org/tv/60735-the-flash', 'flash/flashrecom1.jpg\r\nflash/flashrecom2.jpg\r\nflash/flashrecom3.jpg\r\nflash/flashrecom4.jpg\r\nflash/flashrecom5.jpg'),
(5, 'New-York : Unité spéciale', 'york/york1.jpg', '0000-00-00', 'Crime, Drame, Mystère', '00:00:00', 'Une unité spéciale de la police de New York enquête sur des crimes à connotation sexuelle en prenant en charge les victimes.', 'Dick Wolf', '', 'york/yorkact1.jpg\r\nyork/yorkact2.jpg\r\nyork/yorkact3.jpg\r\nyork/yorkact4.jpg\r\nyork/yorkact5.jpg\r\nyork/yorkact6.jpg\r\nyork/yorkact7.jpg\r\nyork/yorkact8.jpg\r\nyork/yorkact9.jpg', 'https://www.themoviedb.org/tv/2734-law-order-special-victims-unit', 'york/yorkrecom1.jpg\r\nyork/yorkrecom2.jpg\r\nyork/yorkrecom3.jpg\r\nyork/yorkrecom4.jpg\r\nyork/yorkrecom5.jpg'),
(6, 'Citadelle', 'citadelle/citadelle1.jpg', '0000-00-00', 'Drame, Crime, Action, Aventure', '00:00:00', 'Il y a huit ans, Citadel, agence internationale indépendante d\'espionnage, est détruite par l\'organisation Manticore. Les agents d\'élite Mason Kane (Richard Madden) et Nadia Sinh (Priyanka Chopra Jonas) frôlent la mort et leur mémoire est effacée. Huit ans après, l\'ancien collègue de Mason, Bernard Orlick (Stanley Tucci) l\'appelle à l\'aide pour empêcher Manticore d\'imposer un nouvel ordre mondial.', 'Josh Applebaum   Bryan Oh   David Weil', '', 'citadelle/citadelleact1.jpg\r\ncitadelle/citadelleact2.jpg\r\ncitadelle/citadelleact3.jpg\r\ncitadelle/citadelleact4.jpg\r\ncitadelle/citadelleact5.jpg\r\ncitadelle/citadelleact6.jpg\r\ncitadelle/citadelleact7.jpg\r\ncitadelle/citadelleact8.jpg\r\ncitadelle/citadelleact9', 'https://www.themoviedb.org/tv/114922-citadel', 'citadelle/citadellerecom1.jpg\r\ncitadelle/citadellerecom2.jpg\r\ncitadelle/citadellerecom3.jpg\r\ncitadelle/citadellerecom4.jpg\r\ncitadelle/citadellerecom5.jpg'),
(7, 'Call of the Night', 'night/night1.jpg', '0000-00-00', 'Animation, Comédie, Science-fiction, Fantastique', '00:00:00', 'Bien qu’il soit apprécié par ses camarades, Kô Yamori, collégien de 14 ans, arbore pour autant un comportement de façade, ce qui l’amène à stopper son cursus scolaire. Victime d’insomnies depuis quelque temps, il commence à errer la nuit dans l’espoir d’endiguer ce phénomène. C’est lors d’une d’elles qu’il rencontre Nazuna Nanakusa, une vampire, également appelée « marcheur de nuit » qui lui donne l’envie d’en devenir également un. La seule condition pour qu’elle accède à sa demande est que Kô t', '', '', 'night/nightact1.jpg\r\nnight/nightact2.jpg\r\nnight/nightact3.jpg\r\nnight/nightact4.jpg\r\nnight/nightact5.jpg\r\nnight/nightact6.jpg\r\nnight/nightact7.jpg\r\nnight/nightact8.jpg\r\nnight/nightact9.jpg', 'https://www.themoviedb.org/tv/138357', 'night/nightrecom1.jpg\r\nnight/nightrecom2.jpg\r\nnight/nightrecom3.jpg\r\nnight/nightrecom4.jpg\r\nnight/nightrecom5.jpg'),
(8, 'Supernatural', 'supernatural/supernatural1.jpg', '0000-00-00', 'Drame, Mystère, Science-fiction, Fantastique', '00:00:00', 'Deux frères, Sam et Dean Winchester, chasseurs de créatures surnaturelles, sillonnent les États-Unis à bord d\'une Chevrolet Impala noire de 1967 et enquêtent sur des phénomènes paranormaux (souvent issus du folklore, des superstitions, mythes et légendes urbaines américaines, mais aussi des monstres surnaturels tels que les fantômes, loups-garous, démons, vampires…).', 'Eric Kripke', '', 'supernatural/supernaturalact1.jpg\r\nsupernatural/supernaturalact2.jpg\r\nsupernatural/supernaturalact3.jpg\r\nsupernatural/supernaturalact4.jpg\r\nsupernatural/supernaturalact5.jpg\r\nsupernatural/supernaturalact6.jpg\r\nsupernatural/supernaturalact7.jpg\r\nsupernatur', 'https://www.themoviedb.org/tv/1622-supernatural', 'supernatural/supernaturalrecom1.jpg\r\nsupernatural/supernaturalrecom2.jpg\r\nsupernatural/supernaturalrecom3.jpg\r\nsupernatural/supernaturalrecom4.jpg\r\nsupernatural/supernaturalrecom5.jpg'),
(9, 'Le maire de Kingston', 'kingston/kingston1.jpg', '0000-00-00', 'Drame,Crime', '00:00:00', 'Dans une petite ville du Michigan qui subsiste grâce à la prison locale et la vie policière comme criminelle qui règne autour du centre pénitencier. C\'est l\'histoire de la famille McClusky...', 'Hugh Dillon     Taylor Sheridan', '', 'kingston/kingstonact1.jpg\r\nkingston/kingstonact2.jpg\r\nkingston/kingstonact3.jpg\r\nkingston/kingstonact4.jpg\r\nkingston/kingstonact5.jpg\r\nkingston/kingstonact6.jpg\r\nkingston/kingstonact7.jpg\r\nkingston/kingstonact8.jpg\r\nkingston/kingstonact9.jpg\r\n', 'https://www.themoviedb.org/tv/97951-mayor-of-kingstown', 'kingston/kingstonrecom1.jpg\r\nkingston/kingstonrecom2.jpg\r\nkingston/kingstonrecom3.jpg\r\nkingston/kingstonrecom4.jpg\r\nkingston/kingstonrecom5.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
