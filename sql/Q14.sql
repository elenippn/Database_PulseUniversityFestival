WITH GenreYearCounts AS (
    SELECT 
        ag.Genre,
        f.year,
        COUNT(*) AS appearance_count
    FROM Performances p
    JOIN ArtistGenre ag ON p.artist_id = ag.artist_id
    JOIN Events e ON p.event_id = e.event_id
    JOIN Festivals f ON e.festival_id = f.festival_id
    GROUP BY ag.Genre, f.year
    HAVING COUNT(*) >= 3
),
ConsecutiveMatch AS (
    SELECT 
        g1.Genre,
        g1.year AS year1,
        g2.year AS year2,
        g1.appearance_count
    FROM GenreYearCounts g1
    JOIN GenreYearCounts g2 
      ON g1.Genre = g2.Genre 
     AND g2.year = g1.year + 1
     AND g1.appearance_count = g2.appearance_count
)
SELECT * FROM ConsecutiveMatch
ORDER BY Genre, year1;
