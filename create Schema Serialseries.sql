-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema SerialSeries
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SerialSeries
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SerialSeries` DEFAULT CHARACTER SET utf8 ;
USE `SerialSeries` ;

-- -----------------------------------------------------
-- Table `SerialSeries`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SerialSeries`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SerialSeries`.`serie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SerialSeries`.`serie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titel` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SerialSeries`.`season`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SerialSeries`.`season` (
  `serie_id` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `seasonNr` INT NOT NULL,
  `titel` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_season_serie1_idx` (`serie_id` ASC),
  CONSTRAINT `fk_season_serie1`
    FOREIGN KEY (`serie_id`)
    REFERENCES `SerialSeries`.`serie` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SerialSeries`.`episode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SerialSeries`.`episode` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `season_id` INT NOT NULL,
  `episodeNr` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_episode_season1_idx` (`season_id` ASC),
  CONSTRAINT `fk_episode_season1`
    FOREIGN KEY (`season_id`)
    REFERENCES `SerialSeries`.`season` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SerialSeries`.`user_has_seen_episode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SerialSeries`.`user_has_seen_episode` (
  `user_id` INT NOT NULL,
  `episode_id` INT NOT NULL,
  `seen` TINYINT(1) NULL,
  PRIMARY KEY (`user_id`, `episode_id`),
  INDEX `fk_episode_has_user_user1_idx` (`user_id` ASC),
  INDEX `fk_episode_has_user_episode_idx` (`episode_id` ASC),
  CONSTRAINT `fk_episode_has_user_episode`
    FOREIGN KEY (`episode_id`)
    REFERENCES `SerialSeries`.`episode` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_episode_has_user_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `SerialSeries`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
