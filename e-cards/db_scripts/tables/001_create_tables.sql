-- Create tbl_collections table
CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

-- Create tbl_types table
CREATE TABLE tbl_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    typeName VARCHAR(20) NOT NULL
);

-- Create tbl_stages table
CREATE TABLE tbl_stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL
);

-- Create tbl_cards table
CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hp INT,
    name VARCHAR(50) NOT NULL,
    typeID INT, -- Foreign key to tbl_types
    stageID INT, -- Foreign key to tbl_stages
    info TEXT,
    attack VARCHAR(50),
    damage VARCHAR(20),
    weak VARCHAR(20),
    ressis VARCHAR(20),
    retreat INT,
    cardNumberInCollection INT NOT NULL,
    collectionID INT, -- Foreign key to tbl_collections
    FOREIGN KEY (typeID) REFERENCES tbl_types(id),
    FOREIGN KEY (stageID) REFERENCES tbl_stages(id),
    FOREIGN KEY (collectionID) REFERENCES tbl_collections(id)
);