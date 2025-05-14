-- Show resale tickets and buy requests for event 25
SELECT * FROM ResaleQueue WHERE event_id = 25 ORDER BY listed_date;
select * from BuyRequests WHERE event_id = 25 ORDER BY request_date;


--  Insert a resale ticket ( ticket_id 158 exists, unused, and not listed yet)
INSERT INTO ResaleQueue (ticket_id, seller_id, event_id)
VALUES (158, 40, 25);

--  Show updated state
SELECT * FROM ResaleQueue WHERE ticket_id = 158;
SELECT * FROM Tickets WHERE ticket_id = 158;
SELECT * FROM TriggerLog ORDER BY created_at DESC LIMIT 5;
