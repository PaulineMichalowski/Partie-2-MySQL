-- Exercice 1 :
-- Se déplace dans la base de données déjà créee afin de pouvoir y créer la table
USE `languages`;
-- Crée une table avec une colonne id en chiffre entier, toujours positif, qui s'auto-incrémente et une colonne language en type varchar, alphanumérique de 40 caractères
-- NOT NULL stocke les données
-- La clé primaire d'une ligne permet d'identifier de manière unique cette ligne dans la table
CREATE TABLE `languages` (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    languages VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
)
-- Précise un moteur lors de la création de la table, ici INNODB. Moteur par défaut : MyISAM
ENGINE=INNODB;

-- Exercice 2 :
USE `webDevelopment`;

CREATE TABLE `tools` (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    tool VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

-- Exercice 3 :
USE `webDevelopment`;

CREATE TABLE frameworks (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

-- Exercice 4 :
USE `webDevelopment`;

CREATE TABLE librairies (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    librairy VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

-- Exercice 5 : 
USE `webDevelopment`;

CREATE TABLE ide (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    ideName VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

-- Exercice 6 :
-- IF NOT EXISTS : comme pour les bases de données, crée si elle n'existe pas déjà, une nouvelle table
CREATE TABLE IF NOT EXISTS frameworks (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

-- Exercice 7 :
-- Supprime la table si elle existe
DROP TABLE IF EXISTS tools;

-- Exercice 8 :
DROP TABLE librairies;

-- Exercice 9 :
DROP TABLE ide;

-- TP :
-- Crée la base de donnée, en utf-8
CREATE DATABASE codex CHARACTER SET 'utf8';
-- Déplace dans la base de données
USE codex;
-- Crée la table client
CREATE TABLE clients (
-- noms des différentes colonnes, avec leurs types, si elles doivent être stockées et leurs attributs (ici seulement pour l'id : auto-incrémentation et clé primaire)
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    lastName VARCHAR(40) NOT NULL,
    firstName VARCHAR(40) NOT NULL,
    birthDate DATE NOT NULL,
    adress VARCHAR(100) NOT NULL,
    firstPhoneNumber INT NOT NULL,
    secondPhoneNumber INT NOT NULL,
    mail VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);