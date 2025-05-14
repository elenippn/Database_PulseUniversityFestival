SELECT 
    ag1.Genre AS Genre1,
    ag2.Genre AS Genre2,
    COUNT(DISTINCT p.performance_id) AS appearances
FROM ArtistGenre ag1
JOIN ArtistGenre ag2 ON ag1.artist_id = ag2.artist_id AND ag1.Genre < ag2.Genre
JOIN Performances p ON ag1.artist_id = p.artist_id
JOIN Events e ON p.event_id = e.event_id
JOIN Festivals f ON e.festival_id = f.festival_id
GROUP BY ag1.Genre, ag2.Genre
ORDER BY appearances DESC
LIMIT 3;

