-- === QUERY 6 & join strategies ====

-- Reset profiling
SET profiling = 0;
SET profiling = 1;
SET profiling_history_size = 100;

-- Set the visitor ID to analyze
SET @visitor_id = 89;


-- 1. DEFAULT JOIN STRATEGY (Optimizer chooses best path)

SELECT '1. DEFAULT JOIN STRATEGY' AS 'Strategy';
EXPLAIN
SELECT 
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Ratings r
JOIN Performances p ON r.performance_id = p.performance_id
JOIN Tickets t ON r.ticket_id = t.ticket_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;

SET @start_time1 = NOW(6);
SELECT 
    'DEFAULT' AS join_strategy,
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Ratings r
JOIN Performances p ON r.performance_id = p.performance_id
JOIN Tickets t ON r.ticket_id = t.ticket_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;
SET @end_time1 = NOW(6);
SET @duration1 = TIMESTAMPDIFF(MICROSECOND, @start_time1, @end_time1) / 1000;


-- 2. NESTED LOOP JOIN STRATEGY using STRAIGHT_JOIN

SELECT '2. NESTED LOOP JOIN STRATEGY' AS 'Strategy';
EXPLAIN
SELECT STRAIGHT_JOIN
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Tickets t USE INDEX (PRIMARY)
JOIN Ratings r USE INDEX (PRIMARY) ON t.ticket_id = r.ticket_id
JOIN Performances p USE INDEX (PRIMARY) ON r.performance_id = p.performance_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;

SET @start_time2 = NOW(6);
SELECT STRAIGHT_JOIN
    'NESTED_LOOP' AS join_strategy,
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Tickets t USE INDEX (PRIMARY)
JOIN Ratings r USE INDEX (PRIMARY) ON t.ticket_id = r.ticket_id
JOIN Performances p USE INDEX (PRIMARY) ON r.performance_id = p.performance_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;
SET @end_time2 = NOW(6);
SET @duration2 = TIMESTAMPDIFF(MICROSECOND, @start_time2, @end_time2) / 1000;


-- 3. HASH JOIN STRATEGY (Block Nested Loop simulated)

SELECT '3. HASH JOIN STRATEGY (BNL)' AS 'Strategy';
EXPLAIN
SELECT 
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Tickets t
JOIN Ratings r IGNORE INDEX (PRIMARY, ticket_id_idx) ON t.ticket_id = r.ticket_id
JOIN Performances p IGNORE INDEX (PRIMARY) ON r.performance_id = p.performance_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;

SET @start_time3 = NOW(6);
SELECT 
    'HASH_JOIN' AS join_strategy,
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Tickets t
JOIN Ratings r IGNORE INDEX (PRIMARY, ticket_id_idx) ON t.ticket_id = r.ticket_id
JOIN Performances p IGNORE INDEX (PRIMARY) ON r.performance_id = p.performance_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;
SET @end_time3 = NOW(6);
SET @duration3 = TIMESTAMPDIFF(MICROSECOND, @start_time3, @end_time3) / 1000;


-- 4. MERGE JOIN STRATEGY using FORCE INDEX

SELECT '4. MERGE JOIN STRATEGY' AS 'Strategy';
EXPLAIN
SELECT 
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Tickets t FORCE INDEX (visitor_id_idx)
JOIN Ratings r FORCE INDEX (ticket_id_idx) ON t.ticket_id = r.ticket_id
JOIN Performances p FORCE INDEX (PRIMARY) ON r.performance_id = p.performance_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;

SET @start_time4 = NOW(6);
SELECT 
    'MERGE_JOIN' AS join_strategy,
    p.performance_id,
    p.type,
    ROUND(AVG(r.overall_impression), 2) AS avg_impression
FROM Tickets t FORCE INDEX (visitor_id_idx)
JOIN Ratings r FORCE INDEX (ticket_id_idx) ON t.ticket_id = r.ticket_id
JOIN Performances p FORCE INDEX (PRIMARY) ON r.performance_id = p.performance_id
WHERE t.visitor_id = @visitor_id
GROUP BY p.performance_id, p.type;
SET @end_time4 = NOW(6);
SET @duration4 = TIMESTAMPDIFF(MICROSECOND, @start_time4, @end_time4) / 1000;


-- PERFORMANCE SUMMARY TABLE FOR STRATEGY COMPARISON

SELECT '=== PERFORMANCE COMPARISON (ms) ===' AS '';
SELECT 
    'Default Join' AS Strategy, @duration1 AS ExecutionTimeMs
UNION ALL
SELECT 
    'Nested Loop Join', @duration2
UNION ALL
SELECT 
    'Hash Join (BNL)', @duration3
UNION ALL
SELECT 
    'Merge Join', @duration4;

-- Execution plan analysis
SELECT '=== EXECUTION PLANS ===' AS '';
SHOW PROFILES;

SET profiling = 0;
