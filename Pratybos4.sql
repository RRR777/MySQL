--
-- Pratybos 4
--

--
-- 1. Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje
-- (įtraukdami autorius, kurie neturi knygų, bei neįtraukdami šių autorių).
--

-- įtraukdami autorius, kurie neturi knygų
SELECT a.name Autorius, COUNT(b.title) Kiekis
FROM authors a
    LEFT JOIN books b
    ON b.authorId = a.authorId
GROUP BY Autorius
ORDER BY Kiekis DESC, Autorius ASC;

-- neįtraukdami šių autorių
SELECT a.name Autorius, COUNT(b.title) Kiekis
FROM authors a
    LEFT JOIN books b
    ON b.authorId = a.authorId
WHERE b.authorId IS NOT NULL
GROUP BY a.name
ORDER BY Kiekis DESC, Autorius ASC;
--
-- 2. Pašalinkite autorius, kurie neturi knygų.
--

DELETE authors
FROM authors
    LEFT JOIN books
    ON books.authorId = authors.authorId
WHERE
    books.authorId IS NULL;
