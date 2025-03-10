-- MySQL Script generated by MySQL Workbench
-- Fri Sep  2 05:17:28 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema commercedb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema commercedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `commercedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `commercedb` ;

-- -----------------------------------------------------
-- Table `commercedb`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `commercedb`.`fornecedor` (
  `id` INT NOT NULL,
  `cnpj` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(250) NOT NULL,
  `email` VARCHAR(120) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idfornecedor_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `commercedb`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `commercedb`.`categoria` (
  `id` INT NOT NULL,
  `nome` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `commercedb`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `commercedb`.`produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `categoria` INT NULL,
  `fornecedor` INT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `foto` LONGTEXT NULL DEFAULT NULL,
  `formatoImagem` VARCHAR(45) NULL DEFAULT NULL,
  `dataCriacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `commercedb`.`unidadeMedida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `commercedb`.`unidadeMedida` (
  `id` INT NOT NULL,
  `descricao` VARCHAR(65) NOT NULL,
  `sigla` VARCHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `commercedb`.`categoria`
-- -----------------------------------------------------
START TRANSACTION;
USE `commercedb`;
INSERT INTO `commercedb`.`categoria` (`id`, `nome`) VALUES (1, 'Móveis');
INSERT INTO `commercedb`.`categoria` (`id`, `nome`) VALUES (2, 'Eletrônicos');
INSERT INTO `commercedb`.`categoria` (`id`, `nome`) VALUES (3, 'Relógios');
INSERT INTO `commercedb`.`categoria` (`id`, `nome`) VALUES (4, 'Celulares');
INSERT INTO `commercedb`.`categoria` (`id`, `nome`) VALUES (5, 'Artigos Esportivos');

COMMIT;


-- -----------------------------------------------------
-- Data for table `commercedb`.`unidadeMedida`
-- -----------------------------------------------------
START TRANSACTION;
USE `commercedb`;
INSERT INTO `commercedb`.`unidadeMedida` (`id`, `descricao`, `sigla`) VALUES (1, 'Quilogramas', 'KG');
INSERT INTO `commercedb`.`unidadeMedida` (`id`, `descricao`, `sigla`) VALUES (2, 'Metros', 'M');
INSERT INTO `commercedb`.`unidadeMedida` (`id`, `descricao`, `sigla`) VALUES (3, 'Centimetros', 'CM');
INSERT INTO `commercedb`.`unidadeMedida` (`id`, `descricao`, `sigla`) VALUES (4, 'Peças', 'PC');
INSERT INTO `commercedb`.`unidadeMedida` (`id`, `descricao`, `sigla`) VALUES (5, 'Unidade', 'UN');

COMMIT;

