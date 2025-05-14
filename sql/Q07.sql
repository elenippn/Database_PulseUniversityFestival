SELECT 
    s.festival_id,
    f.year,
    AVG(
        CASE st.experience_level
            WHEN 'Trainee' THEN 1
            WHEN 'Beginner' THEN 2
            WHEN 'Intermediate' THEN 3
            WHEN 'Experienced' THEN 4
            WHEN 'Very Experienced' THEN 5
        END
    ) AS avg_experience_score
FROM 
    Staff st
JOIN 
    StageStaff ss ON st.staff_id = ss.staff_id
JOIN 
    Stages s ON ss.stage_id = s.stage_id
JOIN 
    Festivals f ON s.festival_id = f.festival_id
WHERE 
    st.role = 'Technical'
GROUP BY 
    s.festival_id, f.year
ORDER BY 
    avg_experience_score ASC
LIMIT 1;
