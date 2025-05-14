SELECT 
    ss.date,
    s.role,
    COUNT(*) AS staff_count
FROM StageStaff ss
JOIN Staff s ON ss.staff_id = s.staff_id
GROUP BY ss.date, s.role
ORDER BY ss.date, s.role;
