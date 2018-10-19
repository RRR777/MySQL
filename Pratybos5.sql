--
-- Pratybos 5
--

--
-- 1. Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, 
-- išrinkdami pasirinktinai du stulpelius.
--

SELECT name, authorId
    FROM authors
UNION
SELECT bookId, title
    FROM books;
