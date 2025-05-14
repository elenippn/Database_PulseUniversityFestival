-- Breakdown by year + payment method
SELECT 
    f.year,
    t.payment_method,
    SUM(t.price) AS total_revenue
FROM Tickets t
JOIN Events e ON t.event_id = e.event_id
JOIN Festivals f ON e.festival_id = f.festival_id
GROUP BY f.year, t.payment_method

UNION ALL

-- Total revenue per year (payment_method shown as 'Total')
SELECT 
    f.year,
    'Total' AS payment_method,
    SUM(t.price) AS total_revenue
FROM Tickets t
JOIN Events e ON t.event_id = e.event_id
JOIN Festivals f ON e.festival_id = f.festival_id
GROUP BY f.year

ORDER BY year, 
         FIELD(payment_method, 'Credit Card', 'Debit Card', 'Bank Transfer', 'Total');
