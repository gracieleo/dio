-- Seed data for tbl_collections
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed data for tbl_types
INSERT INTO tbl_types (typeName)
VALUES
('Water'),
('Fire'),
('Grass'),
('Electric'),
('Psychic');

-- Seed data for tbl_stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed data for tbl_cards
INSERT INTO tbl_cards (hp, name, typeID, stageID, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collectionID)
VALUES
(60, 'Bulbasaur', 3, 1, 'A strange seed was planted on its back at birth.', 'Vine Whip', '20', 'Fire', 'Water', 1, 1, 1),
(80, 'Charmeleon', 2, 2, 'Evolves from Charmander.', 'Flamethrower', '50', 'Water', 'Grass', 1, 24, 1),
(100, 'Raichu', 4, 3, 'Evolves from Pikachu. Stores electricity in its cheeks.', 'Thunderbolt', '90', 'Fighting', 'Steel', 2, 26, 1),
(50, 'Jigglypuff', 5, 1, 'It captivates foes with its melodic voice.', 'Sing', '0', 'Steel', 'Fighting', 1, 15, 2),
(70, 'Kabuto', 1, 2, 'A prehistoric Pokémon that is thought to have been aquatic.', 'Scratch', '30', 'Grass', 'Water', 1, 37, 3);