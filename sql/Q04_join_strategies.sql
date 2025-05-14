-- === QUERY 4 & join strategies ===

-- Reset profiling and prepare environment
SET profiling = 0;
SET profiling = 1;
SET profiling_history_size = 100;

-- Set the artist ID we want to analyze
SET @artist_id = 16; 



-- 1. DEFAULT JOIN STRATEGY (optimizer makes the decision)
SELECT '1. DEFAULT JOIN STRATEGY' AS 'Strategy';
EXPLAIN
SELECT 
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Ratings r
JOIN 
    Performances p ON r.performance_id = p.performance_id
JOIN 
    Artists a ON p.artist_id = a.artist_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;

-- Execute the default strategy and measure time
SET @start_time1 = NOW(6);
SELECT 
    'DEFAULT' AS 'Join_Strategy',
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Ratings r
JOIN 
    Performances p ON r.performance_id = p.performance_id
JOIN 
    Artists a ON p.artist_id = a.artist_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;
SET @end_time1 = NOW(6);
SET @duration1 = TIMESTAMPDIFF(MICROSECOND, @start_time1, @end_time1) / 1000;

-- 2. NESTED LOOP JOIN STRATEGY using STRAIGHT_JOIN
SELECT '2. NESTED LOOP JOIN STRATEGY' AS 'Strategy';
EXPLAIN
SELECT STRAIGHT_JOIN
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Artists a
JOIN 
    Performances p USE INDEX (PRIMARY) ON a.artist_id = p.artist_id
JOIN 
    Ratings r USE INDEX (PRIMARY) ON p.performance_id = r.performance_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;

-- Execute Nested Loop strategy and measure time
SET @start_time2 = NOW(6);
SELECT 
    'NESTED_LOOP' AS 'Join_Strategy',
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Artists a
STRAIGHT_JOIN 
    Performances p USE INDEX (PRIMARY) ON a.artist_id = p.artist_id
STRAIGHT_JOIN 
    Ratings r USE INDEX (PRIMARY) ON p.performance_id = r.performance_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;
SET @end_time2 = NOW(6);
SET @duration2 = TIMESTAMPDIFF(MICROSECOND, @start_time2, @end_time2) / 1000;

-- 3. HASH JOIN STRATEGY (Using Block Nested Loop simulation)
SELECT '3. HASH JOIN STRATEGY (BNL)' AS 'Strategy';
EXPLAIN
SELECT 
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Artists a
JOIN 
    Performances p IGNORE INDEX (PRIMARY, idx_performance_artist_id) ON a.artist_id = p.artist_id
JOIN 
    Ratings r IGNORE INDEX (PRIMARY, idx_rating_performance_id) ON p.performance_id = r.performance_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;

-- Execute Hash Join strategy and measure time
SET @start_time3 = NOW(6);
SELECT 
    'HASH_JOIN' AS 'Join_Strategy',
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Artists a
JOIN 
    Performances p IGNORE INDEX (PRIMARY, idx_performance_artist_id) ON a.artist_id = p.artist_id
JOIN 
    Ratings r IGNORE INDEX (PRIMARY, idx_rating_performance_id) ON p.performance_id = r.performance_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;
SET @end_time3 = NOW(6);
SET @duration3 = TIMESTAMPDIFF(MICROSECOND, @start_time3, @end_time3) / 1000;

-- 4. MERGE JOIN STRATEGY with FORCE INDEX
SELECT '4. MERGE JOIN STRATEGY' AS 'Strategy';
EXPLAIN
SELECT 
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Artists a FORCE INDEX (PRIMARY)
JOIN 
    Performances p FORCE INDEX (idx_performance_artist_id) ON a.artist_id = p.artist_id
JOIN 
    Ratings r FORCE INDEX (idx_rating_performance_id) ON p.performance_id = r.performance_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;

-- Execute Merge Join strategy and measure time
SET @start_time4 = NOW(6);
SELECT 
    'MERGE_JOIN' AS 'Join_Strategy',
    a.artist_id AS 'Artist ID',
    a.name AS 'Artist Name',
    ROUND(AVG(r.artist_interpretation), 2) AS 'Avg Artist Interpretation',
    ROUND(AVG(r.overall_impression), 2) AS 'Avg Overall Impression'
FROM 
    Artists a FORCE INDEX (PRIMARY)
JOIN 
    Performances p FORCE INDEX (idx_performance_artist_id) ON a.artist_id = p.artist_id
JOIN 
    Ratings r FORCE INDEX (idx_rating_performance_id) ON p.performance_id = r.performance_id
WHERE 
    a.artist_id = @artist_id
GROUP BY 
    a.artist_id, a.name;
SET @end_time4 = NOW(6);
SET @duration4 = TIMESTAMPDIFF(MICROSECOND, @start_time4, @end_time4) / 1000;

-- === PERFORMANCE COMPARISON REPORT ===

-- Display execution times for all join strategies for easy comparison
SELECT '=== PERFORMANCE COMPARISON (MS) ===' AS '';
SELECT 
    'DEFAULT JOIN' AS 'Join Strategy',
    @duration1 AS 'Execution Time (ms)'
UNION ALL
SELECT 
    'NESTED LOOP JOIN' AS 'Join Strategy',
    @duration2 AS 'Execution Time (ms)'
UNION ALL
SELECT 
    'HASH JOIN (BNL)' AS 'Join Strategy',
    @duration3 AS 'Execution Time (ms)'
UNION ALL
SELECT 
    'MERGE JOIN' AS 'Join Strategy',
    @duration4 AS 'Execution Time (ms)'
ORDER BY 
    `Execution Time (ms)`;

-- Show the EXPLAIN results for each query in the profiles
SELECT '=== EXECUTION PLANS USED ===' AS '';
SHOW PROFILES;

-- Disable profiling
SET profiling = 0;