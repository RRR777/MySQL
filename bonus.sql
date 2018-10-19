--
-- Straipsniai saugomi lentelėje News (newsId, text, date), 
-- straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId).
--  Išrinkite 10 naujausių straipsnių su paskutiniu parašytu komentaru
-- (newsId, newsDate, newsText, commentDate, commentText ).
--

SELECT n.newsId, n.date newsDate, n.text newsText, commentDate, commentText
FROM news n
    INNER JOIN (SELECT date commentDate, text commentText, newsId
        FROM comments
        WHERE date IN (SELECT max(date)
            FROM comments
            GROUP BY newsId )) c
    ON c.newsId = n.newsId
GROUP BY n.newsId
ORDER BY n.date DESC
LIMIT 10;
