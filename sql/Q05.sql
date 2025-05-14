SELECT 
    a.artist_id,
    a.name,
    COUNT(DISTINCT f.festival_id) AS festival_participations
FROM 
    Artists a
JOIN 
    Performances p ON a.artist_id = p.artist_id
JOIN 
    Events e ON p.event_id = e.event_id
JOIN 
    Festivals f ON e.festival_id = f.festival_id
WHERE 
    a.birthdate > CURRENT_DATE - INTERVAL 30 YEAR
GROUP BY 
    a.artist_id, a.name
ORDER BY 
    festival_participations DESC;
