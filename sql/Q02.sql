SELECT 
    a.artist_id,
    a.name,
    ag.Genre,
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Performances p
            JOIN Events e ON p.event_id = e.event_id
            JOIN Festivals f ON e.festival_id = f.festival_id
            WHERE p.artist_id = a.artist_id AND f.year = 2025  
        )
        THEN 'Yes'
        ELSE 'No'
    END AS participated_in_2025
FROM Artists a
JOIN ArtistGenre ag ON a.artist_id = ag.artist_id
WHERE ag.Genre = 'Rock'; 
