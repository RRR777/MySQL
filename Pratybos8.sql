--
-- Pratybos 8
--

--
-- 1. Paruoškite duomenų bazės atnaujinimo skriptą. (tik struktūros).
--

--
-- Table structure for table `authors_books` - many authors to many books
--

CREATE TABLE authors_books
(
    authorId int (11) DEFAULT NULL,
    bookId int (11) DEFAULT NULL
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors_books`
--

INSERT INTO authors_books
    ( authorId, bookId )
SELECT
    authorId, bookId
FROM books;

--
-- Deleting column for table `books`
--

ALTER TABLE books
DROP authorId;

--
-- Change ENGINE for table `authors`
--

-- Change ENGINE for table `authors` to InnoDB

ALTER TABLE authors ENGINE = InnoDB;

--
-- Change charset for tables `books` and `authors`
--

-- Change charset and COLLATE for tables `books`

ALTER TABLE books
    CHARACTER
SET utf8
COLLATE utf8_general_ci;

-- Change charset and COLLATE for tables `authors`

ALTER TABLE authors
    CHARACTER
SET utf8
COLLATE utf8_general_ci;

-- Change charset and COLLATE for tables `authors` column `name`

ALTER TABLE authors MODIFY
    name VARCHAR
(255)
    CHARACTER
SET utf8
COLLATE utf8_general_ci;

-- Change charset and COLLATE for tables `books` column `title`

ALTER TABLE books MODIFY
    title VARCHAR
(255)
    CHARACTER
SET utf8
COLLATE utf8_general_ci;
