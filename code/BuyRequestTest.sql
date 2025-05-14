-- Show resale tickets and buy requests for event 15
SELECT * FROM ResaleQueue WHERE event_id = 15 ORDER BY listed_date;
SELECT * FROM BuyRequests WHERE event_id = 15 ORDER BY request_date;

--  Insert a buy request ( buyer_id 139 )
INSERT INTO BuyRequests (buyer_id, event_id, request_date)
VALUES (139, 15, NOW());

--  Show updated state
SELECT * FROM ResaleQueue WHERE event_id = 15 ORDER BY listed_date;
SELECT * FROM BuyRequests WHERE buyer_id = 139 ORDER BY request_date DESC;
SELECT * FROM Tickets WHERE visitor_id = 139;
SELECT * FROM TriggerLog ORDER BY created_at DESC LIMIT 5;
