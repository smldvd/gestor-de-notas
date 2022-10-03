-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Curso` (
  `id_curso` INT NOT NULL,
  `nombre_curso` VARCHAR(45) NOT NULL,
  `nota_curso2` FLOAT NULL DEFAULT 0,
  `nota_curso3` FLOAT NULL DEFAULT 0,
  `nota_curso1` FLOAT NULL DEFAULT 0,
  `nota_curso4` FLOAT NULL DEFAULT 0,
  `nota_curso5` FLOAT NULL DEFAULT 0,
  `nota_curso6` FLOAT NULL DEFAULT 0,
  `nota_curso7` FLOAT NULL DEFAULT 0,
  `nota_curso8` FLOAT NULL DEFAULT 0,
  `nota_curso9` FLOAT NULL DEFAULT 0,
  `nota_curso10` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy1` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy2` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy3` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy4` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy5` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy6` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy7` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy8` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy9` FLOAT NULL DEFAULT 0,
  `porcentaje_nota1_copy10` FLOAT NULL DEFAULT 0,
  PRIMARY KEY (`id_curso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario_copy3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario_copy3` (
  `id_usuario` INT NOT NULL,
  `nombre_usuario` VARCHAR(45) NULL,
  `email_usuario` VARCHAR(45) NULL,
  `contraseña_usuario` VARCHAR(45) NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario_Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario_Curso` (
  `Usuario_copy3_id_usuario` INT NOT NULL,
  `Curso_id_curso` INT NOT NULL,
  PRIMARY KEY (`Usuario_copy3_id_usuario`, `Curso_id_curso`),
  INDEX `fk_Usuario_Curso_Curso1_idx` (`Curso_id_curso` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Curso_Usuario_copy3`
    FOREIGN KEY (`Usuario_copy3_id_usuario`)
    REFERENCES `mydb`.`Usuario_copy3` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Curso_Curso1`
    FOREIGN KEY (`Curso_id_curso`)
    REFERENCES `mydb`.`Curso` (`id_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
