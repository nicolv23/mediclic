-- Création de la base de donnée
CREATE SCHEMA `mediclic` ;

-- Ajout de la table patients
CREATE TABLE `mediclic`.`patients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `assurance` VARCHAR(45) NULL,
  `naissance` VARCHAR(45) NULL,
  `sexe` VARCHAR(45) NULL,
  `mail` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- Ajout de la table medecins
CREATE TABLE `mediclic`.`medecins` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  `prenom` VARCHAR(45) NULL,
  `specialite` VARCHAR(45) NULL,
  `numpro` VARCHAR(45) NULL,
  `coordonnes` VARCHAR(45) NULL,
  `facturation` DOUBLE NULL,
  `lieuTravail` VARCHAR(45) NOT NULL,
  `sexe` VARCHAR(45) NULL,
  `mail` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- Ajout de la table rdv
CREATE TABLE `mediclic`.`rdv` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nompatient` VARCHAR(45) NULL,
  `nommedecin` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  `adresse` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
-- Ajout de la table administrateurs
CREATE TABLE `mediclic`.`administrateurs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  `prenom` VARCHAR(45) NULL,
  `mail` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
-- Ajout de la table cliniques
CREATE TABLE `mediclic`.`cliniques` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  `coordonnees` VARCHAR(45) NULL,
  `services` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));