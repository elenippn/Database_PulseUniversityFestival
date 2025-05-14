SELECT 
    p.artist_id,
    a.name,
    e.festival_id,
    COUNT(*) AS warmup_count
FROM 
    Performances p
JOIN 
    Events e ON p.event_id = e.event_id
JOIN 
    Artists a ON p.artist_id = a.artist_id
WHERE 
    p.type = 'Warm-up'
GROUP BY 
    p.artist_id, e.festival_id, a.name
HAVING 
    COUNT(*) > 2;
