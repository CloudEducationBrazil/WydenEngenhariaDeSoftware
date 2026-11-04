-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema railway
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema railway
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `railway` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `railway` ;

-- -----------------------------------------------------
-- Table `railway`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `railway`.`alunos` (
  `id_aluno` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `sexo` CHAR(1) NULL,
  PRIMARY KEY (`id_aluno`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `railway`.`disciplinas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `railway`.`disciplinas` (
  `id_disciplina` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_disciplina`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `railway`.`matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `railway`.`matriculas` (
  `id_aluno` INT NOT NULL,
  `id_disciplina` INT NOT NULL,
  `data_matricula` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_aluno`, `id_disciplina`),
  INDEX `fk_disciplina` (`id_disciplina` ASC) VISIBLE,
  CONSTRAINT `fk_aluno`
    FOREIGN KEY (`id_aluno`)
    REFERENCES `railway`.`alunos` (`id_aluno`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_disciplina`
    FOREIGN KEY (`id_disciplina`)
    REFERENCES `railway`.`disciplinas` (`id_disciplina`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
