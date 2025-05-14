SELECT s.staff_id, s.name, s.age
FROM Staff s
WHERE s.role = 'Support'
  AND s.staff_id NOT IN (
    SELECT ss.staff_id
    FROM StageStaff ss
    WHERE ss.date = '2025-07-18' 
  );

