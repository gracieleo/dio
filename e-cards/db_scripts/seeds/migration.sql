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
(70, 'Kabuto', 1, 2, 'A prehistoric PokÃ©mon that is thought to have been aquatic.', 'Scratch', '30', 'Grass', 'Water', 1, 37, 3);
GO
INSERT INTO tbl_cards (hp, name, typeID, stageID, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collectionID)
VALUES
(60, 'Squirtle', 1, 1, 'A tiny turtle PokÃ©mon with a tough shell.', 'Water Gun', '20', 'Electric', 'Fire', 1, 7, 1),
(80, 'Wartortle', 1, 2, 'Evolves from Squirtle. Known for its fluffy tail.', 'Bubble Beam', '30', 'Electric', 'Fire', 1, 8, 1),
(150, 'Blastoise', 1, 3, 'Evolves from Wartortle. Has powerful water cannons.', 'Hydro Pump', '90', 'Electric', 'Fire', 3, 9, 1),
(70, 'Charmander', 2, 1, 'A fire PokÃ©mon with a flame on its tail.', 'Ember', '30', 'Water', 'Grass', 1, 4, 1),
(90, 'Charmeleon', 2, 2, 'Evolves from Charmander. Its tail burns brighter.', 'Flamethrower', '60', 'Water', 'Grass', 1, 5, 1),
(120, 'Charizard', 2, 3, 'Evolves from Charmeleon. Can breathe intense flames.', 'Fire Spin', '110', 'Water', 'Grass', 3, 6, 1),
(50, 'Pikachu', 4, 1, 'An electric mouse PokÃ©mon with red cheeks.', 'Thunder Shock', '20', 'Fighting', 'Steel', 1, 25, 1),
(90, 'Raichu', 4, 3, 'Evolves from Pikachu. Known for storing electricity.', 'Thunderbolt', '80', 'Fighting', 'Steel', 2, 26, 1),
(80, 'Oddish', 3, 1, 'It often hides in the ground during the day.', 'Absorb', '20', 'Fire', 'Water', 1, 43, 2),
(60, 'Zubat', 5, 1, 'It emits ultrasonic waves to fly in the dark.', 'Leech Life', '10', 'Electric', 'Psychic', 1, 41, 3),
(100, 'Golbat', 5, 2, 'Evolves from Zubat. Uses its large fangs to bite.', 'Wing Attack', '40', 'Electric', 'Psychic', 1, 42, 3),
(70, 'Eevee', 5, 1, 'Known for its adaptable evolution abilities.', 'Quick Attack', '30', 'Fighting', 'Psychic', 1, 133, 2),
(110, 'Vaporeon', 1, 3, 'Evolves from Eevee when exposed to a Water Stone.', 'Aqua Ring', '60', 'Electric', 'Fire', 2, 134, 2),
(90, 'Jolteon', 4, 3, 'Evolves from Eevee when exposed to a Thunder Stone.', 'Thunder Wave', '70', 'Fighting', 'Steel', 2, 135, 2),
(70, 'Machop', 5, 1, 'Loves to work out and build strength.', 'Karate Chop', '50', 'Psychic', 'None', 1, 66, 1),
(80, 'Machoke', 5, 2, 'Evolves from Machop. Has a muscular body.', 'Submission', '60', 'Psychic', 'None', 2, 67, 1),
(100, 'Machamp', 5, 3, 'Evolves from Machoke. Has four arms for combat.', 'Dynamic Punch', '100', 'Psychic', 'None', 3, 68, 1),
(90, 'Butterfree', 3, 2, 'Evolves from Metapod. Known for its colorful wings.', 'Gust', '40', 'Fire', 'Grass', 1, 12, 1),
(80, 'Gastly', 5, 1, 'Made of gas, it can slip through any obstacle.', 'Lick', '30', 'Psychic', 'None', 0, 92, 3),
(100, 'Haunter', 5, 2, 'Evolves from Gastly. Known for its mischievous nature.', 'Shadow Ball', '50', 'Psychic', 'None', 0, 93, 3);
GO
INSERT INTO tbl_cards (hp, name, typeID, stageID, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collectionID)
VALUES
(50, 'Magikarp', 1, 1, 'A weak and pathetic fish PokÃ©mon.', 'Splash', '0', 'Electric', 'Fire', 1, 129, 1),
(130, 'Gyarados', 1, 3, 'Evolves from Magikarp. A ferocious sea beast.', 'Hyper Beam', '100', 'Electric', 'Fire', 3, 130, 1),
(70, 'Snorlax', 5, 1, 'A sleeping giant that is hard to wake.', 'Body Slam', '50', 'Fighting', 'Psychic', 4, 143, 2),
(90, 'Cubone', 5, 1, 'Wears the skull of its deceased mother.', 'Bone Club', '30', 'Water', 'Electric', 1, 104, 3),
(110, 'Marowak', 5, 2, 'Evolves from Cubone. Uses its bone as a weapon.', 'Bonemerang', '50', 'Water', 'Electric', 2, 105, 3),
(60, 'Nidoranâ™€', 3, 1, 'A small poisonous PokÃ©mon.', 'Scratch', '20', 'Psychic', 'None', 1, 29, 2),
(80, 'Nidorina', 3, 2, 'Evolves from Nidoranâ™€.', 'Bite', '30', 'Psychic', 'None', 1, 30, 2),
(90, 'Nidoqueen', 3, 3, 'Evolves from Nidorina. A defensive powerhouse.', 'Earthquake', '90', 'Psychic', 'None', 3, 31, 2),
(60, 'Nidoranâ™‚', 3, 1, 'A small poisonous PokÃ©mon.', 'Peck', '20', 'Psychic', 'None', 1, 32, 2),
(80, 'Nidorino', 3, 2, 'Evolves from Nidoranâ™‚.', 'Horn Attack', '30', 'Psychic', 'None', 1, 33, 2),
(90, 'Nidoking', 3, 3, 'Evolves from Nidorino. A powerhouse with sharp claws.', 'Megahorn', '90', 'Psychic', 'None', 3, 34, 2),
(70, 'Meowth', 5, 1, 'Loves shiny objects.', 'Scratch', '20', 'Fighting', 'None', 0, 52, 1),
(80, 'Persian', 5, 2, 'Evolves from Meowth. A sleek and agile cat PokÃ©mon.', 'Slash', '50', 'Fighting', 'None', 1, 53, 1),
(50, 'Pidgey', 5, 1, 'A tiny bird PokÃ©mon that is very common.', 'Tackle', '10', 'Electric', 'Grass', 0, 16, 1),
(70, 'Pidgeotto', 5, 2, 'Evolves from Pidgey.', 'Wing Attack', '20', 'Electric', 'Grass', 1, 17, 1),
(120, 'Pidgeot', 5, 3, 'Evolves from Pidgeotto. Known for its speed.', 'Hurricane', '90', 'Electric', 'Grass', 2, 18, 1),
(90, 'Lapras', 1, 1, 'A gentle creature that ferries people across water.', 'Ice Beam', '70', 'Electric', 'Fire', 3, 131, 1),
(70, 'Abra', 5, 1, 'A psychic PokÃ©mon that sleeps to build energy.', 'Teleport', '0', 'Psychic', 'None', 0, 63, 3),
(90, 'Kadabra', 5, 2, 'Evolves from Abra. Known for its psychic powers.', 'Psybeam', '50', 'Psychic', 'None', 1, 64, 3),
(110, 'Alakazam', 5, 3, 'Evolves from Kadabra. Extremely intelligent.', 'Psychic', '90', 'Psychic', 'None', 2, 65, 3),
(60, 'Slowpoke', 5, 1, 'A sluggish PokÃ©mon.', 'Water Gun', '20', 'Electric', 'Fire', 1, 79, 2),
(80, 'Slowbro', 1, 2, 'Evolves from Slowpoke. A laid-back PokÃ©mon.', 'Surf', '40', 'Electric', 'Fire', 2, 80, 2),
(50, 'Diglett', 5, 1, 'Lives underground and can dig quickly.', 'Scratch', '10', 'Water', 'Electric', 0, 50, 2),
(80, 'Dugtrio', 5, 2, 'Evolves from Diglett. A trio of digging PokÃ©mon.', 'Earthquake', '70', 'Water', 'Electric', 2, 51, 2),
(70, 'Ekans', 5, 1, 'A snake PokÃ©mon that coils around its prey.', 'Wrap', '20', 'Ground', 'None', 1, 23, 1),
(90, 'Arbok', 5, 2, 'Evolves from Ekans. Known for its intimidating pattern.', 'Poison Fang', '40', 'Ground', 'None', 1, 24, 1),
(50, 'Poliwag', 1, 1, 'A water PokÃ©mon with a spiral pattern on its belly.', 'Bubble', '10', 'Electric', 'Fire', 0, 60, 1),
(80, 'Poliwhirl', 1, 2, 'Evolves from Poliwag.', 'Water Gun', '30', 'Electric', 'Fire', 1, 61, 1),
(100, 'Poliwrath', 1, 3, 'Evolves from Poliwhirl. Combines water and fighting skills.', 'Hydro Pump', '90', 'Electric', 'Fire', 2, 62, 1),
(70, 'Jynx', 5, 1, 'Known for its humanlike shape and icy powers.', 'Ice Punch', '30', 'Steel', 'Fire', 2, 124, 3);
GO
INSERT INTO tbl_cards (hp, name, typeID, stageID, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collectionID)
VALUES
(60, 'Rattata', 5, 1, 'A small and quick rodent PokÃ©mon.', 'Tackle', '10', 'Fighting', 'None', 1, 19, 1),
(80, 'Raticate', 5, 2, 'Evolves from Rattata. Known for its large fangs.', 'Hyper Fang', '50', 'Fighting', 'None', 1, 20, 1),
(50, 'Caterpie', 3, 1, 'A worm PokÃ©mon that eats leaves.', 'String Shot', '10', 'Fire', 'Grass', 1, 10, 1),
(60, 'Metapod', 3, 2, 'Evolves from Caterpie. Known for its hard shell.', 'Harden', '0', 'Fire', 'Grass', 2, 11, 1),
(70, 'Venonat', 3, 1, 'Has big eyes for scouting its surroundings.', 'Confusion', '20', 'Fire', 'Psychic', 1, 48, 1),
(100, 'Venomoth', 3, 3, 'Evolves from Venonat. Known for its powdery scales.', 'Psybeam', '50', 'Fire', 'Psychic', 1, 49, 1),
(60, 'Paras', 3, 1, 'Mushroom PokÃ©mon that thrives in damp places.', 'Scratch', '20', 'Fire', 'None', 1, 46, 2),
(70, 'Parasect', 3, 2, 'Evolves from Paras. It controls its host with fungi.', 'Spore', '40', 'Fire', 'None', 2, 47, 2),
(40, 'Weedle', 3, 1, 'A bug PokÃ©mon with a venomous stinger.', 'Poison Sting', '10', 'Fire', 'Grass', 1, 13, 1),
(50, 'Kakuna', 3, 2, 'Evolves from Weedle. Its shell is very hard.', 'Harden', '0', 'Fire', 'Grass', 2, 14, 1),
(120, 'Beedrill', 3, 3, 'Evolves from Kakuna. Known for its sharp stingers.', 'Twineedle', '60', 'Fire', 'Grass', 1, 15, 1),
(80, 'Seel', 1, 1, 'A sea lion PokÃ©mon that loves icy seas.', 'Aurora Beam', '30', 'Electric', 'Fire', 2, 86, 3),
(120, 'Dewgong', 1, 3, 'Evolves from Seel. It swims swiftly in icy waters.', 'Ice Beam', '70', 'Electric', 'Fire', 3, 87, 3),
(70, 'Krabby', 1, 1, 'A crab PokÃ©mon that waves its pincers.', 'Vice Grip', '20', 'Electric', 'None', 1, 98, 3),
(110, 'Kingler', 1, 2, 'Evolves from Krabby. Its pincers can crush anything.', 'Crabhammer', '50', 'Electric', 'None', 2, 99, 3),
(100, 'Electabuzz', 4, 1, 'A PokÃ©mon that generates electricity.', 'Thunder Punch', '60', 'Ground', 'Steel', 1, 125, 3),
(50, 'Magnemite', 4, 1, 'A PokÃ©mon that appears to be made of magnets.', 'Thunder Shock', '30', 'Ground', 'Steel', 0, 81, 1),
(80, 'Magneton', 4, 3, 'Evolves from Magnemite. Known for its magnetic field.', 'Zap Cannon', '70', 'Ground', 'Steel', 2, 82, 1),
(50, 'Horsea', 1, 1, 'A water PokÃ©mon that swims gracefully.', 'Bubble', '10', 'Electric', 'Fire', 0, 116, 2),
(80, 'Seadra', 1, 2, 'Evolves from Horsea. Its venom can paralyze opponents.', 'Water Gun', '30', 'Electric', 'Fire', 1, 117, 2),
(70, 'Sandshrew', 5, 1, 'A desert-dwelling PokÃ©mon with a tough hide.', 'Scratch', '10', 'Water', 'Electric', 1, 27, 2),
(100, 'Sandslash', 5, 2, 'Evolves from Sandshrew. Known for its sharp claws.', 'Slash', '40', 'Water', 'Electric', 2, 28, 2),
(90, 'Hitmonlee', 5, 1, 'A fighting PokÃ©mon with legs of steel.', 'High Jump Kick', '70', 'Psychic', 'None', 2, 106, 3),
(90, 'Hitmonchan', 5, 1, 'A fighting PokÃ©mon that throws fast punches.', 'Fire Punch', '60', 'Psychic', 'None', 1, 107, 3),
(60, 'Lickitung', 5, 1, 'Its long tongue is highly versatile.', 'Lick', '20', 'Fighting', 'None', 2, 108, 2),
(60, 'Voltorb', 4, 1, 'A PokÃ©mon that resembles a PokÃ© Ball.', 'Spark', '20', 'Ground', 'Steel', 0, 100, 1),
(100, 'Electrode', 4, 2, 'Evolves from Voltorb. Known for exploding unexpectedly.', 'Explosion', '120', 'Ground', 'Steel', 1, 101, 1),
(70, 'Doduo', 5, 1, 'A two-headed bird PokÃ©mon that is fast on its feet.', 'Peck', '10', 'Electric', 'Grass', 1, 84, 1),
(90, 'Dodrio', 5, 2, 'Evolves from Doduo. Its three heads can sense danger.', 'Tri Attack', '40', 'Electric', 'Grass', 2, 85, 1);
GO
