  -- Création de la table utilisateur

      CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(150),
    date_inscription DATE
   ) COMMENT='Table des utilisateurs du blog';

   -- Ajout d’un index sur email

ALTER TABLE utilisateur
ADD INDEX idx_email (email);

   -- Création de la table article

  CREATE TABLE article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT,
    date_pub DATE,
    utilisateur_id INT,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
  ) COMMENT='Table des articles du blog';

-- Création de la table commentaire
CREATE TABLE commentaire (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT,
    date_pub DATE,
    article_id INT,
    utilisateur_id INT,
    FOREIGN KEY (article_id) REFERENCES article(id),
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
) COMMENT='Table des commentaires des articles';
