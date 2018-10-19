--
-- Pratybos 2
--

--
-- 1.Papildykite autorių lentelę 2 įrašais;
--

INSERT INTO authors
SET name = 'Vincas Mykolaitis Putinas';

INSERT INTO authors
SET name = 'Vytė Nemunėlis';

-- Kitas būdas įkelti 2 įrašus vienu metu:

INSERT INTO authors
    ( name )
VALUES
    ( 'Kristijonas Donelaitis' ),
    ( 'Jonas Avyžius' );

--
-- 2.Papildykite knygų lentelę, 3 įrašais apie knygas, kurių autorius įrašėte prieš tai.
--

INSERT INTO books
SET authorId = '8',
title = 'Altorių šešely';

INSERT INTO books
SET authorId = '9',
title = 'Meškiukas Rudnosiukas';

INSERT INTO books 
SET authorId = '9',
title = 'Eilėraščiai';

-- Kitas būdas įkelti 3 įrašus vienu metu:

INSERT INTO books
    ( authorId, title )
VALUES
    ( '10', 'Metai' ),
    ( '11', 'Didžiojo Užutėkio gyventojai' ),
    ( '10', 'Aštuonetas iš Trepsės namų' );

--
-- 3.Pakeiskite vienos knygos autorių į kitą.
--

UPDATE books
SET authorId = 11
WHERE bookId = 14;
