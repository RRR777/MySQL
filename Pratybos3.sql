--
-- Pratybos 3
--

--
-- 1. Pašalinkite jūsų įrašytus autorius. (pagal ID)
--

DELETE FROM authors WHERE authorId > 7;

-- arba nurodome tiesioginius ID

DELETE FROM authors
WHERE authorId
IN (8, 9, 10, 11);

--
-- Pašaliname pridėtas knygas
--

DELETE FROM books WHERE bookId > 8;