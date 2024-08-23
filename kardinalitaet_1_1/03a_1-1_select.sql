
-- SELECTS

-- Einzeltabellen
SELECT * FROM design.cats;
SELECT * FROM design.servants;

-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM design.cats JOIN design.servants;

-- Inner Join 1 / Gesamte Tabelle
SELECT
    *
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
;


-- Inner Join 2 / (Wer dient wem?)
-- Wer dient Grizabella?
-- Wem dient Sven?
SELECT
    cat_name AS Katze,
    servant_name AS Diener
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
-- Filtern mit WHERE
-- WHERE cat_name = "Grizabella"
WHERE servant_name = "Sven"
;

-- Inner Join 2a / (Wer dient wem?)
-- "X ist der Diener von Y"  / Dienstverhältnis
SELECT
    CONCAT(servant_name, " ist der Diener von ", cat_name) AS Dienstverhaeltnis
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
-- Filtern mit WHERE
-- WHERE cat_name = "Grizabella"
WHERE servant_name = "Sven"
;


-- Inner Join 3 / Dienstzeit
SELECT
	servant_name Diener,
    yrs_served AS Dienstzeit
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
;
