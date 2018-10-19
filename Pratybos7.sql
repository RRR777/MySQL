--
-- Pratybos 7
--

--
-- Papildyti duomenų bazę kad būtų galima:
-- 1. Knygos gali turėti vieną ir daugiau autorių.
--

--
-- Table structure for table `authors_books` - many author to many books
--

CREATE TABLE authors_books
(
  authorId int (11) DEFAULT NULL,
  bookId int (11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 2.Sutvarkyti duomenų bazės duomenis, jei reikia papildykite naujais.
--

-- Perkeliame duomenis (authorId ir bookId) iš books lentelės į lentelę authors_books

INSERT INTO authors_books
    ( authorId, bookId )
SELECT
    authorId, bookId
FROM books;

-- Ištriname stulpelį authorId iš books lentelės

ALTER TABLE books
DROP authorId;

-- Papildome authors_books lentelę įrašais, kad knygos turėtų po kelis autorius

INSERT INTO authors_books
    ( bookId, authorId )
VALUES
    (1, 2),
    (1, 4),
    (1, 6),
    (5, 4),
    (5, 1),
    (6, 6),
    (7, 4),
    (7, 6);

--
-- 3.Išrinkite visas knygas su jų autoriais. (autorius, jei jų daugiau nei 
-- vienas atskirkite kableliais)
--

SELECT b.title 'Knygos pavadinimas', GROUP_CONCAT(a.name SEPARATOR ', ') 'Autorius'
FROM books b
    LEFT JOIN authors_books ab
    ON b.bookId = ab.bookId
    LEFT JOIN authors a
    ON a.authorId = ab.authorId
WHERE a.name IS NOT NULL
GROUP BY b.title;

--
-- 4.Sutvarkykite knygų lentelę, kad galėtumėte išsaugoti originalų 
-- knygos pavadinimą. (Pavadinime išsaugokite, lietuviškas raides 
-- kaip ą,ė,š ir pan.)
--

-- Pakeičiame lentelės authors ENGINE tipą į InnoDB

ALTER TABLE authors ENGINE = InnoDB;

-- Pakeičiame lentelės books charset ir COLLATE

ALTER TABLE books
    CHARACTER SET utf8
    COLLATE utf8_general_ci;

-- Pakeičiame lentelės authors charset ir COLLATE

ALTER TABLE authors
    CHARACTER SET utf8
    COLLATE utf8_general_ci;

-- Pakeičiame lentelės authors, stulpelio name charset ir COLLATE

ALTER TABLE authors MODIFY
    name VARCHAR (255)
    CHARACTER SET utf8
    COLLATE utf8_general_ci;

-- Pakeičiame lentelės books, stulpelio title charset ir COLLATE

ALTER TABLE books MODIFY
    title VARCHAR (255)
    CHARACTER SET utf8
    COLLATE utf8_general_ci;

--
-- Patikriname ar rodo lietuviškas raides
--

INSERT INTO authors
    ( name )
VALUES
    ( 'Juozas Baltušis, ąčęėįšųūž' );

INSERT INTO books
    ( title )
VALUES
    ( 'Lietuviška abėcėlė, ąčęėįšųūž' );
