WITH yearly_attendance AS (
    SELECT
        t.visitor_id,
        f.year AS festival_year,
        COUNT(*) AS attendance_count
    FROM 
        Tickets t
    JOIN 
        Events e ON t.event_id = e.event_id
    JOIN 
        Festivals f ON e.festival_id = f.festival_id
    WHERE 
        t.is_used = TRUE
    GROUP BY 
        t.visitor_id, f.year
    HAVING 
        COUNT(*) > 2
),

-- Match different visitors with same attendance in same year
matching_visitors AS (
    SELECT 
        a1.visitor_id AS visitor_1,
        a2.visitor_id AS visitor_2,
        a1.festival_year,
        a1.attendance_count
    FROM 
        yearly_attendance a1
    JOIN 
        yearly_attendance a2
        ON a1.attendance_count = a2.attendance_count
        AND a1.visitor_id <> a2.visitor_id
        
)

SELECT DISTINCT 
    v.visitor_id,
    v.visitor_name,
    v.visitor_surname,
    m.festival_year,
    m.attendance_count
FROM 
    matching_visitors m
JOIN 
    Visitors v ON v.visitor_id = m.visitor_1
ORDER BY 
    m.festival_year, m.attendance_count DESC;