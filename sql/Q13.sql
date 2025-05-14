SELECT 
    p.artist_id,
    a.name,
    COUNT(DISTINCT l.Continent) AS continent_count
FROM 
    Performances p
JOIN 
    Events e ON p.event_id = e.event_id
JOIN 
    Festivals f ON e.festival_id = f.festival_id
JOIN 
    Location l ON f.location_id = l.location_id
JOIN 
    Artists a ON p.artist_id = a.artist_id
WHERE 
    p.artist_id IS NOT NULL
GROUP BY 
    p.artist_id, a.name
HAVING 
    COUNT(DISTINCT l.Continent) >= 3;
