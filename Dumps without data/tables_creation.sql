-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema car_hire
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_hire
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_hire` ;
USE `car_hire` ;

-- -----------------------------------------------------
-- Table `car_hire`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NULL,
  `password` VARCHAR(32) NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`car_class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`car_class` (
  `car_class_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_class_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`brand`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`brand` (
  `brand_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`brand_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`model` (
  `model_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `year_of_issue` YEAR NOT NULL,
  `brand_id` INT NOT NULL,
  PRIMARY KEY (`model_id`),
  INDEX `fk_model_brand1_idx` (`brand_id` ASC),
  CONSTRAINT `fk_model_brand1`
    FOREIGN KEY (`brand_id`)
    REFERENCES `car_hire`.`brand` (`brand_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`car` (
  `car_id` INT NOT NULL AUTO_INCREMENT,
  `model_id` INT NOT NULL,
  `seats` TINYINT(2) UNSIGNED NULL,
  `doors` TINYINT(2) UNSIGNED NULL,
  `air_conditioning` TINYINT(1) NULL,
  `automatic_gearbox` TINYINT(1) NOT NULL,
  `rental_value_for_day` DECIMAL(8,2) UNSIGNED NOT NULL,
  `rental_value_for_hour` DECIMAL(8,2) UNSIGNED NOT NULL,
  `color` VARCHAR(45) NULL,
  `fuel_consumption` DECIMAL(2,1) UNSIGNED NULL,
  `engine_power` INT UNSIGNED NULL,
  `car_class_id` INT NOT NULL,
  PRIMARY KEY (`car_id`),
  INDEX `fk_car_car_class1_idx` (`car_class_id` ASC),
  INDEX `fk_car_model1_idx` (`model_id` ASC),
  CONSTRAINT `fk_car_car_class1`
    FOREIGN KEY (`car_class_id`)
    REFERENCES `car_hire`.`car_class` (`car_class_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_model1`
    FOREIGN KEY (`model_id`)
    REFERENCES `car_hire`.`model` (`model_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NOT NULL,
  `building` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `car_id` INT NOT NULL,
  `date_received` TIMESTAMP(0) NOT NULL,
  `return_date` TIMESTAMP(0) NOT NULL,
  `address_id` INT NOT NULL,
  `total_cost` DECIMAL(8,2) UNSIGNED NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_order_user1_idx` (`user_id` ASC),
  INDEX `fk_order_car1_idx` (`car_id` ASC),
  INDEX `fk_order_address1_idx` (`address_id` ASC),
  CONSTRAINT `fk_order_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `car_hire`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_car1`
    FOREIGN KEY (`car_id`)
    REFERENCES `car_hire`.`car` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_address1`
    FOREIGN KEY (`address_id`)
    REFERENCES `car_hire`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`accident`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`accident` (
  `accident_id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NOT NULL,
  `material_damage` DECIMAL(8,2) UNSIGNED NULL,
  `date` DATE NOT NULL,
  `order_id` INT NOT NULL,
  PRIMARY KEY (`accident_id`),
  INDEX `fk_accident_order1_idx` (`order_id` ASC),
  CONSTRAINT `fk_accident_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `car_hire`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`permission` (
  `permission_id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`permission_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`role_perm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`role_perm` (
  `role_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`),
  INDEX `fk_role_has_permission_permission1_idx` (`permission_id` ASC),
  INDEX `fk_role_has_permission_role_idx` (`role_id` ASC),
  CONSTRAINT `fk_role_has_permission_role`
    FOREIGN KEY (`role_id`)
    REFERENCES `car_hire`.`role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_role_has_permission_permission1`
    FOREIGN KEY (`permission_id`)
    REFERENCES `car_hire`.`permission` (`permission_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_hire`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_hire`.`user_role` (
  `user_id` INT NOT NULL,
  `role_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `fk_user_has_role_role1_idx` (`role_id` ASC),
  INDEX `fk_user_has_role_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_role_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `car_hire`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_role_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `car_hire`.`role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
