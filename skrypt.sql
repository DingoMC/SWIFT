-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`uzytkownik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`uzytkownik` (
  `iduzytkownik` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `imie` VARCHAR(45) NOT NULL,
  ` naziwsko` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iduzytkownik`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`klient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`klient` (
  `idklient` INT NOT NULL,
  `iduzytkownik` INT NOT NULL,
  PRIMARY KEY (`idklient`),
  INDEX `fk_klient_uzytkownik1_idx` (`iduzytkownik` ASC) VISIBLE,
  CONSTRAINT `fk_klient_uzytkownik1`
    FOREIGN KEY (`iduzytkownik`)
    REFERENCES `mydb`.`uzytkownik` (`iduzytkownik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stanowisko`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stanowisko` (
  `idstanowisko` INT NOT NULL,
  `nazwa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstanowisko`),
  UNIQUE INDEX `nazwa_UNIQUE` (`nazwa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stan_zamowienia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stan_zamowienia` (
  `idstan_zamowienia` INT NOT NULL,
  `nazwa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstan_zamowienia`),
  UNIQUE INDEX `nazwa_UNIQUE` (`nazwa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`zamowienie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`zamowienie` (
  `idzamowienie` INT NOT NULL,
  `stan_zamowienia` INT NOT NULL,
  `klient` INT NOT NULL,
  `adres_bazowy` VARCHAR(45) NOT NULL,
  `adres_docelowy` VARCHAR(45) NOT NULL,
  `masa` DECIMAL NOT NULL,
  `data_zlozenia` DATE NOT NULL,
  `data_realizacji` DATE NULL,
  `cena` DECIMAL NOT NULL,
  PRIMARY KEY (`idzamowienie`),
  INDEX `fk_zamowienie_stan_zamowienia1_idx` (`stan_zamowienia` ASC) VISIBLE,
  INDEX `fk_zamowienie_klient1_idx` (`klient` ASC) VISIBLE,
  CONSTRAINT `fk_zamowienie_stan_zamowienia1`
    FOREIGN KEY (`stan_zamowienia`)
    REFERENCES `mydb`.`stan_zamowienia` (`idstan_zamowienia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zamowienie_klient1`
    FOREIGN KEY (`klient`)
    REFERENCES `mydb`.`klient` (`idklient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pracownik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pracownik` (
  `idpracownik` INT NOT NULL,
  `stanowisko` INT NOT NULL,
  `iduzytkownik` INT NOT NULL,
  `idzamowienie` INT NOT NULL,
  PRIMARY KEY (`idpracownik`),
  INDEX `fk_pracownik_stanowisko_idx` (`stanowisko` ASC) VISIBLE,
  INDEX `fk_pracownik_uzytkownik1_idx` (`iduzytkownik` ASC) VISIBLE,
  INDEX `fk_pracownik_zamowienie1_idx` (`idzamowienie` ASC) VISIBLE,
  CONSTRAINT `fk_pracownik_stanowisko`
    FOREIGN KEY (`stanowisko`)
    REFERENCES `mydb`.`stanowisko` (`idstanowisko`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pracownik_uzytkownik1`
    FOREIGN KEY (`iduzytkownik`)
    REFERENCES `mydb`.`uzytkownik` (`iduzytkownik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pracownik_zamowienie1`
    FOREIGN KEY (`idzamowienie`)
    REFERENCES `mydb`.`zamowienie` (`idzamowienie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dostepnosc_pojazdu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dostepnosc_pojazdu` (
  `iddostepnosc_pojazdu` INT NOT NULL,
  `nazwa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddostepnosc_pojazdu`),
  UNIQUE INDEX `nazwa_UNIQUE` (`nazwa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stan_techniczny`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stan_techniczny` (
  `idstan_techniczny` INT NOT NULL,
  `nazwa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstan_techniczny`),
  UNIQUE INDEX `nazwa_UNIQUE` (`nazwa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pojazd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pojazd` (
  `idpojazd` INT NOT NULL,
  `max_ladunek` DECIMAL NOT NULL,
  `dostepnosc` INT NOT NULL,
  `stan_techniczny` INT NOT NULL,
  `idzamowienie` INT NOT NULL,
  PRIMARY KEY (`idpojazd`),
  INDEX `fk_pojazd_dostepnosc_pojazdu1_idx` (`dostepnosc` ASC) VISIBLE,
  INDEX `fk_pojazd_stan_techniczny1_idx` (`stan_techniczny` ASC) VISIBLE,
  INDEX `fk_pojazd_zamowienie1_idx` (`idzamowienie` ASC) VISIBLE,
  CONSTRAINT `fk_pojazd_dostepnosc_pojazdu1`
    FOREIGN KEY (`dostepnosc`)
    REFERENCES `mydb`.`dostepnosc_pojazdu` (`iddostepnosc_pojazdu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pojazd_stan_techniczny1`
    FOREIGN KEY (`stan_techniczny`)
    REFERENCES `mydb`.`stan_techniczny` (`idstan_techniczny`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pojazd_zamowienie1`
    FOREIGN KEY (`idzamowienie`)
    REFERENCES `mydb`.`zamowienie` (`idzamowienie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`harmonogram`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`harmonogram` (
  `idharmonogram` INT NOT NULL,
  `data_od` DATE NOT NULL,
  `data_do` DATE NOT NULL,
  `pracownik` INT NOT NULL,
  PRIMARY KEY (`idharmonogram`),
  INDEX `fk_harmonogram_pracownik1_idx` (`pracownik` ASC) VISIBLE,
  CONSTRAINT `fk_harmonogram_pracownik1`
    FOREIGN KEY (`pracownik`)
    REFERENCES `mydb`.`pracownik` (`idpracownik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`faktura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`faktura` (
  `idfaktura` INT NOT NULL,
  `idzamowienie` INT NOT NULL,
  PRIMARY KEY (`idfaktura`),
  INDEX `fk_faktura_zamowienie1_idx` (`idzamowienie` ASC) VISIBLE,
  CONSTRAINT `fk_faktura_zamowienie1`
    FOREIGN KEY (`idzamowienie`)
    REFERENCES `mydb`.`zamowienie` (`idzamowienie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
