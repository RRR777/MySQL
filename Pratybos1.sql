--
-- Pratybos 1
--

--
-- 1.Išrinkite visus įrašus iš Knygų lentelės
--

SELECT *
FROM books;

--
-- 2. Išrinkite tik Knygų pavadinimus abėcėles tvarka.
--

SELECT title 'Knygos pavadinimas'
FROM books
ORDER BY title ASC;

--
-- 3.Suskaičiuokite, kiek knygų kiekvieno autoriaus yra knygų lentelėje
--

SELECT authorId 'Autoriaus ID', COUNT(bookId) 'Knygų skaičius'
FROM books
GROUP BY authorId;
