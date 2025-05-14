SELECT 
    v.visitor_name,
    v.visitor_surname,
    a.name AS artist_name,
    SUM(
        r.artist_interpretation +
        r.sound_and_lighting +
        r.stage_presence +
        r.organization +
        r.overall_impression
    ) AS total_score
FROM 
    Ratings r
JOIN 
    Tickets t ON r.ticket_id = t.ticket_id
JOIN 
    Visitors v ON t.visitor_id = v.visitor_id
JOIN 
    Performances p ON r.performance_id = p.performance_id
JOIN 
    Artists a ON p.artist_id = a.artist_id
WHERE 
    p.artist_id IS NOT NULL
GROUP BY 
    v.visitor_id, v.visitor_name, v.visitor_surname, a.artist_id, a.name
ORDER BY 
    total_score DESC
LIMIT 5;
