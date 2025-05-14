WITH artist_participation AS (
    SELECT 
        p.artist_id,
        COUNT(DISTINCT f.festival_id) AS festival_count
    FROM 
        Performances p
    JOIN 
        Events e ON p.event_id = e.event_id
    JOIN 
        Festivals f ON e.festival_id = f.festival_id
    WHERE 
        p.artist_id IS NOT NULL
    GROUP BY 
        p.artist_id
),

max_participation AS (
    SELECT 
        MAX(festival_count) AS max_count
    FROM 
        artist_participation
)

SELECT 
    a.artist_id,
    a.name,
    ap.festival_count
FROM 
    artist_participation ap
JOIN 
    Artists a ON a.artist_id = ap.artist_id,
    max_participation m
WHERE 
    ap.festival_count <= m.max_count - 5
ORDER BY 
    ap.festival_count ASC;
