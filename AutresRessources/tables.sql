-- Generated by Mocodo 4.1.1

CREATE TABLE Client (
  PRIMARY KEY (id_Client),
  id_Client    INT NOT NULL AUTO_INCREMENT,
  nom          VARCHAR(42),
  prenom       VARCHAR(42),
  email        VARCHAR(42),
  mot_De_Passe VARCHAR(42),
  addresse     VARCHAR(42),
  code_Postal  CHAR(5),
  ville        VARCHAR(42)
);

CREATE TABLE Commande (
  PRIMARY KEY (id_Commande),
  id_Commande    INT NOT NULL AUTO_INCREMENT,
  date           DATE,
  prix_Total_TTC DECIMAL(10,2),
  id_Client      INT NOT NULL
);

CREATE TABLE Produit (
  PRIMARY KEY (id_Produit),
  id_Produit        INT NOT NULL AUTO_INCREMENT,
  libelle           VARCHAR(42),
  prix_Unitaire_TTC DECIMAL(10,2),
  Quantite_Stock    INT
);

CREATE TABLE Acheter (
  PRIMARY KEY (id_Produit, id_Commande),
  id_Produit  INT NOT NULL,
  id_Commande INT NOT NULL,
  Quantite    INT
);

ALTER TABLE Acheter ADD FOREIGN KEY (id_Commande) REFERENCES Commande (id_Commande);
ALTER TABLE Acheter ADD FOREIGN KEY (id_Produit) REFERENCES Produit (id_Produit);

ALTER TABLE Commande ADD FOREIGN KEY (id_Client) REFERENCES Client (id_Client);