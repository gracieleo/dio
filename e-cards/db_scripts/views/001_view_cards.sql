CREATE VIEW vw_cards_with_names AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.typeName AS type,
    s.stageName AS stage,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.ressis,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName AS collectionName,
    col.releaseDate,
    col.totalCardsInCollection
FROM 
    tbl_cards c
JOIN 
    tbl_types t ON c.typeID = t.id
JOIN 
    tbl_stages s ON c.stageID = s.id
JOIN 
    tbl_collections col ON c.collectionID = col.id;