/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author: Daniela
 * Created: 31/05/2021
 */
-- MySQL Script generated by MySQL Workbench
-- Mon Jun  7 22:06:53 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ShalkeXII
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ShalkeXII
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ShalkeXII` DEFAULT CHARACTER SET utf8 ;
USE `ShalkeXII` ;

-- -----------------------------------------------------
-- Table `ShalkeXII`.`Nucleo_Atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Nucleo_Atendimento` (
  `idNucleo_Atendimento` INT NOT NULL AUTO_INCREMENT,
  `sede` VARCHAR(120) NOT NULL,
  `telefone_sede` VARCHAR(90) NULL,
  `email_email` VARCHAR(120) NULL,
  `endereco_sede` VARCHAR(120) NOT NULL,
  `cidade_sede` VARCHAR(90) NULL,
  `cep_sede` VARCHAR(90) NULL,
  `uf_sede` VARCHAR(45) NULL,
  PRIMARY KEY (`idNucleo_Atendimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Nucleo_Treinamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Nucleo_Treinamento` (
  `idNucleo_Treinamento` INT NOT NULL AUTO_INCREMENT,
  `nome_responsavel` VARCHAR(120) NOT NULL,
  `telefone_responsavel` VARCHAR(60) NULL,
  `local` VARCHAR(120) NOT NULL,
  `cidade` VARCHAR(60) NULL,
  `cep` VARCHAR(90) NULL,
  `telefone_local` VARCHAR(60) NULL,
  `uf` VARCHAR(45) NULL,
  `Nucleo_Atendimento_idNucleo_Atendimento` INT NOT NULL,
  PRIMARY KEY (`idNucleo_Treinamento`),
  INDEX `fk_Nucleo_Treinamento_Nucleo_Atendimento1_idx` (`Nucleo_Atendimento_idNucleo_Atendimento` ASC),
  CONSTRAINT `fk_Nucleo_Treinamento_Nucleo_Atendimento1`
    FOREIGN KEY (`Nucleo_Atendimento_idNucleo_Atendimento`)
    REFERENCES `ShalkeXII`.`Nucleo_Atendimento` (`idNucleo_Atendimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Treino_semanal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Treino_semanal` (
  `idTreino_semanal` INT NOT NULL AUTO_INCREMENT,
  `semana` VARCHAR(100) NULL,
  PRIMARY KEY (`idTreino_semanal`))
ENGINE = InnoDB;

USE shalkexii;

INSERT INTO treino_semanal 
(`semana`) VALUES (' Segunda-Feira - Quarta-Feira ');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Segunda_feira - Sexta-Feira ');

INSERT INTO treino_semanal 
(`semana`) VALUES (' Terça-Feira - Quinta-feira ');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Terça-feira – Sábado ');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Quarta-feira – Sexta-feira');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Quinta-feira – Sábado ');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Segunda-feira – Quarta-feira – Sexta-feira ');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Terça-feira – Quinta-feira – Sábado ');

INSERT INTO treino_semanal 
(`semana`) VALUES ('Sábado  ');      


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `idade` VARCHAR(100) NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;

USE shalkexii;

INSERT INTO categoria (idade)
value ('Aluno de 6 e 7 anos');
INSERT INTO categoria (idade)
value ('Aluno de 8 e 9 anos');
INSERT INTO categoria (idade)
value ('Aluno de 10 e 11 anos');
INSERT INTO categoria (idade)
value ('Aluno de 12 e 13 anos');
INSERT INTO categoria (idade)
value ('Aluno de 14 e 15 anos');
INSERT INTO categoria (idade)
value ('Aluno de 16 e 17 anos');
INSERT INTO categoria (idade)
value ('Aluno de 18, 19 e 20 anos');
INSERT INTO categoria (idade)
value ('Adulto de 21 anos em diante');
INSERT INTO categoria (idade)
value ('Veterano a partir dos 35 anos em diante');



-- -----------------------------------------------------
-- Table `ShalkeXII`.`Horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Horario` (
  `idHorario` INT NOT NULL AUTO_INCREMENT,
  `hora` TIME NULL,
  PRIMARY KEY (`idHorario`))
ENGINE = InnoDB;

USE shalkexii;

INSERT INTO horario (hora)
value ('07:00:00');
INSERT INTO horario (hora)
value ('08:00:00');
INSERT INTO horario (hora)
value ('09:00:0');
INSERT INTO horario (hora)
value ('10:00:00');
INSERT INTO horario (hora)
value ('11:00:00');
INSERT INTO horario (hora)
value ('14:00:00');
INSERT INTO horario (hora)
value ('15:00:00');
INSERT INTO horario (hora)
value ('16:00:00');
INSERT INTO horario (hora)
value ('17:00:00');
INSERT INTO horario (hora)
value ('18:00:00');
INSERT INTO horario (hora)
value ('19:00:00');
INSERT INTO horario (hora)
value ('20:00:00');
INSERT INTO horario (hora)
value ('21:00:00');
INSERT INTO horario (hora)
value ('22:00:00');


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Modalidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Modalidade` (
  `idModalidade` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NULL,
  PRIMARY KEY (`idModalidade`))
ENGINE = InnoDB;

use shalkexii;

INSERT INTO  modalidade
(descricao )
VALUES
('Futebol');


INSERT INTO  modalidade
(descricao )
VALUES
('FutSal');



INSERT INTO  modalidade
(descricao )
VALUES
('Fut7');

-- -----------------------------------------------------
-- Table `ShalkeXII`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Aluno` (
  `idAluno` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(120) NOT NULL,
  `cpf` VARCHAR(100) NOT NULL,
  `rg` VARCHAR(90) NULL,
  `datanascimento` DATE NULL,
  `sexo` VARCHAR(45) NULL,
  `raca` VARCHAR(45) NULL,
  `email` VARCHAR(120) NULL,
  `website` VARCHAR(100) NULL,
  `endereco` VARCHAR(120) NOT NULL,
  `cidade` VARCHAR(60) NULL,
  `cep` VARCHAR(90) NULL,
  `uf` VARCHAR(45) NULL,
  `telefone` VARCHAR(60) NULL,
  `nome_escola` VARCHAR(120) NOT NULL,
  `endereco_escola` VARCHAR(120) NULL,
  `cidade_escola` VARCHAR(45) NULL,
  `cep_escola` VARCHAR(45) NULL,
  `uf_escola` VARCHAR(45) NULL,
  `turno` VARCHAR(90) NULL,
  `grau` VARCHAR(90) NULL,
  `datainclusao` DATE NULL,
  `desligamento` DATE NULL,
  `peso` VARCHAR(45) NULL,
  `altura` VARCHAR(45) NULL,
  `camisa` VARCHAR(45) NULL,
  `short` VARCHAR(45) NULL,
  `calcado` VARCHAR(45) NULL,
  `grupo_sanguineo` VARCHAR(60) NULL,
  `medicacao` VARCHAR(60) NULL,
  `mae` VARCHAR(120) NULL,
  `pai` VARCHAR(120) NULL,
  `responsavel` VARCHAR(120) NULL,
  `telefone_mae` VARCHAR(60) NULL,
  `telefone_pai` VARCHAR(60) NULL,
  `telefone_responsavel` VARCHAR(60) NULL,
  `parentesco_responsavel` VARCHAR(60) NULL,
  `profissao_mae` VARCHAR(100) NULL,
  `profissao_pai` VARCHAR(100) NULL,
  `profissao_responsavel` VARCHAR(100) NULL,
  `termo` VARCHAR(2000) NULL,
  `Nucleo_Atendimento_idNucleo_Atendimento` INT NOT NULL,
  `Nucleo_Treinamento_idNucleo_Treinamento` INT NOT NULL,
  `Treino_semanal_idTreino_semanal` INT NOT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  `Horario_idHorario` INT NOT NULL,
  `Modalidade_idModalidade` INT NOT NULL,
  PRIMARY KEY (`idAluno`),
  INDEX `fk_Aluno_Nucleo_Atendimento1_idx` (`Nucleo_Atendimento_idNucleo_Atendimento` ASC),
  INDEX `fk_Aluno_Nucleo_Treinamento1_idx` (`Nucleo_Treinamento_idNucleo_Treinamento` ASC),
  INDEX `fk_Aluno_Treino_semanal1_idx` (`Treino_semanal_idTreino_semanal` ASC),
  INDEX `fk_Aluno_Categoria1_idx` (`Categoria_idCategoria` ASC),
  INDEX `fk_Aluno_Horario1_idx` (`Horario_idHorario` ASC),
  INDEX `fk_Aluno_Modalidade1_idx` (`Modalidade_idModalidade` ASC),
  CONSTRAINT `fk_Aluno_Nucleo_Atendimento1`
    FOREIGN KEY (`Nucleo_Atendimento_idNucleo_Atendimento`)
    REFERENCES `ShalkeXII`.`Nucleo_Atendimento` (`idNucleo_Atendimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Aluno_Nucleo_Treinamento1`
    FOREIGN KEY (`Nucleo_Treinamento_idNucleo_Treinamento`)
    REFERENCES `ShalkeXII`.`Nucleo_Treinamento` (`idNucleo_Treinamento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Aluno_Treino_semanal1`
    FOREIGN KEY (`Treino_semanal_idTreino_semanal`)
    REFERENCES `ShalkeXII`.`Treino_semanal` (`idTreino_semanal`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Aluno_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `ShalkeXII`.`Categoria` (`idCategoria`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Aluno_Horario1`
    FOREIGN KEY (`Horario_idHorario`)
    REFERENCES `ShalkeXII`.`Horario` (`idHorario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Aluno_Modalidade1`
    FOREIGN KEY (`Modalidade_idModalidade`)
    REFERENCES `ShalkeXII`.`Modalidade` (`idModalidade`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Familia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Familia` (
  `idFamilia` INT NOT NULL AUTO_INCREMENT,
  `nome_chefe_familia` VARCHAR(120) NOT NULL,
  `sexo` VARCHAR(45) NULL,
  `cpf` VARCHAR(90) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `cidade` VARCHAR(90) NULL,
  `cep` VARCHAR(90) NULL,
  `uf` VARCHAR(45) NULL,
  `email` VARCHAR(120) NULL,
  `telefone` VARCHAR(90) NULL,
  `nucleo_familiar` VARCHAR(90) NULL,
  `moradia` VARCHAR(60) NULL,
  `Nucleo_Atendimento_idNucleo_Atendimento` INT NOT NULL,
  PRIMARY KEY (`idFamilia`),
  INDEX `fk_Familia_Nucleo_Atendimento1_idx` (`Nucleo_Atendimento_idNucleo_Atendimento` ASC),
  CONSTRAINT `fk_Familia_Nucleo_Atendimento1`
    FOREIGN KEY (`Nucleo_Atendimento_idNucleo_Atendimento`)
    REFERENCES `ShalkeXII`.`Nucleo_Atendimento` (`idNucleo_Atendimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Empresas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Empresas` (
  `idEmpresas` INT NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(100) NOT NULL,
  `razao_social` VARCHAR(255) NULL,
  `nome_fantasia` VARCHAR(255) NULL,
  `endereco` VARCHAR(120) NOT NULL,
  `cidade` VARCHAR(60) NULL,
  `cep` VARCHAR(90) NULL,
  `uf` VARCHAR(45) NULL,
  `segmento` VARCHAR(90) NULL,
  `tipo_empresa` VARCHAR(120) NULL,
  `email` VARCHAR(120) NULL,
  `website` VARCHAR(100) NULL,
  `telefone_local` VARCHAR(90) NULL,
  `nome_empresario` VARCHAR(120) NOT NULL,
  `telefone_pessoal` VARCHAR(90) NULL,
  `Nucleo_Atendimento_idNucleo_Atendimento` INT NOT NULL,
  PRIMARY KEY (`idEmpresas`),
  INDEX `fk_Empresas_Nucleo_Atendimento1_idx` (`Nucleo_Atendimento_idNucleo_Atendimento` ASC),
  CONSTRAINT `fk_Empresas_Nucleo_Atendimento1`
    FOREIGN KEY (`Nucleo_Atendimento_idNucleo_Atendimento`)
    REFERENCES `ShalkeXII`.`Nucleo_Atendimento` (`idNucleo_Atendimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Perfil` (
  `idPerfil` INT NOT NULL AUTO_INCREMENT,
  `perfil` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`idPerfil`))
ENGINE = InnoDB;

USE shalkexii;

INSERT INTO perfil 
(perfil) 
VALUES
('Administrador');

INSERT INTO perfil 
(perfil) 
VALUES
('Colaborador');

INSERT INTO perfil 
(perfil) 
VALUES
('Colaborador Individual');


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Login` (
  `idLogin` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(120) NOT NULL,
  `login` VARCHAR(45) NULL,
  `email` VARCHAR(100) NULL,
  `senha` VARCHAR(120) NULL,
  `Perfil_idPerfil` INT NOT NULL,
  PRIMARY KEY (`idLogin`),
  INDEX `fk_Login_Perfil1_idx` (`Perfil_idPerfil` ASC),
  CONSTRAINT `fk_Login_Perfil1`
    FOREIGN KEY (`Perfil_idPerfil`)
    REFERENCES `ShalkeXII`.`Perfil` (`idPerfil`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShalkeXII`.`Colaborador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShalkeXII`.`Colaborador` (
  `idColaborador` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(120) NULL,
  `cpf` VARCHAR(100) NULL,
  `rg` VARCHAR(90) NULL,
  `datanascimento` DATE NULL,
  `sexo` VARCHAR(45) NULL,
  `raca` VARCHAR(45) NULL,
  `email` VARCHAR(100) NULL,
  `website` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(120) NULL,
  `cidade` VARCHAR(90) NULL,
  `cep` VARCHAR(90) NULL,
  `uf` VARCHAR(45) NULL,
  `telefone` VARCHAR(90) NULL,
  `profissao` VARCHAR(100) NULL,
  `Perfil_idPerfil` INT NOT NULL,
  `Nucleo_Atendimento_idNucleo_Atendimento` INT NOT NULL,
  PRIMARY KEY (`idColaborador`),
  INDEX `fk_Colaborador_Perfil1_idx` (`Perfil_idPerfil` ASC),
  INDEX `fk_Colaborador_Nucleo_Atendimento1_idx` (`Nucleo_Atendimento_idNucleo_Atendimento` ASC),
  CONSTRAINT `fk_Colaborador_Perfil1`
    FOREIGN KEY (`Perfil_idPerfil`)
    REFERENCES `ShalkeXII`.`Perfil` (`idPerfil`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Colaborador_Nucleo_Atendimento1`
    FOREIGN KEY (`Nucleo_Atendimento_idNucleo_Atendimento`)
    REFERENCES `ShalkeXII`.`Nucleo_Atendimento` (`idNucleo_Atendimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;



USE shalkexii;

INSERT INTO login 
(nome,login,email,senha,Perfil_idPerfil) 
VALUES
('Administrador','admin','administrar@gmail.com','21232f297a57a5a743894a0e4a801fc3',1);

INSERT INTO login
(nome,login,email,senha,Perfil_idPerfil) 
VALUES
('Farion Souza','farion','shalke.xii@gmail.com','e590123262820b1acbf86092a3d8cbf5',1);

INSERT INTO login
(nome,login,email,senha,Perfil_idPerfil) 
VALUES
('André Dias','andre','prof.andredias.etb@gmail.com','19eb8ef8ac25475acf7fdc8288f274a1',1);




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- -----------------------------------------------------
--login e senha do Administrador principal
--Login admin
--SENHA admin
-- -----------------------------------------------------

-- -----------------------------------------------------
--Dados do Adiministrador 
-- Nome: Farion Souza
--Login: farion
--Email:shalke.xii@gmail.com
--senha:  #Shalke2008#
--Perfil: Administrador
-- -----------------------------------------------------

-- -----------------------------------------------------
--Dados do Segundo Administrador
-- Nome: André Dias
--Login: andre
--Email: prof.andredias.etb@gmail.com
--senha:  andredias01
--Perfil: Administrador
-- -----------------------------------------------------
