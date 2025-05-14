
-- Load data into Location table (festival-themed)
INSERT INTO Location (Address, Coordinates, City, Country, Continent) VALUES
('Worth Farm, Pilton', ST_PointFromText('POINT(51.1560 -2.5852)'), 'Somerset', 'United Kingdom', 'Europe'), -- Glastonbury
('Empire Polo Club, 81-800 Avenue 51', ST_PointFromText('POINT(33.6803 -116.2371)'), 'Indio', 'United States', 'North America'), -- Coachella
('Parc del Fòrum', ST_PointFromText('POINT(41.4106 2.2176)'), 'Barcelona', 'Spain', 'Europe'), -- Primavera Sound
('Zilker Park', ST_PointFromText('POINT(30.2669 -97.7720)'), 'Austin', 'United States', 'North America'), -- ACL Festival
('Hradec Králové Airport', ST_PointFromText('POINT(50.2546 15.8457)'), 'Hradec Králové', 'Czech Republic', 'Europe'), -- Rock for People
('Randall’s Island Park', ST_PointFromText('POINT(40.7930 -73.9220)'), 'New York', 'United States', 'North America'), -- Governors Ball
('Fuji Speedway', ST_PointFromText('POINT(35.3719 138.9275)'), 'Oyama', 'Japan', 'Asia'), -- Fuji Rock
('Parque Fundidora', ST_PointFromText('POINT(25.6768 -100.2850)'), 'Monterrey', 'Mexico', 'North America'), -- Pa’l Norte
('Øya Festival Site, Tøyen Park', ST_PointFromText('POINT(59.9155 10.7731)'), 'Oslo', 'Norway', 'Europe'), -- Øya Festival
('Woodstock Grounds, Bethel Woods Center', ST_PointFromText('POINT(41.7015 -74.8804)'), 'Bethel', 'United States', 'North America'); -- Woodstock legacy

-- Load data into Festivals table
INSERT INTO Festivals (year, StartDate, EndDate, location_id, festival_image_url, festival_image_description) VALUES
(2017, '2017-07-01', '2017-07-03', 1, 'https://example.com/pulse2017.jpg', 'Pulse Festival 2017: Rain, mud, and music magic.'),
(2018, '2018-04-14', '2018-04-16', 2, 'https://example.com/pulse2018.jpg', 'Pulse Festival 2018: Desert vibes and headliners.'),
(2019, '2019-06-01', '2019-06-03', 3, 'https://example.com/pulse2019.jpg', 'Pulse Festival 2019: Electric nights by the sea.'),
(2020, '2020-10-04', '2020-10-06', 4, 'https://example.com/pulse2020.jpg', 'Pulse Festival 2020: Resilient beats in uncertain times.'),
(2021, '2021-07-10', '2021-07-12', 5, 'https://example.com/pulse2021.jpg', 'Pulse Festival 2021: Small but mighty.'),
(2022, '2022-09-24', '2022-09-26', 6, 'https://example.com/pulse2022.jpg', 'Pulse Festival 2022: Back and bigger in NYC.'),
(2023, '2023-08-20', '2023-08-22', 7, 'https://example.com/pulse2023.jpg', 'Pulse Festival 2023: Scenic and serene.'),
(2024, '2024-03-31', '2024-04-02', 8, 'https://example.com/pulse2024.jpg', 'Pulse Festival 2024: Latin heat and rhythms.'),
(2025, '2025-07-18', '2025-07-20', 9, 'https://example.com/pulse2025.jpg', 'Pulse Festival 2025 in Oslo.'),
(2026, '2026-08-14', '2026-08-16', 10, 'https://example.com/pulse2026.jpg', 'Pulse Festival 2026 at the iconic Woodstock site.');

-- Load data into Stages table
INSERT INTO Stages (festival_id, name, description, max_capacity, required_equipment, stage_image_url, stage_image_description, security_staff_count, support_staff_count) VALUES
-- Festival 2017 
(1, 'Pyramid Stage', 'Iconic main stage hosting headliners.', 80000, 'PA system, lighting rig, LED wall', 'https://example.com/pyramid.jpg', 'The legendary Pyramid Stage at Glastonbury.', 50, 100),
(1, 'The Other Stage', 'Secondary stage for rising stars and indie acts.', 40000, 'Speakers, stage lights, backstage tents', 'https://example.com/otherstage.jpg', 'Crowdsurfing at The Other Stage.', 30, 70),
(1, 'Silver Meadow', 'Smaller stage for acoustic and folk sets.', 10000, 'Acoustic setup, canopy, benches', NULL, NULL, 10, 20),

-- Festival 2018 
(2, 'Coachella Stage', 'Main hub for massive performances.', 70000, 'Full LED panels, hydraulic lifts, pyrotechnics', 'https://example.com/coachellastage.jpg', 'The desert explodes with lights.', 45, 90),
(2, 'Mojave Tent', 'Covered stage with immersive sound.', 20000, 'Surround sound, blackouts, LED curtain', NULL, NULL, 20, 40),
(2, 'Gobi Tent', 'Intimate performances and DJ sets.', 15000, 'DJ booth, haze machine, monitor setup', NULL, NULL, 15, 25),

-- Festival 2019 
(3, 'Primavera Stage', 'Waterside stage with scenic views.', 30000, 'Standard festival gear, generators', 'https://example.com/primavera.jpg', 'Primavera vibes under the stars.', 20, 40),
(3, 'Ray-Ban Stage', 'Trendy acts and electronic showcases.', 25000, 'Mixers, subs, LED walls', NULL, NULL, 18, 35),
(3, 'NightPro Dome', 'Late-night dance parties and techno.', 10000, 'DJ gear, projection mapping', NULL, NULL, 12, 20),

-- Festival 2020
(4, 'Zilker Main', 'Massive open-air stage for Texas legends.', 60000, 'Mic array, cooling fans, video wall', 'https://example.com/aclmain.jpg', 'Austin’s heart beats here.', 35, 60),
(4, 'Lone Star Lounge', 'Blues, soul, and southern rock stage.', 20000, 'PA, retro lighting, seating area', NULL, NULL, 18, 30),
(4, 'Hilltop Stage', 'Overlooks the park, great for indie acts.', 12000, 'Basic sound rig, small LED screen', NULL, NULL, 10, 18),

-- Festival 2021 
(5, 'Rock Arena', 'Main stage built on airstrip runway.', 50000, 'Heavy-duty sound system, fireworks system', NULL, NULL, 40, 80),
(5, 'Hangar B', 'Indoor warehouse stage for rock acts.', 25000, 'Concert lighting, truss system', NULL, NULL, 25, 50),
(5, 'Garage Stage', 'DIY, punk, and hardcore venue.', 8000, 'Minimal setup, crowd barriers', NULL, NULL, 8, 15),

-- Festival 2022
(6, 'GovBall NYC Stage', 'Skyline view and massive sound.', 65000, 'Jumbotrons, city-safe rigging', 'https://example.com/govball.jpg', 'Urban festival energy.', 38, 70),
(6, 'Honda Stage', 'Pop and hip-hop central.', 30000, 'LED tunnels, CO2 cannons', NULL, NULL, 22, 40),
(6, 'Big Apple Bass', 'EDM and club tracks stage.', 20000, 'Turntables, strobes, lasers', NULL, NULL, 18, 30),

-- Festival 2023
(7, 'Green Stage', 'Japan’s biggest open-air stage.', 50000, 'Weather-resistant gear, eco lighting', NULL, NULL, 30, 55),
(7, 'White Stage', 'Alternative rock and fusion.', 30000, 'Custom scaffolding, video feeds', NULL, NULL, 20, 38),
(7, 'Red Marquee', 'Indoor club stage in the forest.', 15000, 'Enclosed lighting, soundproof walls', NULL, NULL, 15, 25),

-- Festival 2024
(8, 'León Main Stage', 'Main stage with Mexican pride.', 45000, 'Custom-built roof, colorful backdrops', NULL, NULL, 28, 50),
(8, 'Norte Soundwave', 'Stage dedicated to Latin and reggaeton.', 22000, 'Bass-focused setup, dancers’ runway', NULL, NULL, 20, 35),
(8, 'Cumbia Garden', 'Traditional and folk stages with live bands.', 12000, 'Live band equipment, acoustic mics', NULL, NULL, 12, 20),

-- Festival 2025
(9, 'Tøyen Main', 'Set in Oslo’s Tøyen Park.', 35000, 'Environmental-friendly gear, smart LEDs', NULL, NULL, 25, 40),
(9, 'Arctic Stage', 'Chill beats and ambient sounds.', 18000, 'Low-power rig, surround seating', NULL, NULL, 12, 20),
(9, 'Eco Dome', 'Green-powered stage with soft acoustics.', 10000, 'Solar-powered lights, modular panels', NULL, NULL, 10, 18),

-- Festival 2026
(10, 'Legacy Stage', 'Built on the original Woodstock field.', 60000, 'Classic retro gear + modern touch', NULL, NULL, 40, 70),
(10, 'Peace Pavilion', 'Experimental, folk, and art performances.', 20000, 'Minimalist setup, solar sound', NULL, NULL, 18, 30),
(10, 'Revival Grove', 'Surrounded by trees, intimate vibes.', 10000, 'Portable stage, canopy, nature-safe gear', NULL, NULL, 10, 20);

-- Load data into Staff table
INSERT INTO Staff (name, age, staff_image_url, staff_image_description, role, experience_level) VALUES
('Alex Johnson', 29, 'https://example.com/staff/alex.jpg', 'Technical crew member on sound duty.', 'Technical', 'Experienced'),
('Maria Lopez', 34, NULL, NULL, 'Security', 'Very Experienced'),
('James Smith', 22, NULL, NULL, 'Support', 'Beginner'),
('Lina Cheng', 27, 'https://example.com/staff/lina.jpg', 'Monitors lighting rigs.', 'Technical', 'Intermediate'),
('Omar Nasser', 31, NULL, NULL, 'Security', 'Experienced'),
('Emily Davis', 25, NULL, NULL, 'Support', 'Trainee'),
('Sven Erikson', 40, NULL, NULL, 'Security', 'Very Experienced'),
('Nina Petrova', 28, NULL, NULL, 'Technical', 'Intermediate'),
('Ahmed El-Masri', 35, NULL, NULL, 'Security', 'Experienced'),
('Julia Ross', 30, 'https://example.com/staff/julia.jpg', 'Handles artist transitions.', 'Support', 'Intermediate'),

('Liam O’Brien', 26, NULL, NULL, 'Security', 'Beginner'),
('Stelios Vantarakis', 12, NULL, NULL, 'Support', 'Beginner'),
('Carlos Méndez', 38, NULL, NULL, 'Security', 'Very Experienced'),
('Freya Anders', 29, NULL, NULL, 'Technical', 'Experienced'),
('George Taylor', 33, NULL, NULL, 'Security', 'Experienced'),
('Mina Hwang', 21, NULL, NULL, 'Support', 'Trainee'),
('Tomás Duarte', 27, NULL, NULL, 'Technical', 'Beginner'),
('Olga Ivanova', 36, NULL, NULL, 'Security', 'Experienced'),
('David Kim', 28, NULL, NULL, 'Technical', 'Intermediate'),
('Chloe Martin', 30, NULL, NULL, 'Support', 'Experienced'),

('Andi Zykaj', 94, NULL, NULL, 'Security', 'Very Experienced'),
('Sofia Ruiz', 23, NULL, NULL, 'Support', 'Beginner'),
('Leo Dubois', 25, NULL, NULL, 'Technical', 'Trainee'),
('Katarina Novak', 29, NULL, NULL, 'Security', 'Intermediate'),
('Mateo Costa', 35, NULL, NULL, 'Technical', 'Experienced'),
('Aisha Khan', 26, NULL, NULL, 'Support', 'Intermediate'),
('Jonas Becker', 39, NULL, NULL, 'Security', 'Very Experienced'),
('Helena Nilsson', 31, NULL, NULL, 'Technical', 'Very Experienced'),
('Rami Haddad', 34, NULL, NULL, 'Support', 'Experienced'),
('Keiko Tanaka', 27, NULL, NULL, 'Security', 'Intermediate');

-- Load data into StageStaff table
INSERT INTO StageStaff (stage_id, staff_id, date) VALUES
(1, 15, '2017-07-01'),
(1, 18, '2017-07-01'),
(1, 27, '2017-07-01'),
(1, 2, '2017-07-01'),
(1, 29, '2017-07-01'),
(1, 14, '2017-07-01'),
(1, 28, '2017-07-01'),
(1, 18, '2017-07-02'),
(1, 13, '2017-07-02'),
(1, 27, '2017-07-02'),
(1, 21, '2017-07-02'),
(1, 29, '2017-07-02'),
(1, 26, '2017-07-02'),
(1, 14, '2017-07-02'),
(1, 15, '2017-07-03'),
(1, 9, '2017-07-03'),
(1, 18, '2017-07-03'),
(1, 16, '2017-07-03'),
(1, 12, '2017-07-03'),
(1, 28, '2017-07-03'),
(2, 11, '2017-07-01'),
(2, 30, '2017-07-01'),
(2, 6, '2017-07-01'),
(2, 3, '2017-07-01'),
(2, 19, '2017-07-01'),
(2, 23, '2017-07-01'),
(2, 17, '2017-07-01'),
(2, 24, '2017-07-02'),
(2, 21, '2017-07-02'),
(2, 22, '2017-07-02'),
(2, 3, '2017-07-02'),
(2, 23, '2017-07-02'),
(2, 24, '2017-07-03'),
(2, 11, '2017-07-03'),
(2, 21, '2017-07-03'),
(2, 18, '2017-07-03'),
(2, 3, '2017-07-03'),
(2, 19, '2017-07-03'),
(2, 1, '2017-07-03'),
(3, 5, '2017-07-01'),
(3, 7, '2017-07-01'),
(3, 15, '2017-07-01'),
(3, 20, '2017-07-01'),
(3, 26, '2017-07-01'),
(3, 25, '2017-07-01'),
(3, 28, '2017-07-01'),
(3, 9, '2017-07-02'),
(3, 13, '2017-07-02'),
(3, 5, '2017-07-02'),
(3, 2, '2017-07-02'),
(3, 26, '2017-07-02'),
(3, 16, '2017-07-02'),
(3, 19, '2017-07-02'),
(3, 15, '2017-07-03'),
(3, 18, '2017-07-03'),
(3, 29, '2017-07-03'),
(3, 17, '2017-07-03'),
(3, 4, '2017-07-03'),
(4, 24, '2018-04-14'),
(4, 2, '2018-04-14'),
(4, 16, '2018-04-14'),
(4, 26, '2018-04-14'),
(4, 4, '2018-04-14'),
(4, 14, '2018-04-14'),
(4, 5, '2018-04-15'),
(4, 9, '2018-04-15'),
(4, 13, '2018-04-15'),
(4, 3, '2018-04-15'),
(4, 14, '2018-04-15'),
(4, 4, '2018-04-15'),
(4, 1, '2018-04-15'),
(4, 24, '2018-04-16'),
(4, 15, '2018-04-16'),
(4, 26, '2018-04-16'),
(4, 1, '2018-04-16'),
(4, 23, '2018-04-16'),
(4, 17, '2018-04-16'),
(5, 9, '2018-04-14'),
(5, 13, '2018-04-14'),
(5, 11, '2018-04-14'),
(5, 26, '2018-04-14'),
(5, 19, '2018-04-14'),
(5, 25, '2018-04-14'),
(5, 8, '2018-04-14'),
(5, 11, '2018-04-15'),
(5, 15, '2018-04-15'),
(5, 13, '2018-04-15'),
(5, 27, '2018-04-15'),
(5, 12, '2018-04-15'),
(5, 16, '2018-04-15'),
(5, 14, '2018-04-15'),
(5, 1, '2018-04-15'),
(5, 7, '2018-04-16'),
(5, 11, '2018-04-16'),
(5, 5, '2018-04-16'),
(5, 22, '2018-04-16'),
(5, 4, '2018-04-16'),
(6, 24, '2018-04-14'),
(6, 15, '2018-04-14'),
(6, 30, '2018-04-14');

-- Load data into StageStaff table
INSERT INTO StageStaff (stage_id, staff_id, date) VALUES
(6, 20, '2018-04-14'),
(6, 10, '2018-04-14'),
(6, 28, '2018-04-14'),
(6, 15, '2018-04-15'),
(6, 13, '2018-04-15'),
(6, 10, '2018-04-15'),
(6, 14, '2018-04-15'),
(6, 19, '2018-04-15'),
(6, 5, '2018-04-16'),
(6, 18, '2018-04-16'),
(6, 15, '2018-04-16'),
(6, 6, '2018-04-16'),
(6, 16, '2018-04-16'),
(6, 25, '2018-04-16'),
(7, 9, '2019-06-01'),
(7, 27, '2019-06-01'),
(7, 2, '2019-06-01'),
(7, 12, '2019-06-01'),
(7, 3, '2019-06-01'),
(7, 28, '2019-06-01'),
(7, 14, '2019-06-01'),
(7, 13, '2019-06-02'),
(7, 9, '2019-06-02'),
(7, 27, '2019-06-02'),
(7, 29, '2019-06-02'),
(7, 19, '2019-06-02'),
(7, 23, '2019-06-02'),
(7, 15, '2019-06-03'),
(7, 21, '2019-06-03'),
(7, 30, '2019-06-03'),
(7, 2, '2019-06-03'),
(7, 26, '2019-06-03'),
(7, 17, '2019-06-03'),
(8, 11, '2019-06-01'),
(8, 5, '2019-06-01'),
(8, 7, '2019-06-01'),
(8, 3, '2019-06-01'),
(8, 20, '2019-06-01'),
(8, 19, '2019-06-01'),
(8, 1, '2019-06-01'),
(8, 14, '2019-06-01'),
(8, 5, '2019-06-02'),
(8, 13, '2019-06-02'),
(8, 27, '2019-06-02'),
(8, 21, '2019-06-02'),
(8, 16, '2019-06-02'),
(8, 28, '2019-06-02'),
(8, 23, '2019-06-02'),
(8, 18, '2019-06-03'),
(8, 7, '2019-06-03'),
(8, 13, '2019-06-03'),
(8, 5, '2019-06-03'),
(8, 6, '2019-06-03'),
(8, 4, '2019-06-03'),
(8, 23, '2019-06-03'),
(9, 7, '2019-06-01'),
(9, 9, '2019-06-01'),
(9, 21, '2019-06-01'),
(9, 16, '2019-06-01'),
(9, 23, '2019-06-01'),
(9, 27, '2019-06-02'),
(9, 30, '2019-06-02'),
(9, 5, '2019-06-02'),
(9, 18, '2019-06-02'),
(9, 22, '2019-06-02'),
(9, 25, '2019-06-02'),
(9, 28, '2019-06-02'),
(9, 13, '2019-06-03'),
(9, 21, '2019-06-03'),
(9, 11, '2019-06-03'),
(9, 3, '2019-06-03'),
(9, 26, '2019-06-03'),
(9, 8, '2019-06-03'),
(9, 19, '2019-06-03'),
(10, 9, '2020-10-04'),
(10, 7, '2020-10-04'),
(10, 21, '2020-10-04'),
(10, 18, '2020-10-04'),
(10, 10, '2020-10-04'),
(10, 23, '2020-10-04'),
(10, 7, '2020-10-05'),
(10, 11, '2020-10-05'),
(10, 20, '2020-10-05'),
(10, 4, '2020-10-05'),
(10, 28, '2020-10-05'),
(10, 1, '2020-10-05'),
(10, 21, '2020-10-06'),
(10, 7, '2020-10-06'),
(10, 20, '2020-10-06'),
(10, 6, '2020-10-06'),
(10, 28, '2020-10-06'),
(11, 30, '2020-10-04'),
(11, 2, '2020-10-04'),
(11, 6, '2020-10-04'),
(11, 4, '2020-10-04'),
(11, 8, '2020-10-04'),
(11, 1, '2020-10-04'),
(11, 5, '2020-10-05'),
(11, 24, '2020-10-05'),
(11, 18, '2020-10-05');

-- Load data into StageStaff table
INSERT INTO StageStaff (stage_id, staff_id, date) VALUES
(11, 22, '2020-10-05'),
(11, 8, '2020-10-05'),
(11, 11, '2020-10-06'),
(11, 9, '2020-10-06'),
(11, 15, '2020-10-06'),
(11, 18, '2020-10-06'),
(11, 10, '2020-10-06'),
(11, 1, '2020-10-06'),
(11, 25, '2020-10-06'),
(11, 17, '2020-10-06'),
(12, 15, '2020-10-04'),
(12, 30, '2020-10-04'),
(12, 2, '2020-10-04'),
(12, 11, '2020-10-04'),
(12, 29, '2020-10-04'),
(12, 28, '2020-10-04'),
(12, 11, '2020-10-05'),
(12, 18, '2020-10-05'),
(12, 27, '2020-10-05'),
(12, 15, '2020-10-05'),
(12, 12, '2020-10-05'),
(12, 6, '2020-10-05'),
(12, 28, '2020-10-05'),
(12, 2, '2020-10-06'),
(12, 7, '2020-10-06'),
(12, 30, '2020-10-06'),
(12, 29, '2020-10-06'),
(12, 10, '2020-10-06'),
(12, 4, '2020-10-06'),
(12, 14, '2020-10-06'),
(12, 25, '2020-10-06'),
(13, 2, '2021-07-10'),
(13, 18, '2021-07-10'),
(13, 24, '2021-07-10'),
(13, 11, '2021-07-10'),
(13, 20, '2021-07-10'),
(13, 1, '2021-07-10'),
(13, 17, '2021-07-10'),
(13, 30, '2021-07-11'),
(13, 13, '2021-07-11'),
(13, 5, '2021-07-11'),
(13, 20, '2021-07-11'),
(13, 6, '2021-07-11'),
(13, 4, '2021-07-11'),
(13, 23, '2021-07-11'),
(13, 7, '2021-07-12'),
(13, 21, '2021-07-12'),
(13, 29, '2021-07-12'),
(13, 16, '2021-07-12'),
(13, 28, '2021-07-12'),
(13, 17, '2021-07-12'),
(14, 18, '2021-07-10'),
(14, 27, '2021-07-10'),
(14, 24, '2021-07-10'),
(14, 26, '2021-07-10'),
(14, 4, '2021-07-10'),
(14, 28, '2021-07-10'),
(14, 7, '2021-07-11'),
(14, 21, '2021-07-11'),
(14, 18, '2021-07-11'),
(14, 15, '2021-07-11'),
(14, 10, '2021-07-11'),
(14, 23, '2021-07-11'),
(14, 4, '2021-07-11'),
(14, 18, '2021-07-12'),
(14, 2, '2021-07-12'),
(14, 27, '2021-07-12'),
(14, 21, '2021-07-12'),
(14, 20, '2021-07-12'),
(14, 17, '2021-07-12'),
(14, 23, '2021-07-12'),
(14, 28, '2021-07-12'),
(15, 30, '2021-07-10'),
(15, 27, '2021-07-10'),
(15, 11, '2021-07-10'),
(15, 5, '2021-07-10'),
(15, 26, '2021-07-10'),
(15, 3, '2021-07-10'),
(15, 4, '2021-07-10'),
(15, 1, '2021-07-10'),
(15, 18, '2021-07-11'),
(15, 30, '2021-07-11'),
(15, 5, '2021-07-11'),
(15, 9, '2021-07-11'),
(15, 22, '2021-07-11'),
(15, 14, '2021-07-11'),
(15, 19, '2021-07-11'),
(15, 9, '2021-07-12'),
(15, 7, '2021-07-12'),
(15, 27, '2021-07-12'),
(15, 21, '2021-07-12'),
(15, 20, '2021-07-12'),
(15, 22, '2021-07-12'),
(15, 25, '2021-07-12'),
(16, 30, '2022-09-24'),
(16, 21, '2022-09-24'),
(16, 15, '2022-09-24'),
(16, 24, '2022-09-24'),
(16, 10, '2022-09-24'),
(16, 14, '2022-09-24');

-- Load data into StageStaff table
INSERT INTO StageStaff (stage_id, staff_id, date) VALUES
(16, 19, '2022-09-24'),
(16, 2, '2022-09-25'),
(16, 13, '2022-09-25'),
(16, 6, '2022-09-25'),
(16, 25, '2022-09-25'),
(16, 1, '2022-09-25'),
(16, 5, '2022-09-26'),
(16, 27, '2022-09-26'),
(16, 7, '2022-09-26'),
(16, 16, '2022-09-26'),
(16, 6, '2022-09-26'),
(16, 1, '2022-09-26'),
(17, 5, '2022-09-24'),
(17, 24, '2022-09-24'),
(17, 13, '2022-09-24'),
(17, 9, '2022-09-24'),
(17, 22, '2022-09-24'),
(17, 19, '2022-09-24'),
(17, 28, '2022-09-24'),
(17, 17, '2022-09-24'),
(17, 18, '2022-09-25'),
(17, 13, '2022-09-25'),
(17, 3, '2022-09-25'),
(17, 29, '2022-09-25'),
(17, 17, '2022-09-25'),
(17, 14, '2022-09-25'),
(17, 25, '2022-09-25'),
(17, 18, '2022-09-26'),
(17, 21, '2022-09-26'),
(17, 9, '2022-09-26'),
(17, 27, '2022-09-26'),
(17, 29, '2022-09-26'),
(17, 16, '2022-09-26'),
(17, 25, '2022-09-26'),
(17, 28, '2022-09-26'),
(17, 4, '2022-09-26'),
(18, 7, '2022-09-24'),
(18, 13, '2022-09-24'),
(18, 18, '2022-09-24'),
(18, 5, '2022-09-24'),
(18, 12, '2022-09-24'),
(18, 29, '2022-09-24'),
(18, 4, '2022-09-24'),
(18, 15, '2022-09-25'),
(18, 2, '2022-09-25'),
(18, 18, '2022-09-25'),
(18, 24, '2022-09-25'),
(18, 22, '2022-09-25'),
(18, 14, '2022-09-25'),
(18, 13, '2022-09-26'),
(18, 27, '2022-09-26'),
(18, 2, '2022-09-26'),
(18, 3, '2022-09-26'),
(18, 16, '2022-09-26'),
(18, 25, '2022-09-26'),
(18, 1, '2022-09-26'),
(18, 19, '2022-09-26'),
(19, 24, '2023-08-20'),
(19, 9, '2023-08-20'),
(19, 27, '2023-08-20'),
(19, 7, '2023-08-20'),
(19, 22, '2023-08-20'),
(19, 29, '2023-08-20'),
(19, 23, '2023-08-20'),
(19, 19, '2023-08-20'),
(19, 11, '2023-08-21'),
(19, 7, '2023-08-21'),
(19, 27, '2023-08-21'),
(19, 20, '2023-08-21'),
(19, 4, '2023-08-21'),
(19, 23, '2023-08-21'),
(19, 1, '2023-08-21'),
(19, 15, '2023-08-22'),
(19, 9, '2023-08-22'),
(19, 13, '2023-08-22'),
(19, 11, '2023-08-22'),
(19, 29, '2023-08-22'),
(19, 25, '2023-08-22'),
(19, 1, '2023-08-22'),
(19, 8, '2023-08-22'),
(20, 27, '2023-08-20'),
(20, 11, '2023-08-20'),
(20, 5, '2023-08-20'),
(20, 16, '2023-08-20'),
(20, 22, '2023-08-20'),
(20, 14, '2023-08-20'),
(20, 24, '2023-08-21'),
(20, 15, '2023-08-21'),
(20, 6, '2023-08-21'),
(20, 29, '2023-08-21'),
(20, 4, '2023-08-21'),
(20, 23, '2023-08-21'),
(20, 17, '2023-08-21'),
(20, 2, '2023-08-22'),
(20, 18, '2023-08-22'),
(20, 5, '2023-08-22'),
(20, 29, '2023-08-22'),
(20, 4, '2023-08-22'),
(21, 27, '2023-08-20'),
(21, 15, '2023-08-20');

-- Load data into StageStaff table
INSERT INTO StageStaff (stage_id, staff_id, date) VALUES
(21, 24, '2023-08-20'),
(21, 30, '2023-08-20'),
(21, 26, '2023-08-20'),
(21, 14, '2023-08-20'),
(21, 8, '2023-08-20'),
(21, 27, '2023-08-21'),
(21, 21, '2023-08-21'),
(21, 15, '2023-08-21'),
(21, 16, '2023-08-21'),
(21, 6, '2023-08-21'),
(21, 1, '2023-08-21'),
(21, 13, '2023-08-22'),
(21, 30, '2023-08-22'),
(21, 6, '2023-08-22'),
(21, 26, '2023-08-22'),
(21, 17, '2023-08-22'),
(21, 4, '2023-08-22'),
(22, 9, '2024-03-31'),
(22, 30, '2024-03-31'),
(22, 22, '2024-03-31'),
(22, 10, '2024-03-31'),
(22, 14, '2024-03-31'),
(22, 8, '2024-03-31'),
(22, 17, '2024-03-31'),
(22, 15, '2024-04-01'),
(22, 24, '2024-04-01'),
(22, 21, '2024-04-01'),
(22, 5, '2024-04-01'),
(22, 29, '2024-04-01'),
(22, 3, '2024-04-01'),
(22, 1, '2024-04-01'),
(22, 25, '2024-04-01'),
(22, 9, '2024-04-02'),
(22, 27, '2024-04-02'),
(22, 3, '2024-04-02'),
(22, 22, '2024-04-02'),
(22, 17, '2024-04-02'),
(23, 30, '2024-03-31'),
(23, 15, '2024-03-31'),
(23, 6, '2024-03-31'),
(23, 22, '2024-03-31'),
(23, 8, '2024-03-31'),
(23, 1, '2024-03-31'),
(23, 25, '2024-03-31'),
(23, 27, '2024-04-01'),
(23, 15, '2024-04-01'),
(23, 30, '2024-04-01'),
(23, 18, '2024-04-01'),
(23, 12, '2024-04-01'),
(23, 19, '2024-04-01'),
(23, 4, '2024-04-01'),
(23, 23, '2024-04-01'),
(23, 5, '2024-04-02'),
(23, 7, '2024-04-02'),
(23, 2, '2024-04-02'),
(23, 3, '2024-04-02'),
(23, 4, '2024-04-02'),
(23, 28, '2024-04-02'),
(23, 17, '2024-04-02'),
(24, 18, '2024-03-31'),
(24, 15, '2024-03-31'),
(24, 22, '2024-03-31'),
(24, 6, '2024-03-31'),
(24, 25, '2024-03-31'),
(24, 8, '2024-03-31'),
(24, 1, '2024-03-31'),
(24, 2, '2024-04-01'),
(24, 9, '2024-04-01'),
(24, 26, '2024-04-01'),
(24, 10, '2024-04-01'),
(24, 4, '2024-04-01'),
(24, 17, '2024-04-01'),
(24, 14, '2024-04-01'),
(24, 21, '2024-04-02'),
(24, 9, '2024-04-02'),
(24, 24, '2024-04-02'),
(24, 15, '2024-04-02'),
(24, 12, '2024-04-02'),
(24, 28, '2024-04-02'),
(24, 23, '2024-04-02'),
(25, 2, '2025-07-18'),
(25, 7, '2025-07-18'),
(25, 13, '2025-07-18'),
(25, 27, '2025-07-18'),
(25, 6, '2025-07-18'),
(25, 20, '2025-07-18'),
(25, 25, '2025-07-18'),
(25, 14, '2025-07-18'),
(25, 28, '2025-07-18'),
(25, 13, '2025-07-19'),
(25, 24, '2025-07-19'),
(25, 9, '2025-07-19'),
(25, 12, '2025-07-19'),
(25, 26, '2025-07-19'),
(25, 19, '2025-07-19'),
(25, 9, '2025-07-20'),
(25, 2, '2025-07-20'),
(25, 29, '2025-07-20'),
(25, 23, '2025-07-20'),
(25, 1, '2025-07-20');

-- Load data into StageStaff table
INSERT INTO StageStaff (stage_id, staff_id, date) VALUES
(25, 28, '2025-07-20'),
(26, 15, '2025-07-18'),
(26, 27, '2025-07-18'),
(26, 20, '2025-07-18'),
(26, 16, '2025-07-18'),
(26, 8, '2025-07-18'),
(26, 28, '2025-07-18'),
(26, 19, '2025-07-18'),
(26, 21, '2025-07-19'),
(26, 5, '2025-07-19'),
(26, 2, '2025-07-19'),
(26, 16, '2025-07-19'),
(26, 23, '2025-07-19'),
(26, 25, '2025-07-19'),
(26, 27, '2025-07-20'),
(26, 30, '2025-07-20'),
(26, 15, '2025-07-20'),
(26, 10, '2025-07-20'),
(26, 17, '2025-07-20'),
(26, 25, '2025-07-20'),
(26, 4, '2025-07-20'),
(27, 2, '2025-07-18'),
(27, 13, '2025-07-18'),
(27, 11, '2025-07-18'),
(27, 29, '2025-07-18'),
(27, 3, '2025-07-18'),
(27, 25, '2025-07-18'),
(27, 21, '2025-07-19'),
(27, 11, '2025-07-19'),
(27, 13, '2025-07-19'),
(27, 7, '2025-07-19'),
(27, 6, '2025-07-19'),
(27, 19, '2025-07-19'),
(27, 14, '2025-07-19'),
(27, 5, '2025-07-20'),
(27, 2, '2025-07-20'),
(27, 30, '2025-07-20'),
(27, 16, '2025-07-20'),
(27, 14, '2025-07-20'),
(27, 1, '2025-07-20'),
(28, 24, '2026-08-14'),
(28, 13, '2026-08-14'),
(28, 27, '2026-08-14'),
(28, 3, '2026-08-14'),
(28, 20, '2026-08-14'),
(28, 14, '2026-08-14'),
(28, 19, '2026-08-14'),
(28, 27, '2026-08-15'),
(28, 30, '2026-08-15'),
(28, 6, '2026-08-15'),
(28, 17, '2026-08-15'),
(28, 11, '2026-08-16'),
(28, 9, '2026-08-16'),
(28, 27, '2026-08-16'),
(28, 3, '2026-08-16'),
(28, 12, '2026-08-16'),
(28, 14, '2026-08-16'),
(28, 8, '2026-08-16'),
(28, 4, '2026-08-16'),
(29, 18, '2026-08-14'),
(29, 24, '2026-08-14'),
(29, 13, '2026-08-14'),
(29, 27, '2026-08-14'),
(29, 16, '2026-08-14'),
(29, 20, '2026-08-14'),
(29, 1, '2026-08-14'),
(29, 14, '2026-08-14'),
(29, 15, '2026-08-15'),
(29, 13, '2026-08-15'),
(29, 9, '2026-08-15'),
(29, 18, '2026-08-15'),
(29, 16, '2026-08-15'),
(29, 29, '2026-08-15'),
(29, 14, '2026-08-15'),
(29, 18, '2026-08-16'),
(29, 7, '2026-08-16'),
(29, 12, '2026-08-16'),
(29, 26, '2026-08-16'),
(29, 17, '2026-08-16'),
(29, 23, '2026-08-16'),
(30, 15, '2026-08-14'),
(30, 18, '2026-08-14'),
(30, 7, '2026-08-14'),
(30, 10, '2026-08-14'),
(30, 23, '2026-08-14'),
(30, 1, '2026-08-14'),
(30, 24, '2026-08-15'),
(30, 15, '2026-08-15'),
(30, 13, '2026-08-15'),
(30, 3, '2026-08-15'),
(30, 23, '2026-08-15'),
(30, 4, '2026-08-15'),
(30, 1, '2026-08-15'),
(30, 15, '2026-08-16'),
(30, 5, '2026-08-16'),
(30, 21, '2026-08-16'),
(30, 22, '2026-08-16'),
(30, 26, '2026-08-16'),
(30, 8, '2026-08-16'),
(30, 23, '2026-08-16');

-- Load data into Artists table (Solo Artists Only)
INSERT INTO Artists (name, pseudonym, birthdate, website, artist_image_url, artist_image_description, instagram_profile) VALUES
('Patrick Tapia', 'Jamesrodgers', '1973-01-16', 'https://www.phillips.com/', 'https://dummyimage.com/619x28', 'Artist promo shot', NULL),
('William Tran', NULL, '2001-09-08', 'http://salas.com/', 'https://placeimg.com/961/980/any', 'Artist promo shot', NULL),
('Vincent King', NULL, '1986-09-27', 'http://www.vasquez-ray.com/', 'https://placekitten.com/310/305', 'Artist promo shot', 'https://instagram.com/mcknightdavid'),
('Lisa Gibbs', 'Kimberlyjames', '1984-05-09', 'https://carroll-brown.com/', 'https://placekitten.com/425/432', 'Artist promo shot', 'https://instagram.com/mooreglenn'),
('Aaron Hayes', NULL, '1994-08-21', 'https://hall.com/', 'https://dummyimage.com/929x145', 'Artist promo shot', NULL),
('Rachel Weber', 'Ronaldstephens', '1998-04-20', 'http://jones.com/', 'https://www.lorempixel.com/591/899', 'Artist promo shot', 'https://instagram.com/sbarker'),
('Dillon Fernandez', NULL, '1984-01-07', 'http://www.navarro-munoz.com/', 'https://www.lorempixel.com/187/468', 'Artist promo shot', 'https://instagram.com/barbara27'),
('Jessica Ramirez', 'Fwalters', '1960-06-08', 'https://cook-santiago.com/', 'https://placeimg.com/675/843/any', 'Artist promo shot', 'https://instagram.com/elaine68'),
('Brandon King', 'Cordovarichard', '1989-03-31', NULL, 'https://placeimg.com/2/946/any', 'Artist promo shot', 'https://instagram.com/lopezmichael'),
('Lori Wolf', NULL, '1968-01-30', 'https://www.kim-wolfe.com/', 'https://dummyimage.com/59x490', 'Artist promo shot', 'https://instagram.com/andrea86'),
('Willie Durham', NULL, '1985-08-18', NULL, 'https://placeimg.com/240/315/any', 'Artist promo shot', NULL),
('Dorothy Thornton', NULL, '1982-07-03', NULL, 'https://dummyimage.com/988x967', 'Artist promo shot', 'https://instagram.com/yarnold'),
('Kyle Francis', 'Michellehill', '1982-06-19', 'https://campbell.org/', 'https://placeimg.com/1002/304/any', 'Artist promo shot', 'https://instagram.com/jreed'),
('Jamie Cantu', 'Tinaallen', '1980-04-15', 'http://flores.biz/', 'https://placeimg.com/790/311/any', 'Artist promo shot', NULL),
('Beth Sanford', 'Molly71', '1990-01-07', NULL, 'https://dummyimage.com/935x31', 'Artist promo shot', 'https://instagram.com/jpitts'),
('Richard Baker', 'Vsantos', '2000-02-13', NULL, 'https://placeimg.com/778/648/any', 'Artist promo shot', NULL),
('Amanda Jones', NULL, '1997-03-06', NULL, 'https://www.lorempixel.com/588/465', 'Artist promo shot', 'https://instagram.com/wgood'),
('Shelia Wallace', 'Rebecca05', '1958-01-17', NULL, 'https://placekitten.com/600/734', 'Artist promo shot', 'https://instagram.com/hthomas'),
('Michael White', NULL, '1966-02-21', NULL, 'https://dummyimage.com/161x783', 'Artist promo shot', 'https://instagram.com/jdurham'),
('Mark Stevens', NULL, '1999-08-10', 'http://byrd-moore.info/', 'https://placeimg.com/707/612/any', 'Artist promo shot', NULL),
('Joyce Turner', 'Gcastaneda', '1970-05-15', NULL, 'https://placekitten.com/781/735', 'Artist promo shot', 'https://instagram.com/andrew64'),
('Sean Osborne', 'Lozanojulie', '1973-09-14', 'http://fields.com/', 'https://www.lorempixel.com/280/198', 'Artist promo shot', 'https://instagram.com/kristina09'),
('Carlos Browning', 'Julie23', '1963-03-22', 'https://scott.com/', 'https://placeimg.com/693/235/any', 'Artist promo shot', NULL),
('Brenda Levy', 'Zcoffey', '1992-02-26', 'https://www.smith-herrera.info/', 'https://placeimg.com/754/536/any', 'Artist promo shot', 'https://instagram.com/daniel37'),
('Stephen Hoffman', 'Deborahreid', '1985-10-27', 'https://taylor.com/', 'https://www.lorempixel.com/1008/237', 'Artist promo shot', 'https://instagram.com/paigetaylor'),
('Michael Paul', NULL, '1990-12-27', 'https://www.pena-bass.org/', 'https://www.lorempixel.com/835/572', 'Artist promo shot', NULL),
('Claudia Wallace', 'Melissagarcia', '2000-11-20', 'https://sanders.com/', 'https://dummyimage.com/931x187', 'Artist promo shot', 'https://instagram.com/williamsmatthew'),
('Rachel Harris DVM', 'Brendali', '1970-01-31', 'https://www.smith.com/', 'https://www.lorempixel.com/513/357', 'Artist promo shot', NULL),
('Allison Smith', 'Briannasmith', '1972-04-14', 'http://www.fisher.info/', 'https://placeimg.com/741/223/any', 'Artist promo shot', NULL),
('Theresa Williams', NULL, '1999-01-25', 'https://maynard.biz/', 'https://placeimg.com/873/221/any', 'Artist promo shot', 'https://instagram.com/fjones'),
('Charles Martinez', 'Oscar98', '1974-04-18', NULL, 'https://www.lorempixel.com/929/881', 'Artist promo shot', NULL),
('Ashley Pena', NULL, '2006-07-22', 'http://beasley-gutierrez.info/', 'https://www.lorempixel.com/816/851', 'Artist promo shot', 'https://instagram.com/ronald45'),
('Melissa Wells', NULL, '1960-06-08', NULL, 'https://placeimg.com/174/190/any', 'Artist promo shot', 'https://instagram.com/garnernathan'),
('Anthony Frye', NULL, '1992-06-13', 'https://www.gomez-ortega.biz/', 'https://placekitten.com/105/589', 'Artist promo shot', 'https://instagram.com/dale83'),
('John Boone', NULL, '1978-01-20', 'https://www.andrews-aguirre.net/', 'https://www.lorempixel.com/53/547', 'Artist promo shot', 'https://instagram.com/joshuafarmer'),
('Heather White', NULL, '1963-12-23', 'https://www.figueroa.com/', 'https://placeimg.com/440/770/any', 'Artist promo shot', 'https://instagram.com/xpeterson'),
('Frederick Pugh', 'Wareeric', '2005-07-26', 'http://www.ramos-coleman.org/', 'https://placekitten.com/905/848', 'Artist promo shot', 'https://instagram.com/kariwilson'),
('Douglas Gregory', NULL, '1987-05-06', NULL, 'https://dummyimage.com/631x93', 'Artist promo shot', 'https://instagram.com/djoyce'),
('Eric Clark', NULL, '1963-07-26', 'https://wilson-jimenez.biz/', 'https://placeimg.com/359/264/any', 'Artist promo shot', 'https://instagram.com/vincentwhitaker'),
('Andrea Hensley', NULL, '1957-02-08', NULL, 'https://placeimg.com/893/38/any', 'Artist promo shot', 'https://instagram.com/atkinsbarbara'),
('Michelle Butler', 'Sullivantammy', '1965-12-03', 'https://kim.com/', 'https://www.lorempixel.com/892/820', 'Artist promo shot', 'https://instagram.com/vharrell'),
('Gary Jackson', NULL, '1988-12-19', 'http://www.bell-mullen.com/', 'https://dummyimage.com/483x210', 'Artist promo shot', 'https://instagram.com/james92'),
('Mary Thompson', NULL, '2006-10-27', 'https://wolf.org/', 'https://dummyimage.com/661x647', 'Artist promo shot', 'https://instagram.com/cjones'),
('Rebecca Vargas', 'William47', '1984-12-24', 'http://www.decker-jones.com/', 'https://www.lorempixel.com/787/947', 'Artist promo shot', NULL),
('Robert Pearson', NULL, '1976-02-09', 'https://www.hayes.com/', 'https://dummyimage.com/353x80', 'Artist promo shot', NULL),
('Wendy Warren', NULL, '1995-09-22', 'http://hardin-hughes.com/', 'https://www.lorempixel.com/107/685', 'Artist promo shot', 'https://instagram.com/cody64'),
('Samuel Brandt', 'Mathewaguilar', '1963-11-08', NULL, 'https://placeimg.com/716/635/any', 'Artist promo shot', NULL),
('Michael Miller', NULL, '1992-04-06', NULL, 'https://dummyimage.com/771x672', 'Artist promo shot', 'https://instagram.com/lucasrodney'),
('Jack White', 'Matthewmiranda', '1967-04-18', 'http://www.jones.net/', 'https://dummyimage.com/77x689', 'Artist promo shot', NULL),
('Brittany White', NULL, '2001-05-17', 'http://jenkins.com/', 'https://placeimg.com/909/583/any', 'Artist promo shot', 'https://instagram.com/amandacollins');

-- Load data into ArtistGenre table
INSERT INTO ArtistGenre (artist_id, Genre, SubGenre) VALUES
('1', 'Jazz', NULL),
('2', 'Pop', 'Indie Pop'),
('3', 'Pop', 'Indie Pop'),
('3', 'Jazz', 'Bebop'),
('4', 'Hip-Hop', 'Trap'),
('4', 'Reggae', 'Dub'),
('5', 'Jazz', 'Bebop'),
('6', 'Electronic', NULL),
('6', 'Reggae', NULL),
('7', 'Electronic', 'Trance'),
('7', 'Hip-Hop', 'Trap'),
('8', 'Electronic', 'Techno'),
('9', 'Rock', 'Alternative Rock'),
('10', 'Pop', NULL),
('10', 'Hip-Hop', 'Drill'),
('11', 'Electronic', 'Techno'),
('12', 'Hip-Hop', NULL),
('13', 'Electronic', 'Trance'),
('14', 'Hip-Hop', 'Trap'),
('14', 'Electronic', 'Techno'),
('15', 'Reggae', 'Dancehall'),
('15', 'Pop', 'Synthpop'),
('16', 'Pop', 'Dance Pop'),
('17', 'Hip-Hop', 'Boom Bap'),
('18', 'Electronic', 'Techno'),
('19', 'Pop', 'Synthpop'),
('19', 'Reggae', 'Dancehall'),
('20', 'Reggae', 'Dancehall'),
('21', 'Rock', 'Hard Rock'),
('21', 'Jazz', NULL),
('22', 'Rock', 'Alternative Rock'),
('23', 'Pop', 'Indie Pop'),
('24', 'Reggae', 'Dub'),
('25', 'Jazz', 'Bebop'),
('25', 'Reggae', NULL),
('26', 'Pop', 'Indie Pop'),
('27', 'Rock', 'Hard Rock'),
('27', 'Hip-Hop', 'Boom Bap'),
('28', 'Pop', NULL),
('28', 'Hip-Hop', NULL),
('29', 'Hip-Hop', NULL),
('29', 'Pop', 'Dance Pop'),
('30', 'Electronic', NULL),
('30', 'Jazz', 'Fusion'),
('31', 'Reggae', 'Roots'),
('31', 'Jazz', 'Bebop'),
('32', 'Electronic', NULL),
('32', 'Reggae', 'Roots'),
('33', 'Pop', 'Indie Pop'),
('34', 'Rock', 'Alternative Rock'),
('35', 'Pop', 'Dance Pop'),
('35', 'Rock', 'Indie Rock'),
('36', 'Hip-Hop', 'Trap'),
('37', 'Electronic', NULL),
('37', 'Pop', NULL),
('38', 'Hip-Hop', 'Trap'),
('38', 'Reggae', 'Dub'),
('39', 'Pop', 'Indie Pop'),
('39', 'Rock', 'Alternative Rock'),
('40', 'Pop', NULL),
('41', 'Pop', 'Indie Pop'),
('42', 'Rock', 'Hard Rock'),
('43', 'Jazz', 'Swing'),
('43', 'Rock', 'Alternative Rock'),
('44', 'Pop', 'Dance Pop'),
('44', 'Electronic', 'House'),
('45', 'Rock', 'Alternative Rock'),
('45', 'Hip-Hop', 'Trap'),
('46', 'Rock', NULL),
('47', 'Rock', 'Hard Rock'),
('48', 'Pop', 'Indie Pop'),
('49', 'Pop', 'Dance Pop'),
('50', 'Hip-Hop', 'Drill');

-- Load data into Bands table (Generic Names)
INSERT INTO Bands (name, formation_date, website, instagram_profile, bands_image_url, bands_image_description) VALUES
('The Echoes', '2018-10-10', 'https://adams.biz/', 'https://instagram.com/amymorris', 'https://placekitten.com/163/671', 'Band promotional photo'),
('Midnight Sun', '2005-08-27', 'https://norris.info/', 'https://instagram.com/acostarhonda', 'https://www.lorempixel.com/890/562', 'Band promotional photo'),
('Neon Vibe', '1997-10-12', 'https://owen.com/', 'https://instagram.com/ejohnson', 'https://placekitten.com/483/750', 'Band promotional photo'),
('Lunar Drift', '2008-04-02', 'http://www.cole.com/', 'https://instagram.com/alyssasanders', 'https://www.lorempixel.com/570/511', 'Band promotional photo'),
('Velvet Noise', '1996-02-10', 'http://hughes.com/', 'https://instagram.com/nlewis', 'https://dummyimage.com/584x1005', 'Band promotional photo'),
('Electric Pulse', '1999-05-27', NULL, 'https://instagram.com/melissahayes', 'https://placekitten.com/911/179', 'Band promotional photo'),
('The Soundscape', '2017-12-13', 'https://www.daniels.com/', 'https://instagram.com/william13', 'https://placeimg.com/284/484/any', 'Band promotional photo'),
('Crimson Tide', '1996-02-14', 'https://lara-arnold.org/', 'https://instagram.com/jonesraymond', 'https://placeimg.com/980/841/any', 'Band promotional photo'),
('Ocean Avenue', '2023-03-30', 'http://www.day-cole.net/', NULL, 'https://dummyimage.com/705x262', 'Band promotional photo'),
('Skyline Rhythm', '2021-05-08', 'http://bartlett.com/', 'https://instagram.com/fred53', 'https://www.lorempixel.com/708/581', 'Band promotional photo');

-- Load data into BandMembers table
INSERT INTO BandMembers (band_id, artist_id, band_members_image_url, band_members_image_description) VALUES
('1', '21', 'https://placekitten.com/513/402', 'Band member performance or promo shot'),
('1', '16', 'https://www.lorempixel.com/256/620', 'Band member performance or promo shot'),
('1', '6', 'https://dummyimage.com/345x315', 'Band member performance or promo shot'),
('1', '18', 'https://www.lorempixel.com/691/84', 'Band member performance or promo shot'),
('1', '29', 'https://placekitten.com/166/93', 'Band member performance or promo shot'),
('2', '13', 'https://www.lorempixel.com/431/853', 'Band member performance or promo shot'),
('2', '37', 'https://placekitten.com/1019/593', 'Band member performance or promo shot'),
('2', '15', 'https://placeimg.com/989/501/any', 'Band member performance or promo shot'),
('2', '27', 'https://www.lorempixel.com/609/928', 'Band member performance or promo shot'),
('2', '20', 'https://placeimg.com/122/323/any', 'Band member performance or promo shot'),
('3', '7', 'https://placeimg.com/851/991/any', 'Band member performance or promo shot'),
('3', '23', 'https://dummyimage.com/417x696', 'Band member performance or promo shot'),
('3', '36', 'https://placekitten.com/640/653', 'Band member performance or promo shot'),
('3', '41', 'https://placekitten.com/816/267', 'Band member performance or promo shot'),
('4', '2', 'https://dummyimage.com/217x653', 'Band member performance or promo shot'),
('4', '8', 'https://placekitten.com/955/250', 'Band member performance or promo shot'),
('4', '30', 'https://dummyimage.com/920x507', 'Band member performance or promo shot'),
('4', '24', 'https://placekitten.com/198/103', 'Band member performance or promo shot'),
('4', '38', 'https://dummyimage.com/786x856', 'Band member performance or promo shot'),
('4', '25', 'https://placekitten.com/327/670', 'Band member performance or promo shot'),
('5', '22', 'https://placeimg.com/388/326/any', 'Band member performance or promo shot'),
('5', '42', 'https://placekitten.com/956/1021', 'Band member performance or promo shot'),
('5', '31', 'https://www.lorempixel.com/1018/47', 'Band member performance or promo shot'),
('5', '14', 'https://dummyimage.com/805x936', 'Band member performance or promo shot'),
('5', '17', 'https://www.lorempixel.com/440/722', 'Band member performance or promo shot'),
('6', '11', 'https://placeimg.com/103/576/any', 'Band member performance or promo shot'),
('6', '48', 'https://www.lorempixel.com/963/585', 'Band member performance or promo shot'),
('6', '37', 'https://dummyimage.com/220x882', 'Band member performance or promo shot'),
('6', '19', 'https://placeimg.com/541/749/any', 'Band member performance or promo shot'),
('7', '12', 'https://placeimg.com/749/92/any', 'Band member performance or promo shot'),
('7', '32', 'https://placekitten.com/104/398', 'Band member performance or promo shot'),
('7', '26', 'https://placeimg.com/591/150/any', 'Band member performance or promo shot'),
('8', '34', 'https://www.lorempixel.com/922/572', 'Band member performance or promo shot'),
('8', '3', 'https://placeimg.com/263/198/any', 'Band member performance or promo shot'),
('8', '49', 'https://placekitten.com/764/694', 'Band member performance or promo shot'),
('8', '35', 'https://placeimg.com/295/407/any', 'Band member performance or promo shot'),
('9', '44', 'https://www.lorempixel.com/1024/82', 'Band member performance or promo shot'),
('9', '50', 'https://placekitten.com/79/280', 'Band member performance or promo shot'),
('9', '10', 'https://dummyimage.com/970x935', 'Band member performance or promo shot'),
('10', '33', 'https://placekitten.com/286/671', 'Band member performance or promo shot'),
('10', '28', 'https://placekitten.com/332/804', 'Band member performance or promo shot'),
('10', '9', 'https://placekitten.com/688/1003', 'Band member performance or promo shot'),
('10', '43', 'https://placekitten.com/972/34', 'Band member performance or promo shot'),
('10', '49', 'https://placeimg.com/678/224/any', 'Band member performance or promo shot'),
('10', '1', 'https://placeimg.com/630/54/any', 'Band member performance or promo shot');

-- Load data into Events table
INSERT INTO Events (festival_id, stage_id, name, event_image_url, event_image_description) VALUES
('1', '1', 'Sunset Jam', 'https://placekitten.com/228/51', 'Scene from Sunset Jam'),
('1', '2', 'Midnight Beats', 'https://dummyimage.com/501x457', 'Scene from Midnight Beats'),
('1', '3', 'Electric Vibes', 'https://placeimg.com/209/178/any', 'Scene from Electric Vibes'),
('2', '4', 'Jazz in the Park', 'https://www.lorempixel.com/65/61', 'Scene from Jazz in the Park'),
('2', '5', 'Neon Nights', 'https://www.lorempixel.com/447/476', 'Scene from Neon Nights'),
('2', '6', 'Soulful Sunrise', 'https://dummyimage.com/407x859', 'Scene from Soulful Sunrise'),
('3', '7', 'Indie Pulse', 'https://www.lorempixel.com/919/569', 'Scene from Indie Pulse'),
('3', '8', 'Groove Garden', 'https://placekitten.com/326/865', 'Scene from Groove Garden'),
('3', '9', 'Soundstorm', 'https://dummyimage.com/569x318', 'Scene from Soundstorm'),
('4', '10', 'Bassline Boulevard', 'https://www.lorempixel.com/689/209', 'Scene from Bassline Boulevard'),
('4', '11', 'Rock Revival', 'https://placekitten.com/778/198', 'Scene from Rock Revival'),
('4', '12', 'Acoustic Hour', 'https://www.lorempixel.com/704/541', 'Scene from Acoustic Hour'),
('5', '13', 'Fusion Frenzy', 'https://placeimg.com/940/255/any', 'Scene from Fusion Frenzy'),
('5', '14', 'Drum & Bass Drop', 'https://placekitten.com/161/600', 'Scene from Drum & Bass Drop'),
('5', '15', 'Rhythm Riot', 'https://www.lorempixel.com/393/142', 'Scene from Rhythm Riot'),
('6', '16', 'Cosmic Tones', 'https://www.lorempixel.com/466/592', 'Scene from Cosmic Tones'),
('6', '17', 'Lounge Vibes', 'https://placeimg.com/476/206/any', 'Scene from Lounge Vibes'),
('6', '18', 'Hardwired', 'https://placekitten.com/569/928', 'Scene from Hardwired'),
('7', '19', 'Melody Mirage', 'https://placekitten.com/333/758', 'Scene from Melody Mirage'),
('7', '20', 'Urban Echoes', 'https://www.lorempixel.com/429/546', 'Scene from Urban Echoes'),
('7', '21', 'Moonlight Sessions', 'https://dummyimage.com/350x501', 'Scene from Moonlight Sessions'),
('8', '22', 'Stage Surge', 'https://placekitten.com/946/777', 'Scene from Stage Surge'),
('8', '23', 'Firelight Festival', 'https://www.lorempixel.com/449/664', 'Scene from Firelight Festival'),
('8', '24', 'Downtempo Dreams', 'https://placekitten.com/469/65', 'Scene from Downtempo Dreams'),
('9', '25', 'Amped Up', 'https://www.lorempixel.com/821/548', 'Scene from Amped Up'),
('9', '26', 'Vinyl Valley', 'https://dummyimage.com/432x644', 'Scene from Vinyl Valley'),
('9', '27', 'Pulsewave', 'https://placeimg.com/1022/810/any', 'Scene from Pulsewave'),
('10', '28', 'Treble Peak', 'https://dummyimage.com/292x542', 'Scene from Treble Peak'),
('10', '29', 'Chillwave Circuit', 'https://placeimg.com/505/538/any', 'Scene from Chillwave Circuit'),
('10', '30', 'Finale Night', 'https://dummyimage.com/817x741', 'Scene from Finale Night');

-- Load data into Performances table (Date-Aligned)
INSERT INTO Performances (event_id, artist_id, band_id, type, start_time, duration, performances_image_url, performances_image_description) VALUES
('1', '27', NULL, 'Encore', '2017-07-01 14:00:00', '74', 'https://placeimg.com/587/430/any', 'Encore performance'),
('1', NULL, '5', 'Headline', '2017-07-01 15:28:00', '72', 'https://placeimg.com/659/952/any', 'Headline performance'),
('1', '14', NULL, 'Warm-up', '2017-07-01 16:57:00', '55', 'https://placeimg.com/905/437/any', 'Warm-up performance'),
('2', '14', NULL, 'Warm-up', '2017-07-01 14:00:00', '55', 'https://placeimg.com/905/437/any', 'Warm-up performance'),
('2', NULL, '6', 'Encore', '2017-07-01 14:00:00', '57', 'https://placekitten.com/347/173', 'Encore performance'),
('2', NULL, '9', 'Guest', '2017-07-01 15:27:00', '59', 'https://dummyimage.com/686x191', 'Guest performance'),
('2', NULL, '5', 'Headline', '2017-07-01 16:45:00', '60', 'https://dummyimage.com/635x460', 'Headline performance'),
('2', '49', NULL, 'Encore', '2017-07-01 18:15:00', '62', 'https://www.lorempixel.com/301/50', 'Encore performance'),
('3', '14', NULL, 'Warm-up', '2017-07-01 20:00:00', '56', 'https://placeimg.com/905/437/any', 'Warm-up performance'),
('3', '13', NULL, 'Special Guest', '2017-07-01 14:00:00', '45', 'https://www.lorempixel.com/501/973', 'Special Guest performance'),
('3', '31', NULL, 'Warm-up', '2017-07-01 15:11:00', '39', 'https://dummyimage.com/932x848', 'Warm-up performance'),
('3', '41', NULL, 'Warm-up', '2017-07-01 15:55:00', '69', 'https://placeimg.com/786/1012/any', 'Warm-up performance'),
('4', '16', NULL, 'Guest', '2018-04-14 14:00:00', '75', 'https://www.lorempixel.com/499/302', 'Guest performance'),
('4', NULL, '2', 'Warm-up', '2018-04-14 15:42:00', '39', 'https://dummyimage.com/218x870', 'Warm-up performance'),
('4', '45', NULL, 'Headline', '2018-04-14 16:46:00', '79', 'https://www.lorempixel.com/360/951', 'Headline performance'),
('5', '8', NULL, 'Warm-up', '2018-04-14 14:00:00', '63', 'https://placeimg.com/510/248/any', 'Warm-up performance'),
('5', NULL, '9', 'Guest', '2018-04-14 15:22:00', '59', 'https://placekitten.com/273/951', 'Guest performance'),
('5', NULL, '9', 'Guest', '2018-04-14 16:30:00', '68', 'https://placeimg.com/906/873/any', 'Guest performance'),
('6', NULL, '8', 'Guest', '2018-04-14 14:00:00', '57', 'https://placeimg.com/325/972/any', 'Guest performance'),
('6', NULL, '5', 'Headline', '2018-04-14 15:19:00', '58', 'https://placekitten.com/530/506', 'Headline performance'),
('6', '16', NULL, 'Encore', '2018-04-14 16:30:00', '79', 'https://placekitten.com/992/489', 'Encore performance'),
('6', NULL, '4', 'Warm-up', '2018-04-14 18:18:00', '47', 'https://placekitten.com/900/158', 'Warm-up performance'),
('7', '15', NULL, 'Warm-up', '2019-06-01 14:00:00', '50', 'https://placekitten.com/480/556', 'Warm-up performance'),
('7', NULL, '2', 'Headline', '2019-06-01 15:12:00', '54', 'https://dummyimage.com/654x165', 'Headline performance'),
('7', '27', NULL, 'Special Guest', '2019-06-01 16:33:00', '56', 'https://placeimg.com/308/473/any', 'Special Guest performance'),
('8', '50', NULL, 'Guest', '2019-06-01 14:00:00', '33', 'https://www.lorempixel.com/312/438', 'Guest performance'),
('8', NULL, '10', 'Warm-up', '2019-06-01 14:44:00', '67', 'https://placekitten.com/849/834', 'Warm-up performance'),
('8', NULL, '5', 'Warm-up', '2019-06-01 16:18:00', '54', 'https://www.lorempixel.com/954/851', 'Warm-up performance'),
('8', '48', NULL, 'Guest', '2019-06-01 17:32:00', '78', 'https://placeimg.com/423/860/any', 'Guest performance'),
('9', NULL, '8', 'Encore', '2019-06-01 14:00:00', '64', 'https://placeimg.com/40/779/any', 'Encore performance'),
('9', '25', NULL, 'Guest', '2019-06-01 15:34:00', '44', 'https://placekitten.com/12/720', 'Guest performance'),
('9', NULL, '8', 'Guest', '2019-06-01 16:31:00', '51', 'https://dummyimage.com/798x858', 'Guest performance'),
('10', '2', NULL, 'Encore', '2020-10-04 14:00:00', '88', 'https://placekitten.com/999/449', 'Encore performance'),
('10', '30', NULL, 'Guest', '2020-10-04 15:45:00', '35', 'https://www.lorempixel.com/892/994', 'Guest performance'),
('10', '14', NULL, 'Special Guest', '2020-10-04 16:45:00', '41', 'https://placeimg.com/796/688/any', 'Special Guest performance'),
('11', NULL, '7', 'Special Guest', '2020-10-04 14:00:00', '59', 'https://dummyimage.com/338x957', 'Special Guest performance'),
('11', '6', NULL, 'Guest', '2020-10-04 15:14:00', '47', 'https://www.lorempixel.com/55/806', 'Guest performance'),
('11', '23', NULL, 'Encore', '2020-10-04 16:30:00', '60', 'https://dummyimage.com/171x877', 'Encore performance'),
('11', NULL, '1', 'Warm-up', '2020-10-04 17:35:00', '44', 'https://www.lorempixel.com/945/372', 'Warm-up performance'),
('12', '2', NULL, 'Headline', '2020-10-04 14:00:00', '78', 'https://placekitten.com/532/776', 'Headline performance'),
('12', '43', NULL, 'Headline', '2020-10-04 15:23:00', '69', 'https://placekitten.com/433/931', 'Headline performance'),
('12', '17', NULL, 'Headline', '2020-10-04 16:41:00', '37', 'https://placekitten.com/691/776', 'Headline performance'),
('13', NULL, '3', 'Warm-up', '2021-07-10 14:00:00', '68', 'https://www.lorempixel.com/863/516', 'Warm-up performance'),
('13', '20', NULL, 'Encore', '2021-07-10 15:32:00', '49', 'https://www.lorempixel.com/963/39', 'Encore performance'),
('13', '46', NULL, 'Guest', '2021-07-10 16:29:00', '66', 'https://www.lorempixel.com/716/459', 'Guest performance'),
('13', NULL, '4', 'Encore', '2021-07-10 18:01:00', '42', 'https://dummyimage.com/82x63', 'Encore performance'),
('14', NULL, '10', 'Special Guest', '2021-07-10 14:00:00', '36', 'https://dummyimage.com/408x41', 'Special Guest performance'),
('14', NULL, '6', 'Encore', '2021-07-10 15:03:00', '81', 'https://placeimg.com/488/258/any', 'Encore performance'),
('14', '27', NULL, 'Warm-up', '2021-07-10 14:00:00', '90', 'https://placeimg.com/887/741/any', 'Warm-up performance'),
('14', '42', NULL, 'Special Guest', '2021-07-10 16:32:00', '64', 'https://placeimg.com/234/446/any', 'Special Guest performance'),
('15', NULL, '2', 'Guest', '2021-07-10 14:00:00', '51', 'https://dummyimage.com/524x755', 'Guest performance'),
('15', NULL, '7', 'Guest', '2021-07-10 14:56:00', '57', 'https://placekitten.com/234/335', 'Guest performance'),
('15', NULL, '5', 'Encore', '2021-07-10 16:09:00', '41', 'https://placekitten.com/221/52', 'Encore performance'),
('16', '16', NULL, 'Encore', '2022-09-24 14:00:00', '59', 'https://dummyimage.com/768x812', 'Encore performance'),
('16', NULL, '4', 'Special Guest', '2022-09-24 15:17:00', '83', 'https://www.lorempixel.com/155/497', 'Special Guest performance'),
('16', NULL, '7', 'Encore', '2022-09-24 16:47:00', '78', 'https://www.lorempixel.com/617/247', 'Encore performance'),
('17', NULL, '3', 'Guest', '2022-09-24 14:00:00', '51', 'https://placekitten.com/711/877', 'Guest performance'),
('17', NULL, '6', 'Special Guest', '2022-09-24 14:56:00', '61', 'https://www.lorempixel.com/141/698', 'Special Guest performance'),
('17', '34', NULL, 'Special Guest', '2022-09-24 16:08:00', '47', 'https://www.lorempixel.com/860/1003', 'Special Guest performance'),
('18', '27', NULL, 'Warm-up', '2022-09-24 14:00:00', '90', 'https://placeimg.com/887/741/any', 'Warm-up performance'),
('18', NULL, '8', 'Headline', '2022-09-24 15:41:00', '61', 'https://dummyimage.com/313x891', 'Headline performance'),
('18', '15', NULL, 'Warm-up', '2022-09-24 17:04:00', '58', 'https://placeimg.com/553/990/any', 'Warm-up performance'),
('18', '38', NULL, 'Headline', '2022-09-24 18:32:00', '55', 'https://placekitten.com/892/549', 'Headline performance'),
('19', '48', NULL, 'Special Guest', '2023-08-20 14:00:00', '65', 'https://placekitten.com/502/177', 'Special Guest performance'),
('19', NULL, '5', 'Special Guest', '2023-08-20 15:26:00', '65', 'https://placeimg.com/923/499/any', 'Special Guest performance'),
('19', '13', NULL, 'Headline', '2023-08-20 16:46:00', '49', 'https://www.lorempixel.com/776/688', 'Headline performance'),
('20', NULL, '3', 'Encore', '2023-08-20 14:00:00', '50', 'https://dummyimage.com/1012x665', 'Encore performance'),
('20', '38', NULL, 'Guest', '2023-08-20 14:58:00', '42', 'https://placekitten.com/998/434', 'Guest performance'),
('20', '7', NULL, 'Encore', '2023-08-20 15:51:00', '78', 'https://placekitten.com/529/697', 'Encore performance'),
('23', '27', NULL, 'Warm-up', '2024-09-24 14:00:00', '90', 'https://placeimg.com/887/741/any', 'Warm-up performance'),
('20', '12', NULL, 'Special Guest', '2023-08-20 17:30:00', '83', 'https://dummyimage.com/565x20', 'Special Guest performance'),
('21', '3', NULL, 'Encore', '2023-08-20 14:00:00', '49', 'https://placeimg.com/175/494/any', 'Encore performance'),
('21', NULL, '3', 'Special Guest', '2023-08-20 14:54:00', '33', 'https://placeimg.com/1000/492/any', 'Special Guest performance'),
('21', '1', NULL, 'Guest', '2023-08-20 15:49:00', '70', 'https://www.lorempixel.com/1005/917', 'Guest performance'),
('21', '45', NULL, 'Special Guest', '2023-08-20 20:00:00', '70', 'https://www.lorempixel.com/1005/917', 'Guest performance'),
('22', '4', NULL, 'Guest', '2024-03-31 14:00:00', '60', 'https://dummyimage.com/190x602', 'Guest performance'),
('22', NULL, '7', 'Warm-up', '2024-03-31 15:20:00', '46', 'https://placekitten.com/828/498', 'Warm-up performance'),
('22', NULL, '1', 'Encore', '2024-03-31 16:26:00', '61', 'https://placekitten.com/755/969', 'Encore performance'),
('23', NULL, '2', 'Encore', '2024-03-31 14:00:00', '39', 'https://placekitten.com/871/677', 'Encore performance'),
('23', NULL, '10', 'Encore', '2024-03-31 14:48:00', '45', 'https://placekitten.com/929/554', 'Encore performance'),
('23', '34', NULL, 'Encore', '2024-03-31 15:41:00', '68', 'https://www.lorempixel.com/514/472', 'Encore performance'),
('24', '38', NULL, 'Guest', '2024-03-31 14:00:00', '54', 'https://www.lorempixel.com/394/646', 'Guest performance'),
('24', NULL, '10', 'Encore', '2024-03-31 15:13:00', '57', 'https://dummyimage.com/379x392', 'Encore performance'),
('24', NULL, '5', 'Headline', '2024-03-31 16:24:00', '77', 'https://placekitten.com/991/566', 'Headline performance'),
('24', '36', NULL, 'Headline', '2024-03-31 17:49:00', '72', 'https://placekitten.com/205/397', 'Headline performance'),
('25', NULL, '8', 'Guest', '2025-07-18 14:00:00', '30', 'https://dummyimage.com/465x739', 'Guest performance'),
('25', '19', NULL, 'Headline', '2025-07-18 14:48:00', '48', 'https://dummyimage.com/619x28', 'Headline performance'),
('25', NULL, '5', 'Warm-up', '2025-07-18 15:42:00', '74', 'https://www.lorempixel.com/561/93', 'Warm-up performance'),
('26', NULL, '4', 'Encore', '2025-07-18 14:00:00', '80', 'https://placeimg.com/598/258/any', 'Encore performance'),
('26', '10', NULL, 'Encore', '2025-07-18 15:50:00', '57', 'https://placekitten.com/210/25', 'Encore performance'),
('26', '11', NULL, 'Headline', '2025-07-18 16:55:00', '88', 'https://placeimg.com/961/980/any', 'Headline performance'),
('26', NULL, '10', 'Encore', '2025-07-18 18:36:00', '80', 'https://www.lorempixel.com/697/377', 'Encore performance'),
('27', '45', NULL, 'Guest', '2025-07-18 14:00:00', '88', 'https://www.lorempixel.com/517/978', 'Guest performance'),
('27', NULL, '9', 'Guest', '2025-07-18 15:42:00', '49', 'https://placeimg.com/133/820/any', 'Guest performance'),
('27', '3', NULL, 'Guest', '2025-07-18 16:58:00', '64', 'https://dummyimage.com/151x109', 'Guest performance'),
('28', '44', NULL, 'Warm-up', '2026-08-14 14:00:00', '68', 'https://www.lorempixel.com/305/622', 'Warm-up performance'),
('28', NULL, '5', 'Encore', '2026-08-14 15:21:00', '83', 'https://placeimg.com/508/242/any', 'Encore performance'),
('28', '42', NULL, 'Headline', '2026-08-14 17:07:00', '66', 'https://placeimg.com/462/779/any', 'Headline performance'),
('29', NULL, '7', 'Headline', '2026-08-14 14:00:00', '58', 'https://placeimg.com/906/608/any', 'Headline performance'),
('29', '27', NULL, 'Warm-up', '2026-08-14 15:11:00', '70', 'https://www.lorempixel.com/625/123', 'Warm-up performance'),
('29', NULL, '6', 'Warm-up', '2026-08-14 16:41:00', '51', 'https://placekitten.com/425/432', 'Warm-up performance'),
('29', '26', NULL, 'Guest', '2026-08-14 17:47:00', '56', 'https://dummyimage.com/166x321', 'Guest performance'),
('30', '6', NULL, 'Encore', '2026-08-14 14:00:00', '82', 'https://dummyimage.com/355x153', 'Encore performance'),
('30', '50', NULL, 'Special Guest', '2026-08-14 15:51:00', '50', 'https://placeimg.com/5/836/any', 'Special Guest performance'),
('30', NULL, '9', 'Warm-up', '2026-08-14 16:54:00', '55', 'https://www.lorempixel.com/962/596', 'Warm-up performance');

-- Load data into Visitors table (formatted contact_info)
INSERT INTO Visitors (visitor_name, visitor_surname, contact_info, age) VALUES
('Danielle', 'Johnson', 'danielle_johnson@outlook.com', '58'),
('Joy', 'Gardner', 'joy_gardner@gmail.com', '25'),
('Carolyn', 'Hoffman', 'carolyn_hoffman@gmail.com', '19'),
('Katherine', 'Moore', 'katherine_moore@gmail.com', '65'),
('Christopher', 'Davis', 'christopher_davis@yahoo.com', '35'),
('Teresa', 'Gray', 'teresa_gray@mail.com', '33'),
('Jeremy', 'Roberts', 'jeremy_roberts@yahoo.com', '32'),
('Michael', 'Santiago', 'michael_santiago@mail.com', '26'),
('Jeffrey', 'Nguyen', 'jeffrey_nguyen@outlook.com', '65'),
('Nancy', 'Edwards', 'nancy_edwards@live.com', '24'),
('Douglas', 'Taylor', 'douglas_taylor@gmail.com', '61'),
('Jeffrey', 'Bright', 'jeffrey_bright@outlook.com', '65'),
('Courtney', 'Conner', 'courtney_conner@outlook.com', '52'),
('Allison', 'Maddox', 'allison_maddox@live.com', '23'),
('Ryan', 'Chavez', 'ryan_chavez@outlook.com', '55'),
('Kenneth', 'Fowler', 'kenneth_fowler@live.com', '45'),
('Sarah', 'Koch', 'sarah_koch@hotmail.com', '20'),
('Christopher', 'Tucker', 'christopher_tucker@live.com', '19'),
('Sarah', 'Campos', 'sarah_campos@gmail.com', '23'),
('Brianna', 'Hall', 'brianna_hall@mail.com', '31'),
('Chad', 'Young', 'chad_young@mail.com', '32'),
('Barbara', 'Sanchez', 'barbara_sanchez@gmail.com', '50'),
('Ryan', 'Henderson', 'ryan_henderson@mail.com', '56'),
('Bruce', 'Chandler', 'bruce_chandler@live.com', '19'),
('John', 'Leblanc', 'john_leblanc@hotmail.com', '53'),
('Tanya', 'House', 'tanya_house@mail.com', '30'),
('Tricia', 'Baker', 'tricia_baker@hotmail.com', '63'),
('James', 'Robinson', 'james_robinson@gmail.com', '59'),
('Susan', 'Miller', 'susan_miller@hotmail.com', '62'),
('Beth', 'Williams', 'beth_williams@outlook.com', '52'),
('John', 'Foster', 'john_foster@yahoo.com', '44'),
('Albert', 'Howell', 'albert_howell@outlook.com', '32'),
('Mike', 'Moore', 'mike_moore@gmail.com', '46'),
('Dale', 'Humphrey', 'dale_humphrey@mail.com', '55'),
('Joseph', 'Jacobs', 'joseph_jacobs@mail.com', '35'),
('Tracy', 'Whitehead', 'tracy_whitehead@hotmail.com', '69'),
('Evan', 'Ramos', 'evan_ramos@live.com', '18'),
('Rebecca', 'Gardner', 'rebecca_gardner@yahoo.com', '66'),
('Rachel', 'Flynn', 'rachel_flynn@live.com', '69'),
('Terri', 'Brady', 'terri_brady@gmail.com', '28'),
('Kimberly', 'Jenkins', 'kimberly_jenkins@mail.com', '62'),
('Lisa', 'Stevens', 'lisa_stevens@hotmail.com', '45'),
('Mark', 'Lin', 'mark_lin@mail.com', '39'),
('Sheila', 'Wilson', 'sheila_wilson@live.com', '35'),
('Daniel', 'Hamilton', 'daniel_hamilton@live.com', '27'),
('Paul', 'Ray', 'paul_ray@yahoo.com', '31'),
('Gloria', 'Bentley', 'gloria_bentley@yahoo.com', '66'),
('William', 'Estrada', 'william_estrada@hotmail.com', '39'),
('James', 'Ortega', 'james_ortega@yahoo.com', '24'),
('Martha', 'Torres', 'martha_torres@live.com', '23'),
('Thomas', 'Santana', 'thomas_santana@live.com', '42'),
('Jeffrey', 'Gonzalez', 'jeffrey_gonzalez@gmail.com', '24'),
('James', 'Horton', 'james_horton@live.com', '40'),
('Adam', 'Potter', 'adam_potter@hotmail.com', '40'),
('Stephen', 'Solis', 'stephen_solis@outlook.com', '56'),
('Ronald', 'Meadows', 'ronald_meadows@gmail.com', '34'),
('Karen', 'Larsen', 'karen_larsen@gmail.com', '69'),
('Chris', 'Mitchell', 'chris_mitchell@hotmail.com', '20'),
('Edward', 'Reyes', 'edward_reyes@hotmail.com', '64'),
('Rebecca', 'Silva', 'rebecca_silva@yahoo.com', '47'),
('Amanda', 'Navarro', 'amanda_navarro@gmail.com', '52'),
('Jennifer', 'Pittman', 'jennifer_pittman@yahoo.com', '25'),
('Hunter', 'Green', 'hunter_green@live.com', '42'),
('Joshua', 'Bean', 'joshua_bean@gmail.com', '23'),
('Amber', 'Cooke', 'amber_cooke@gmail.com', '53'),
('Billy', 'Johnson', 'billy_johnson@mail.com', '36'),
('Anne', 'Robinson', 'anne_robinson@outlook.com', '58'),
('Tami', 'Rodriguez', 'tami_rodriguez@gmail.com', '57'),
('Curtis', 'Barton', 'curtis_barton@live.com', '41'),
('Melissa', 'Short', 'melissa_short@yahoo.com', '54'),
('Tammy', 'Nelson', 'tammy_nelson@yahoo.com', '30'),
('Joseph', 'Christian', 'joseph_christian@mail.com', '63'),
('Hunter', 'Lewis', 'hunter_lewis@outlook.com', '22'),
('Alejandro', 'Vaughan', 'alejandro_vaughan@live.com', '20'),
('Shane', 'Smith', 'shane_smith@yahoo.com', '60'),
('Bonnie', 'Kennedy', 'bonnie_kennedy@hotmail.com', '32'),
('Michael', 'Chavez', 'michael_chavez@live.com', '67'),
('Julia', 'Tapia', 'julia_tapia@live.com', '36'),
('Marissa', 'Phillips', 'marissa_phillips@outlook.com', '23'),
('Joshua', 'Mccann', 'joshua_mccann@yahoo.com', '32'),
('Monique', 'Andrews', 'monique_andrews@live.com', '24'),
('Johnny', 'Hensley', 'johnny_hensley@mail.com', '42'),
('Christopher', 'Wright', 'christopher_wright@mail.com', '35'),
('Kenneth', 'Chapman', 'kenneth_chapman@yahoo.com', '47'),
('Cory', 'Farmer', 'cory_farmer@mail.com', '58'),
('Ricky', 'Norris', 'ricky_norris@hotmail.com', '41'),
('Michele', 'Jones', 'michele_jones@outlook.com', '28'),
('Rebekah', 'Serrano', 'rebekah_serrano@mail.com', '41'),
('Haley', 'Lyons', 'haley_lyons@mail.com', '40'),
('Pamela', 'Navarro', 'pamela_navarro@hotmail.com', '31'),
('Brenda', 'Smith', 'brenda_smith@outlook.com', '60'),
('Denise', 'Moon', 'denise_moon@live.com', '35'),
('Manuel', 'Garcia', 'manuel_garcia@outlook.com', '62'),
('Christopher', 'King', 'christopher_king@gmail.com', '61'),
('Michael', 'Avila', 'michael_avila@yahoo.com', '59'),
('Samuel', 'Wolfe', 'samuel_wolfe@yahoo.com', '22'),
('Alexander', 'Russell', 'alexander_russell@gmail.com', '56'),
('William', 'Hill', 'william_hill@hotmail.com', '58'),
('Patrick', 'Weeks', 'patrick_weeks@gmail.com', '28'),
('Lori', 'Campbell', 'lori_campbell@live.com', '52'),
('Todd', 'Cook', 'todd_cook@live.com', '64'),
('John', 'Reyes', 'john_reyes@yahoo.com', '33'),
('Paul', 'Alvarado', 'paul_alvarado@live.com', '28'),
('Cory', 'Lozano', 'cory_lozano@yahoo.com', '47'),
('Cindy', 'Sanders', 'cindy_sanders@gmail.com', '42'),
('Monique', 'Johnson', 'monique_johnson@gmail.com', '35'),
('Kathleen', 'Padilla', 'kathleen_padilla@mail.com', '58'),
('Michael', 'Jordan', 'michael_jordan@mail.com', '62'),
('Monica', 'Harvey', 'monica_harvey@gmail.com', '53'),
('Jonathan', 'Smith', 'jonathan_smith@yahoo.com', '32'),
('Sierra', 'Huerta', 'sierra_huerta@gmail.com', '61'),
('James', 'Cruz', 'james_cruz@gmail.com', '38'),
('Kenneth', 'Lyons', 'kenneth_lyons@hotmail.com', '67'),
('Marissa', 'Leach', 'marissa_leach@gmail.com', '67'),
('Courtney', 'Berger', 'courtney_berger@live.com', '21'),
('Mark', 'Perry', 'mark_perry@yahoo.com', '32'),
('Jonathan', 'Summers', 'jonathan_summers@hotmail.com', '70'),
('Sydney', 'Taylor', 'sydney_taylor@mail.com', '20'),
('David', 'Richardson', 'david_richardson@outlook.com', '69'),
('Emily', 'Ruiz', 'emily_ruiz@yahoo.com', '38'),
('Regina', 'Turner', 'regina_turner@live.com', '43'),
('Wendy', 'Wilson', 'wendy_wilson@yahoo.com', '35'),
('Nicole', 'Pena', 'nicole_pena@mail.com', '22'),
('Hannah', 'Robinson', 'hannah_robinson@live.com', '31'),
('Michael', 'Winters', 'michael_winters@live.com', '54'),
('Stacy', 'Holloway', 'stacy_holloway@outlook.com', '63'),
('Vanessa', 'Buchanan', 'vanessa_buchanan@yahoo.com', '38'),
('Kristina', 'Carlson', 'kristina_carlson@outlook.com', '31'),
('Daniel', 'Delacruz', 'daniel_delacruz@outlook.com', '59'),
('Alicia', 'Reese', 'alicia_reese@yahoo.com', '49'),
('Daniel', 'Gordon', 'daniel_gordon@gmail.com', '43'),
('Tracy', 'Browning', 'tracy_browning@gmail.com', '59'),
('Amy', 'Nguyen', 'amy_nguyen@mail.com', '47'),
('Laura', 'Wilson', 'laura_wilson@outlook.com', '27'),
('Jessica', 'Edwards', 'jessica_edwards@hotmail.com', '34'),
('Christopher', 'Miller', 'christopher_miller@outlook.com', '26'),
('Angela', 'Willis', 'angela_willis@outlook.com', '33'),
('Miranda', 'Griffith', 'miranda_griffith@outlook.com', '65'),
('Eric', 'Olson', 'eric_olson@mail.com', '53'),
('Terri', 'Cardenas', 'terri_cardenas@gmail.com', '52'),
('Ashley', 'Morales', 'ashley_morales@mail.com', '34'),
('Larry', 'Nguyen', 'larry_nguyen@mail.com', '65'),
('Ebony', 'Tucker', 'ebony_tucker@mail.com', '55'),
('Daniel', 'Jordan', 'daniel_jordan@gmail.com', '45'),
('Jeffrey', 'Joyce', 'jeffrey_joyce@gmail.com', '55'),
('David', 'Jimenez', 'david_jimenez@outlook.com', '43'),
('Vincent', 'Whitaker', 'vincent_whitaker@mail.com', '41'),
('Andrew', 'Morse', 'andrew_morse@hotmail.com', '32'),
('Robert', 'Wilson', 'robert_wilson@gmail.com', '26'),
('Ryan', 'Morales', 'ryan_morales@yahoo.com', '50');

-- Load data into Tickets table
INSERT INTO Tickets (visitor_id, event_id, ticket_type, purchase_date, price, payment_method, ean13_code, ticket_days, is_used) VALUES
('29', '1', 'General', '2017-06-09', '51.29', 'Bank Transfer', '2531350688820', '3', FALSE),
('9', '1', 'General', '2017-06-02', '46.5', 'Credit Card', '4498513908134', '1', FALSE),
('57', '15', 'General', '2021-04-16', '38.71', 'Credit Card', '8437586875258', '3', FALSE),
('72', '5', 'Backstage', '2018-02-05', '115.0', 'Credit Card', '2702438824573', '1', FALSE),
('89', '20', 'VIP', '2023-05-28', '86.3', 'Bank Transfer', '7661160537249', '2', TRUE),
('142', '10', 'General', '2020-10-01', '51.29', 'Bank Transfer', '1803457621458', '3', TRUE),
('75', '3', 'VIP', '2017-04-05', '108.01', 'Debit Card', '3862015161409', '1', FALSE),
('91', '7', 'General', '2019-05-25', '35.22', 'Bank Transfer', '4009204318179', '3', TRUE),
('42', '15', 'General', '2021-05-13', '40.84', 'Bank Transfer', '4863567680057', '2', FALSE),
('15', '8', 'VIP', '2019-03-09', '88.97', 'Credit Card', '4737973078743', '1', FALSE),
('102', '29', 'General', '2026-07-04', '59.55', 'Credit Card', '5623699700328', '3', FALSE),
('150', '13', 'General', '2021-05-04', '53.76', 'Bank Transfer', '2599847468511', '2', TRUE),
('29', '5', 'General', '2018-02-10', '37.1', 'Bank Transfer', '7769141307920', '3', FALSE),
('120', '17', 'Backstage', '2022-08-29', '124.7', 'Credit Card', '5693329282832', '2', FALSE),
('29', '10', 'General', '2020-08-22', '40.83', 'Bank Transfer', '9930004312372', '2', TRUE),
('77', '27', 'General', '2025-05-09', '47.17', 'Debit Card', '3842248341601', '3', TRUE),
('83', '16', 'General', '2022-08-17', '44.02', 'Debit Card', '2018935689015', '1', TRUE),
('146', '3', 'General', '2017-04-14', '59.49', 'Bank Transfer', '3215197391284', '1', TRUE),
('122', '18', 'General', '2022-09-04', '33.89', 'Debit Card', '4727878552768', '1', TRUE),
('80', '13', 'General', '2021-07-05', '56.53', 'Bank Transfer', '3127947929743', '3', TRUE),
('58', '3', 'General', '2017-05-27', '31.97', 'Bank Transfer', '1125499878070', '2', TRUE),
('16', '8', 'Backstage', '2019-04-27', '119.91', 'Credit Card', '5185506430032', '1', FALSE),
('125', '7', 'General', '2019-04-17', '51.51', 'Bank Transfer', '9317531495235', '3', TRUE),
('122', '26', 'General', '2025-05-12', '44.36', 'Debit Card', '8448994987743', '2', FALSE),
('120', '28', 'General', '2026-07-31', '42.32', 'Bank Transfer', '2065574590958', '3', FALSE),
('87', '26', 'General', '2025-06-03', '42.28', 'Debit Card', '8422305565876', '1', TRUE),
('72', '15', 'VIP', '2021-06-28', '103.0', 'Bank Transfer', '1889478745061', '1', TRUE),
('24', '30', 'General', '2026-06-24', '33.76', 'Credit Card', '8056049945201', '1', TRUE),
('43', '13', 'Backstage', '2021-04-29', '115.85', 'Debit Card', '8440108492786', '1', FALSE),
('40', '7', 'General', '2019-03-12', '32.22', 'Bank Transfer', '2071775567376', '2', FALSE),
('15', '2', 'General', '2017-04-11', '43.97', 'Bank Transfer', '1997108581093', '3', TRUE),
('48', '3', 'General', '2017-06-04', '45.52', 'Debit Card', '1698338142294', '3', TRUE),
('108', '22', 'General', '2024-02-11', '33.85', 'Debit Card', '6526403963021', '3', TRUE),
('68', '13', 'General', '2021-05-15', '54.87', 'Debit Card', '2279624235099', '1', TRUE),
('118', '20', 'Backstage', '2023-07-02', '127.57', 'Credit Card', '5666507241676', '3', TRUE),
('90', '29', 'VIP', '2026-06-24', '103.51', 'Credit Card', '1139710736463', '1', FALSE),
('27', '29', 'General', '2026-06-30', '53.03', 'Bank Transfer', '3733975277719', '1', FALSE),
('73', '20', 'General', '2023-08-13', '33.87', 'Bank Transfer', '5646522879626', '1', FALSE),
('65', '29', 'General', '2026-07-25', '45.09', 'Debit Card', '1060318893357', '1', FALSE),
('34', '21', 'General', '2023-05-27', '56.05', 'Bank Transfer', '2967136552614', '2', TRUE),
('39', '18', 'VIP', '2022-08-30', '113.26', 'Credit Card', '3243818848407', '1', TRUE),
('79', '12', 'VIP', '2020-09-07', '100.72', 'Credit Card', '2811045688826', '1', FALSE),
('144', '29', 'Backstage', '2026-07-17', '115.21', 'Credit Card', '3859866705044', '2', TRUE),
('106', '1', 'General', '2017-04-11', '34.86', 'Debit Card', '5367168914538', '1', FALSE),
('41', '26', 'General', '2025-04-24', '58.04', 'Debit Card', '4509943626369', '3', FALSE),
('90', '10', 'General', '2020-08-14', '36.76', 'Debit Card', '5901967559084', '1', TRUE),
('72', '12', 'General', '2020-09-14', '58.42', 'Bank Transfer', '3027343107120', '3', FALSE),
('46', '19', 'General', '2023-06-23', '45.57', 'Debit Card', '8676453791775', '2', TRUE),
('99', '29', 'General', '2026-08-01', '38.52', 'Debit Card', '4468918935363', '3', FALSE),
('111', '3', 'Backstage', '2017-06-24', '103.94', 'Bank Transfer', '3194075518867', '3', FALSE),
('130', '10', 'General', '2020-07-16', '35.89', 'Debit Card', '3240059144699', '3', TRUE),
('108', '22', 'General', '2024-01-25', '58.69', 'Bank Transfer', '6293843997145', '2', FALSE),
('141', '27', 'General', '2025-05-07', '38.23', 'Bank Transfer', '9179001781498', '1', FALSE),
('114', '22', 'General', '2024-01-19', '48.75', 'Bank Transfer', '5991116192008', '1', FALSE),
('24', '27', 'General', '2025-06-10', '48.43', 'Credit Card', '1430129610059', '1', TRUE),
('63', '16', 'VIP', '2022-08-08', '83.74', 'Debit Card', '4421266455306', '3', FALSE),
('127', '13', 'General', '2021-04-24', '49.23', 'Credit Card', '8480881352537', '1', TRUE),
('46', '26', 'General', '2025-05-29', '47.75', 'Credit Card', '9027815107446', '3', TRUE),
('119', '22', 'Backstage', '2024-01-18', '129.03', 'Debit Card', '8505475871811', '3', FALSE),
('41', '24', 'General', '2024-01-28', '35.14', 'Bank Transfer', '5828570793881', '2', FALSE),
('20', '23', 'General', '2024-02-14', '48.73', 'Bank Transfer', '3431297567947', '2', TRUE),
('60', '13', 'General', '2021-05-05', '57.06', 'Debit Card', '6821431312058', '3', FALSE),
('107', '2', 'VIP', '2017-06-25', '93.5', 'Bank Transfer', '7694031618399', '1', FALSE),
('2', '12', 'General', '2020-07-13', '57.72', 'Debit Card', '4882211538662', '2', FALSE),
('57', '9', 'General', '2019-04-15', '31.24', 'Bank Transfer', '2473290184959', '2', FALSE),
('35', '28', 'General', '2026-08-02', '55.91', 'Debit Card', '8998138179164', '2', FALSE),
('87', '25', 'General', '2025-07-11', '32.44', 'Debit Card', '9272458796685', '2', TRUE),
('139', '2', 'General', '2017-06-24', '58.46', 'Bank Transfer', '4505755387233', '2', TRUE),
('40', '8', 'General', '2019-04-25', '53.13', 'Credit Card', '3952226925063', '1', TRUE),
('42', '10', 'General', '2020-07-15', '37.94', 'Bank Transfer', '7605480054946', '1', FALSE),
('51', '3', 'General', '2017-04-06', '36.32', 'Credit Card', '3129468527791', '3', TRUE),
('89', '18', 'General', '2022-08-28', '47.16', 'Bank Transfer', '1220508908844', '2', FALSE),
('126', '4', 'Backstage', '2018-03-07', '130.91', 'Debit Card', '3691687394808', '2', FALSE),
('46', '24', 'Backstage', '2024-03-22', '101.51', 'Bank Transfer', '9507362305763', '3', FALSE),
('112', '27', 'General', '2025-04-20', '56.67', 'Credit Card', '5905224866340', '3', FALSE),
('63', '25', 'General', '2025-04-28', '46.37', 'Debit Card', '9693137072641', '2', FALSE),
('47', '16', 'General', '2022-09-07', '49.26', 'Debit Card', '4362736323263', '1', TRUE),
('62', '24', 'General', '2024-03-23', '39.06', 'Bank Transfer', '9635941604803', '2', FALSE),
('5', '3', 'General', '2017-04-24', '37.35', 'Debit Card', '9325231550423', '2', FALSE),
('109', '24', 'General', '2024-01-17', '54.22', 'Debit Card', '5420838283303', '3', TRUE),
('31', '24', 'General', '2024-02-09', '42.18', 'Bank Transfer', '4368049572602', '1', TRUE),
('124', '9', 'General', '2019-04-19', '43.61', 'Bank Transfer', '6210629058713', '3', TRUE),
('93', '6', 'General', '2018-03-01', '50.66', 'Debit Card', '3224552926053', '2', FALSE),
('27', '28', 'General', '2026-06-05', '34.74', 'Debit Card', '4244163629341', '1', TRUE),
('65', '28', 'General', '2026-08-07', '42.47', 'Debit Card', '3667404940033', '2', TRUE),
('145', '10', 'Backstage', '2020-08-13', '123.22', 'Debit Card', '7693803479115', '1', FALSE),
('114', '10', 'Backstage', '2020-10-01', '117.01', 'Bank Transfer', '4658293099819', '3', TRUE),
('68', '22', 'General', '2024-01-06', '34.31', 'Credit Card', '1043621975450', '1', FALSE),
('116', '23', 'General', '2024-01-16', '55.84', 'Debit Card', '5976608480953', '3', FALSE),
('19', '22', 'Backstage', '2024-02-06', '115.97', 'Bank Transfer', '8478387689394', '1', TRUE),
('140', '8', 'General', '2019-03-03', '59.64', 'Credit Card', '2048278723150', '3', TRUE),
('79', '20', 'VIP', '2023-06-28', '93.81', 'Debit Card', '9242576335907', '3', FALSE),
('104', '9', 'General', '2019-03-28', '41.96', 'Bank Transfer', '1452046888046', '3', TRUE),
('59', '22', 'General', '2024-03-17', '52.82', 'Bank Transfer', '5740876904871', '3', TRUE),
('45', '16', 'General', '2022-09-10', '45.45', 'Credit Card', '9653561289564', '3', TRUE),
('121', '12', 'General', '2020-08-19', '33.19', 'Credit Card', '8242731357018', '2', FALSE),
('74', '22', 'VIP', '2024-01-28', '89.67', 'Debit Card', '6532296091173', '2', FALSE),
('83', '4', 'VIP', '2018-02-24', '84.9', 'Credit Card', '9128408545773', '2', FALSE),
('14', '7', 'General', '2019-05-09', '43.49', 'Bank Transfer', '4577929428476', '3', FALSE),
('141', '5', 'General', '2018-03-25', '34.23', 'Credit Card', '5212500976436', '2', TRUE),
('80', '18', 'General', '2022-09-10', '31.52', 'Credit Card', '3709403424217', '1', FALSE),
('75', '17', 'General', '2022-08-18', '58.36', 'Debit Card', '9032635659779', '3', TRUE),
('99', '7', 'General', '2019-05-06', '55.92', 'Credit Card', '6980376640166', '3', FALSE),
('1', '10', 'General', '2020-09-13', '42.54', 'Bank Transfer', '8856133396834', '3', FALSE),
('89', '11', 'General', '2020-08-22', '58.88', 'Debit Card', '4319449663319', '3', TRUE),
('147', '13', 'VIP', '2021-04-26', '116.09', 'Debit Card', '9322550136625', '1', FALSE),
('99', '22', 'Backstage', '2024-01-19', '140.67', 'Credit Card', '9835289951471', '3', FALSE),
('26', '28', 'General', '2026-06-13', '58.01', 'Credit Card', '3537133577251', '2', FALSE),
('40', '3', 'General', '2017-04-23', '51.63', 'Bank Transfer', '7995181901500', '2', TRUE),
('85', '28', 'VIP', '2026-05-21', '87.59', 'Debit Card', '1633683838605', '3', TRUE),
('61', '21', 'Backstage', '2023-07-17', '107.97', 'Bank Transfer', '8632545061277', '3', TRUE),
('26', '15', 'General', '2021-06-21', '59.88', 'Credit Card', '6158496752738', '1', FALSE),
('96', '14', 'General', '2021-06-02', '44.0', 'Bank Transfer', '4168794742374', '1', TRUE),
('45', '3', 'VIP', '2017-04-07', '115.16', 'Credit Card', '3519355476273', '3', TRUE),
('119', '21', 'General', '2023-08-02', '44.92', 'Debit Card', '6063342139692', '2', TRUE),
('19', '15', 'Backstage', '2021-05-11', '104.5', 'Debit Card', '5401011385071', '2', FALSE),
('78', '7', 'VIP', '2019-03-08', '95.73', 'Debit Card', '7316058314392', '2', FALSE),
('76', '1', 'General', '2017-04-06', '43.72', 'Bank Transfer', '1863175051477', '3', FALSE),
('74', '25', 'General', '2025-06-14', '37.22', 'Bank Transfer', '6433302948126', '1', FALSE),
('9', '19', 'General', '2023-07-07', '47.5', 'Debit Card', '4089866058016', '2', TRUE),
('34', '26', 'VIP', '2025-06-06', '81.95', 'Bank Transfer', '5797106899018', '3', TRUE),
('66', '30', 'Backstage', '2026-08-06', '114.07', 'Debit Card', '3026383748892', '2', FALSE),
('20', '5', 'VIP', '2018-03-06', '103.9', 'Debit Card', '2586413924123', '1', FALSE),
('4', '9', 'General', '2019-03-18', '55.29', 'Bank Transfer', '5611387590360', '3', FALSE),
('96', '4', 'General', '2018-01-19', '50.18', 'Bank Transfer', '4893860653278', '3', TRUE),
('119', '30', 'General', '2026-07-04', '38.57', 'Credit Card', '6351689075691', '3', FALSE),
('30', '4', 'VIP', '2018-01-21', '80.33', 'Debit Card', '8372483989037', '1', TRUE),
('107', '21', 'VIP', '2023-08-12', '84.3', 'Debit Card', '4819817340220', '1', FALSE),
('114', '8', 'General', '2019-03-21', '34.02', 'Bank Transfer', '7312076467872', '2', TRUE),
('102', '9', 'Backstage', '2019-03-09', '113.22', 'Debit Card', '1377832968774', '1', TRUE),
('86', '8', 'General', '2019-04-29', '40.97', 'Bank Transfer', '5101134113817', '1', FALSE),
('38', '26', 'General', '2025-04-25', '42.1', 'Credit Card', '3289163998966', '3', FALSE),
('45', '4', 'VIP', '2018-03-20', '81.81', 'Debit Card', '1276268494809', '3', TRUE),
('68', '2', 'General', '2017-06-24', '31.53', 'Bank Transfer', '9375459206885', '1', FALSE),
('93', '17', 'General', '2022-07-18', '46.85', 'Bank Transfer', '6306524226483', '3', FALSE),
('8', '2', 'VIP', '2017-05-11', '94.5', 'Credit Card', '8803567744835', '2', TRUE),
('21', '11', 'General', '2020-07-17', '38.66', 'Bank Transfer', '7701545642610', '3', FALSE),
('117', '17', 'General', '2022-09-20', '41.59', 'Credit Card', '8564360925283', '3', FALSE),
('59', '14', 'VIP', '2021-06-05', '98.01', 'Bank Transfer', '6497966529455', '2', FALSE),
('81', '22', 'General', '2024-01-24', '46.5', 'Debit Card', '2602311136786', '2', TRUE),
('24', '14', 'General', '2021-06-06', '54.76', 'Credit Card', '2054656581635', '1', FALSE),
('32', '14', 'VIP', '2021-06-07', '104.93', 'Debit Card', '1905040064197', '2', FALSE),
('80', '12', 'General', '2020-07-09', '48.33', 'Bank Transfer', '4944850965432', '1', TRUE),
('90', '28', 'General', '2026-07-15', '33.86', 'Bank Transfer', '1461952679740', '3', FALSE),
('8', '6', 'General', '2018-01-21', '32.9', 'Debit Card', '1108881816528', '2', TRUE),
('37', '19', 'General', '2023-07-01', '41.2', 'Bank Transfer', '1541044805550', '3', TRUE),
('136', '7', 'General', '2019-05-05', '59.6', 'Debit Card', '2492914413340', '2', TRUE),
('40', '6', 'General', '2018-03-11', '46.73', 'Debit Card', '8458906230905', '3', FALSE),
('114', '14', 'General', '2021-06-04', '40.97', 'Debit Card', '2951761617384', '2', FALSE),
('125', '17', 'General', '2022-08-15', '34.33', 'Bank Transfer', '1133379272909', '3', TRUE),
('78', '7', 'General', '2019-04-02', '48.07', 'Credit Card', '9748881581646', '1', FALSE),
('45', '5', 'General', '2018-02-08', '42.04', 'Bank Transfer', '7231165182646', '2', TRUE),
('102', '28', 'General', '2026-06-04', '31.21', 'Credit Card', '6509850807795', '3', FALSE),
('147', '13', 'General', '2021-06-15', '31.17', 'Debit Card', '4020756877820', '3', FALSE),
('93', '3', 'VIP', '2017-06-10', '108.54', 'Bank Transfer', '7962479773503', '2', FALSE),
('87', '8', 'General', '2019-04-02', '54.12', 'Bank Transfer', '4412394260455', '2', FALSE),
('90', '24', 'VIP', '2024-01-24', '100.77', 'Credit Card', '4471432950315', '3', TRUE),
('40', '25', 'General', '2025-05-14', '34.47', 'Bank Transfer', '9162560078873', '3', FALSE),
('145', '21', 'Backstage', '2023-06-29', '144.66', 'Bank Transfer', '3655647595154', '3', FALSE),
('18', '16', 'General', '2022-07-08', '34.19', 'Bank Transfer', '7189289130957', '2', TRUE),
('80', '15', 'General', '2021-06-15', '57.94', 'Debit Card', '2588516389287', '2', FALSE),
('119', '19', 'Backstage', '2023-07-23', '115.93', 'Credit Card', '4314219405784', '3', FALSE),
('122', '17', 'Backstage', '2022-07-25', '119.65', 'Debit Card', '9873764624386', '1', TRUE),
('11', '8', 'General', '2019-04-16', '48.5', 'Bank Transfer', '3794347836695', '3', FALSE),
('96', '30', 'General', '2026-06-15', '55.28', 'Bank Transfer', '1921690901595', '2', FALSE),
('17', '11', 'General', '2020-09-16', '47.81', 'Debit Card', '3645155594647', '1', FALSE),
('21', '19', 'General', '2023-05-29', '45.22', 'Bank Transfer', '3269426179012', '3', TRUE),
('80', '18', 'General', '2022-06-26', '45.29', 'Credit Card', '2642938349259', '2', FALSE),
('131', '12', 'General', '2020-08-19', '44.7', 'Credit Card', '9554570502206', '1', TRUE),
('58', '5', 'General', '2018-03-15', '46.89', 'Credit Card', '1663686399732', '1', FALSE),
('34', '20', 'General', '2023-07-15', '44.25', 'Bank Transfer', '1766383971679', '2', FALSE),
('94', '22', 'General', '2024-01-10', '30.5', 'Debit Card', '8897516286953', '3', TRUE),
('137', '8', 'Backstage', '2019-03-10', '116.56', 'Credit Card', '8752349138696', '2', FALSE),
('73', '25', 'General', '2025-06-10', '33.29', 'Credit Card', '4512496801984', '2', TRUE),
('65', '2', 'General', '2017-04-22', '42.5', 'Credit Card', '6012762321376', '3', TRUE),
('42', '9', 'Backstage', '2019-04-21', '115.38', 'Debit Card', '4908035861079', '2', FALSE),
('90', '30', 'General', '2026-06-10', '56.96', 'Debit Card', '7791355954087', '1', TRUE),
('96', '8', 'General', '2019-03-15', '56.16', 'Bank Transfer', '6899781657293', '1', TRUE),
('36', '2', 'Backstage', '2017-05-05', '131.46', 'Credit Card', '8891869735423', '2', TRUE),
('21', '1', 'General', '2017-06-26', '47.91', 'Bank Transfer', '2956027985043', '2', FALSE),
('61', '10', 'General', '2020-07-12', '37.97', 'Bank Transfer', '2105769883125', '1', TRUE),
('128', '20', 'General', '2023-08-15', '49.67', 'Credit Card', '3528526894450', '3', FALSE),
('110', '1', 'General', '2017-04-25', '59.16', 'Credit Card', '7347852805344', '3', TRUE),
('135', '18', 'General', '2022-07-31', '47.35', 'Credit Card', '1766523393488', '3', FALSE),
('96', '9', 'General', '2019-03-30', '36.83', 'Debit Card', '6848700401098', '3', TRUE),
('12', '12', 'General', '2020-07-21', '31.54', 'Bank Transfer', '9421122574267', '3', TRUE),
('35', '3', 'General', '2017-05-14', '44.41', 'Debit Card', '1769664972712', '3', TRUE),
('11', '11', 'General', '2020-09-24', '45.73', 'Bank Transfer', '5455914322464', '2', TRUE),
('49', '10', 'VIP', '2020-08-27', '108.85', 'Bank Transfer', '5807494009897', '2', TRUE),
('95', '14', 'General', '2021-06-18', '53.24', 'Debit Card', '9728175919296', '2', FALSE),
('95', '30', 'General', '2026-06-14', '41.41', 'Debit Card', '8572366331746', '3', TRUE),
('140', '10', 'General', '2020-09-03', '54.65', 'Debit Card', '8843926672186', '2', FALSE),
('43', '23', 'General', '2024-03-19', '37.27', 'Debit Card', '5829411295939', '2', TRUE),
('20', '22', 'General', '2024-03-04', '47.18', 'Bank Transfer', '3816121625216', '3', TRUE),
('37', '28', 'General', '2026-07-06', '51.02', 'Credit Card', '5149227173029', '3', FALSE),
('93', '13', 'General', '2021-04-11', '35.72', 'Debit Card', '7528130488671', '3', FALSE),
('114', '25', 'General', '2025-06-22', '43.23', 'Debit Card', '5390653539963', '1', TRUE),
('7', '24', 'General', '2024-03-20', '42.56', 'Bank Transfer', '5604710720952', '1', FALSE),
('115', '7', 'General', '2019-04-25', '42.39', 'Debit Card', '3156933342020', '3', TRUE),
('19', '15', 'VIP', '2021-05-10', '88.16', 'Credit Card', '6626349496376', '1', FALSE),
('4','1','General','2017-04-13','45.67','Credit Card','6666349456378','1',TRUE),
('4','2','General','2017-05-13','44.67','Credit Card','6246349956378','1',TRUE),
('4','3','General','2017-06-13','48.67','Credit Card','6867339455378','1',TRUE),
('5','4','General','2018-04-13','45.67','Credit Card','5666349456378','1',TRUE),
('5','5','General','2018-05-13','44.67','Credit Card','5246349956378','1',TRUE),
('5','6','General','2018-06-13','48.67','Credit Card','5867339455378','1',TRUE);


-- Load data into Ratings table
INSERT INTO Ratings (ticket_id, performance_id, artist_interpretation, sound_and_lighting, stage_presence, organization, overall_impression) VALUES
(5, 66, 5, 5, 3, 5, 3),
(6, 32, 3, 5, 4, 5, 4),
(8, 22, 4, 4, 3, 4, 5),
(12, 42, 5, 4, 5, 5, 5),
(15, 32, 5, 4, 5, 4, 3),
(17, 50, 4, 5, 4, 3, 4),
(18, 8, 5, 3, 5, 5, 4),
(19, 58, 4, 4, 5, 5, 4),
(20, 42, 3, 5, 5, 5, 4),
(21, 8, 4, 3, 4, 3, 4),
(23, 22, 3, 4, 4, 5, 4),
(27, 49, 4, 3, 3, 5, 4),
(31, 5, 3, 3, 5, 5, 5),
(32, 7, 3, 3, 5, 5, 3),
(33, 72, 3, 3, 3, 4, 4),
(34, 43, 3, 5, 3, 3, 5),
(35, 64, 4, 5, 4, 4, 5),
(40, 67, 4, 4, 4, 5, 3),
(41, 56, 5, 5, 3, 5, 5),
(46, 32, 3, 3, 4, 3, 3),
(48, 61, 4, 3, 5, 4, 3),
(51, 30, 4, 5, 5, 3, 4),
(57, 42, 4, 5, 5, 5, 4),
(61, 73, 5, 4, 4, 3, 3),
(68, 5, 3, 5, 4, 5, 4),
(69, 24, 3, 5, 4, 4, 5),
(71, 9, 3, 3, 5, 5, 4),
(77, 51, 5, 4, 3, 4, 5),
(80, 76, 3, 3, 4, 4, 3),
(81, 76, 4, 4, 3, 4, 4),
(82, 28, 4, 5, 5, 5, 3),
(87, 31, 5, 4, 5, 3, 3),
(90, 72, 3, 4, 4, 3, 4),
(91, 25, 5, 3, 5, 4, 4),
(93, 29, 3, 3, 3, 4, 3),
(94, 71, 5, 5, 4, 4, 5),
(95, 52, 4, 5, 5, 3, 3),
(100, 15, 5, 3, 5, 4, 5),
(102, 55, 4, 3, 5, 3, 3),
(105, 34, 5, 5, 3, 3, 4),
(109, 9, 4, 3, 5, 3, 5),
(111, 69, 4, 3, 5, 4, 3),
(113, 45, 3, 5, 4, 4, 5),
(114, 7, 5, 4, 5, 4, 5),
(115, 67, 4, 4, 3, 5, 3),
(120, 62, 3, 3, 4, 4, 5),
(125, 10, 5, 3, 3, 4, 3),
(127, 11, 4, 3, 3, 5, 5),
(129, 26, 4, 4, 4, 4, 4),
(130, 27, 5, 5, 5, 3, 5),
(133, 11, 3, 3, 5, 4, 5),
(136, 4, 5, 3, 3, 3, 4),
(140, 71, 5, 5, 5, 4, 5),
(143, 38, 3, 3, 4, 4, 3),
(145, 18, 3, 5, 3, 3, 5),
(146, 61, 5, 3, 3, 3, 3),
(147, 20, 5, 3, 4, 5, 5),
(150, 55, 3, 3, 5, 3, 4),
(152, 14, 3, 5, 3, 3, 3),
(157, 78, 3, 5, 5, 4, 5),
(160, 52, 5, 4, 3, 4, 3),
(163, 55, 5, 3, 4, 4, 4),
(167, 60, 5, 5, 5, 3, 5),
(169, 39, 4, 5, 4, 3, 4),
(172, 72, 5, 4, 5, 4, 5),
(175, 6, 4, 3, 4, 4, 3),
(178, 26, 3, 3, 4, 5, 3),
(179, 6, 3, 5, 4, 4, 5),
(181, 32, 3, 4, 3, 4, 3),
(183, 1, 5, 3, 4, 4, 3),
(185, 29, 5, 3, 3, 4, 4),
(186, 39, 5, 5, 3, 3, 3),
(187, 9, 5, 5, 5, 3, 4),
(188, 34, 4, 4, 3, 3, 3),
(189, 32, 3, 5, 4, 3, 5),
(193, 75, 5, 3, 4, 3, 5),
(194, 71, 4, 4, 4, 5, 5),
(199, 21, 4, 4, 4, 5, 4);

-- Load data into ResaleQueue table (Used Tickets Being Resold)
INSERT INTO ResaleQueue (ticket_id, seller_id, buyer_id, event_id, status_sold, listed_date, sold_date) VALUES
('1', '29', NULL, '1', FALSE, '2025-03-05 00:00:00', NULL),
('2', '9', NULL, '1', FALSE, '2025-03-05 01:00:00', NULL),
('3', '57',NULL, '15', FALSE, '2025-03-05 02:00:00', NULL),
('4', '72', NULL, '5', FALSE, '2025-03-05 03:00:00', NULL),
('7', '75', NULL, '3', FALSE, '2025-03-05 04:00:00', NULL),
('9', '42', NULL, '15', FALSE, '2025-03-05 05:00:00', NULL),
('10', '15', NULL, '8', FALSE, '2025-03-05 06:00:00', NULL),
('11', '102', NULL, '29', FALSE, '2025-03-05 07:00:00', NULL);

-- Load data into BuyRequests table
INSERT INTO BuyRequests (buyer_id, event_id, request_date, fulfilled) VALUES
('139', '27', '2025-04-06 00:00:00', FALSE),
('95', '25', '2025-05-06 02:00:00', FALSE),
('70', '27', '2025-04-06 04:00:00', FALSE),
('137', '25', '2025-05-06 06:00:00', FALSE),
('129', '25', '2025-04-06 08:00:00', FALSE),
('48', '27', '2025-04-06 10:00:00', FALSE),
('99', '25', '2025-05-06 12:00:00', FALSE),
('38', '25', '2025-05-06 14:00:00', FALSE),
('52', '26', '2025-03-06 16:00:00', FALSE),
('150', '25', '2025-03-06 18:00:00', FALSE);

-- TRIGGERRRRRRRRRRRRRRRS
DELIMITER $$

-- Trigger to enforce minimum staff requirements before inserting 
CREATE TRIGGER enforce_staff_requirements_before_insert
BEFORE INSERT ON StageStaff
FOR EACH ROW
BEGIN
    DECLARE staff_role VARCHAR(50);
    DECLARE current_security INT;
    DECLARE current_support INT;
    DECLARE stage_capacity INT;

    -- Get staff role
    SELECT role INTO staff_role FROM Staff WHERE staff_id = NEW.staff_id;

    -- Get current staff count and capacity
    SELECT security_staff_count, support_staff_count, max_capacity
    INTO current_security, current_support, stage_capacity
    FROM Stages WHERE stage_id = NEW.stage_id;

    -- Enforce Security Staff Constraint
    IF staff_role = 'Security' AND (current_security + 1) < (0.05 * stage_capacity) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add this Security staff member: Minimum 5% of max capacity required';
    END IF;

    -- Enforce Support Staff Constraint
    IF staff_role = 'Support' AND (current_support + 1) < (0.02 * stage_capacity) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add this Support staff member: Minimum 2% of max capacity required';
    END IF;

    -- Update staff count
    IF staff_role = 'Security' THEN
        UPDATE Stages SET security_staff_count = security_staff_count + 1 WHERE stage_id = NEW.stage_id;
    END IF;

    IF staff_role = 'Support' THEN
        UPDATE Stages SET support_staff_count = support_staff_count + 1 WHERE stage_id = NEW.stage_id;
    END IF;
END$$

-- Trigger to enforce staff minimum before deletion
CREATE TRIGGER enforce_staff_requirements_before_delete
BEFORE DELETE ON StageStaff
FOR EACH ROW
BEGIN
    DECLARE staff_role VARCHAR(50);
    DECLARE current_security INT;
    DECLARE current_support INT;
    DECLARE stage_capacity INT;

    -- Get staff role
    SELECT role INTO staff_role FROM Staff WHERE staff_id = OLD.staff_id;

    -- Get current staff count and capacity
    SELECT security_staff_count, support_staff_count, max_capacity
    INTO current_security, current_support, stage_capacity
    FROM Stages WHERE stage_id = OLD.stage_id;

    -- Prevent removing Security Staff if it goes below 5%
    IF staff_role = 'Security' AND (current_security - 1) < (0.05 * stage_capacity) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot remove this Security staff member: Minimum 5% of max capacity required';
    END IF;

    -- Prevent removing Support Staff if it goes below 2%
    IF staff_role = 'Support' AND (current_support - 1) < (0.02 * stage_capacity) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot remove this Support staff member: Minimum 2% of max capacity required';
    END IF;

    -- Update staff count
    IF staff_role = 'Security' THEN
        UPDATE Stages SET security_staff_count = security_staff_count - 1 WHERE stage_id = OLD.stage_id;
    END IF;

    IF staff_role = 'Support' THEN
        UPDATE Stages SET support_staff_count = support_staff_count - 1 WHERE stage_id = OLD.stage_id;
    END IF;
END$$

-- Trigger to enforce mandatory 5-30 min break
CREATE TRIGGER enforce_performance_schedule
BEFORE INSERT ON Performances
FOR EACH ROW
BEGIN
    DECLARE last_end_time DATETIME;
    DECLARE stage_id INT;

    -- Get the stage_id for the event
    SELECT stage_id INTO stage_id FROM Events WHERE event_id = NEW.event_id;

    -- Get the end time of the last performance in the same event
    SELECT MAX(start_time + INTERVAL duration MINUTE) INTO last_end_time
    FROM Performances
    WHERE event_id = NEW.event_id;

    -- If there is a previous performance, check the break constraints
    IF last_end_time IS NOT NULL THEN
        IF TIMESTAMPDIFF(MINUTE, last_end_time, NEW.start_time) < 5 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Performance must have at least a 5-minute break from the previous one.';
        END IF;

        IF TIMESTAMPDIFF(MINUTE, last_end_time, NEW.start_time) > 30 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Performance must have at most a 30-minute break from the previous one.';
        END IF;
    END IF;

    -- Ensure no two performances overlap on the same stage
    IF EXISTS (
        SELECT 1 FROM Performances AS P
        JOIN Events AS E ON P.event_id = E.event_id
        WHERE E.stage_id = stage_id
        AND P.start_time < (NEW.start_time + INTERVAL NEW.duration MINUTE)
        AND (P.start_time + INTERVAL P.duration MINUTE) > NEW.start_time
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Performances cannot overlap on the same stage.';
    END IF;

END$$

-- trigger to prevent artist appearance conflict
CREATE TRIGGER prevent_artist_stage_conflict
BEFORE INSERT ON Performances
FOR EACH ROW
BEGIN
    DECLARE conflicting_performance INT;

    -- Check if the same artist is already scheduled at the same time on a different stage
    SELECT COUNT(*)
    INTO conflicting_performance
    FROM Performances P
    JOIN Events E ON P.event_id = E.event_id
    WHERE (P.artist_id = NEW.artist_id OR P.band_id = NEW.band_id)
      AND E.stage_id <> (SELECT stage_id FROM Events WHERE event_id = NEW.event_id)
      AND (
        (NEW.start_time BETWEEN P.start_time AND (P.start_time + INTERVAL P.duration MINUTE)) 
        OR ((NEW.start_time + INTERVAL NEW.duration MINUTE) BETWEEN P.start_time AND (P.start_time + INTERVAL P.duration MINUTE))
      );

    IF conflicting_performance > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'An artist or band cannot perform on two different stages at the same time.';
    END IF;
END$$

-- trigger to prevent artist  to perform for more than 3 years in a row
CREATE TRIGGER prevent_artist_too_many_years
BEFORE INSERT ON Performances
FOR EACH ROW
BEGIN
    DECLARE last_three_years_count INT;
    DECLARE festival_year INT;

    -- Get the year of the festival
    SELECT YEAR(E.name) INTO festival_year
    FROM Events E WHERE E.event_id = NEW.event_id;

    -- Count how many years in a row the artist has participated
    SELECT COUNT(DISTINCT YEAR(E.name))
    INTO last_three_years_count
    FROM Performances P
    JOIN Events E ON P.event_id = E.event_id
    WHERE (P.artist_id = NEW.artist_id OR P.band_id = NEW.band_id)
      AND YEAR(E.name) BETWEEN (festival_year - 3) AND (festival_year - 1);

    -- If the artist has already participated for 3 consecutive years, block the insert
    IF last_three_years_count >= 3 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'An artist or band cannot participate in more than 3 consecutive years.';
    END IF;
END$$

-- trigger to prevent dublicate tickets
CREATE TRIGGER prevent_duplicate_tickets
BEFORE INSERT ON Tickets
FOR EACH ROW
BEGIN
    DECLARE ticket_count INT;

    -- Count existing tickets for the same visitor, event, and date
    SELECT COUNT(*) INTO ticket_count
    FROM Tickets T
    JOIN Events E ON T.event_id = E.event_id
    WHERE T.visitor_id = NEW.visitor_id
    AND E.event_id = NEW.event_id
    AND T.purchase_date = NEW.purchase_date;

    -- Prevent buying more than one ticket per event per day
    IF ticket_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A visitor cannot purchase more than one ticket per day for the same event.';
    END IF;
END$$

-- trigger to enforce that the tickets won't surpass the capacity
CREATE TRIGGER enforce_stage_capacity
BEFORE INSERT ON Tickets
FOR EACH ROW
BEGIN
    DECLARE total_tickets INT;
    DECLARE max_capacity INT;

    -- Get the stage capacity for the event
    SELECT S.max_capacity INTO max_capacity
    FROM Events E
    JOIN Stages S ON E.stage_id = S.stage_id
    WHERE E.event_id = NEW.event_id;

    -- Count how many tickets have already been sold for the event
    SELECT COUNT(*) INTO total_tickets
    FROM Tickets
    WHERE event_id = NEW.event_id;

    -- Prevent exceeding the stage's max capacity
    IF (total_tickets + 1) > max_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell ticket: Stage capacity exceeded.';
    END IF;
END$$


-- trigger to enforce that the vip tickets won't surpass the 10% capacity
CREATE TRIGGER enforce_vip_ticket_limit
BEFORE INSERT ON Tickets
FOR EACH ROW
BEGIN
    DECLARE total_vip_tickets INT;
    DECLARE max_vip_tickets INT;
    DECLARE stage_capacity INT;

    -- Get the stage capacity for the event
    SELECT S.max_capacity INTO stage_capacity
    FROM Events E
    JOIN Stages S ON E.stage_id = S.stage_id
    WHERE E.event_id = NEW.event_id;

    -- Calculate the maximum VIP tickets allowed
    SET max_vip_tickets = stage_capacity * 0.10;

    -- Count how many VIP tickets have already been sold
    SELECT COUNT(*) INTO total_vip_tickets
    FROM Tickets
    WHERE event_id = NEW.event_id AND ticket_type = 'VIP';

    -- Prevent exceeding 10% of stage capacity for VIP tickets
    IF (NEW.ticket_type = 'VIP' AND total_vip_tickets + 1 > max_vip_tickets) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell ticket: VIP ticket limit (10% of stage capacity) exceeded.';
    END IF;
END$$

-- trigger to prevent reusing tickets
CREATE TRIGGER prevent_reusing_ticket
BEFORE UPDATE ON Tickets
FOR EACH ROW
BEGIN
    -- If a ticket is already marked as used, prevent re-use
    IF OLD.is_used = TRUE AND NEW.is_used = TRUE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This ticket has already been used and cannot be reused.';
    END IF;
END$$

-- trigger for fifo queue

DROP TRIGGER IF EXISTS auto_match_resale$$

CREATE TRIGGER auto_match_resale
BEFORE INSERT ON ResaleQueue
FOR EACH ROW
BEGIN
    DECLARE matched_request_id INT;
    DECLARE matched_buyer_id INT;

    -- Find the oldest unfulfilled buy request for the same event (FIFO)
    SELECT request_id, buyer_id INTO matched_request_id, matched_buyer_id
    FROM BuyRequests
    WHERE event_id = NEW.event_id AND fulfilled = FALSE
    ORDER BY request_date ASC
    LIMIT 1;

    -- If a matching buyer is found, complete the transaction
    IF matched_request_id IS NOT NULL THEN
        -- Directly set NEW values (not UPDATE)
        SET NEW.buyer_id = matched_buyer_id;
        SET NEW.status_sold = TRUE;
        SET NEW.sold_date = NOW();

        -- Transfer ticket ownership
        UPDATE Tickets
        SET visitor_id = matched_buyer_id
        WHERE ticket_id = NEW.ticket_id;

        -- Mark the buyer request as fulfilled
        UPDATE BuyRequests
        SET fulfilled = TRUE
        WHERE request_id = matched_request_id;

        -- Optional log
        INSERT INTO TriggerLog (message)
        VALUES (CONCAT('Matched buy_request_id ', matched_request_id, ' to resale ticket_id ', NEW.ticket_id));
    ELSE
        SET NEW.status_sold = FALSE;
        SET NEW.buyer_id = NULL;
        SET NEW.sold_date = NULL;

        INSERT INTO TriggerLog (message)
        VALUES (CONCAT('No match found for resale ticket_id ', NEW.ticket_id));
    END IF;
END$$




DROP TRIGGER IF EXISTS auto_match_buy_request$$

CREATE TRIGGER auto_match_buy_request
BEFORE INSERT ON BuyRequests
FOR EACH ROW
BEGIN
    DECLARE matched_resale_id INT;
    DECLARE matched_ticket_id INT;
    DECLARE matched_seller_id INT;

    -- Find the oldest unsold resale ticket for the event
    SELECT resale_id, ticket_id, seller_id
    INTO matched_resale_id, matched_ticket_id, matched_seller_id
    FROM ResaleQueue
    WHERE event_id = NEW.event_id AND status_sold = FALSE
    ORDER BY listed_date ASC
    LIMIT 1;

    IF matched_resale_id IS NOT NULL THEN
        -- Update the resale ticket
        UPDATE ResaleQueue
        SET buyer_id = NEW.buyer_id,
            status_sold = TRUE,
            sold_date = NOW()
        WHERE resale_id = matched_resale_id;

        -- Transfer ticket ownership
        UPDATE Tickets
        SET visitor_id = NEW.buyer_id
        WHERE ticket_id = matched_ticket_id;

        -- Mark this buy request as fulfilled *before* inserting
        SET NEW.fulfilled = TRUE;

        -- Log it
        INSERT INTO TriggerLog (message)
        VALUES (CONCAT('Matched resale_id ', matched_resale_id, ' to buyer_id ', NEW.buyer_id));
    ELSE
        SET NEW.fulfilled = FALSE;
        INSERT INTO TriggerLog (message)
        VALUES (CONCAT('No match found for buyer_id ', NEW.buyer_id));
    END IF;
END$$



-- trigger to prevent used ticket resale 
CREATE TRIGGER prevent_used_ticket_resale
BEFORE INSERT ON ResaleQueue
FOR EACH ROW
BEGIN
    DECLARE ticket_used BOOLEAN;

    -- Check if the ticket is already used
    SELECT is_used INTO ticket_used FROM Tickets WHERE ticket_id = NEW.ticket_id;

    -- Prevent resale if ticket is already used
    IF ticket_used = TRUE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A used ticket cannot be listed for resale.';
    END IF;
END$$

-- trigger to remove request after ticket purchase 
CREATE TRIGGER remove_unfulfilled_request_after_ticket_purchase
AFTER INSERT ON Tickets
FOR EACH ROW
BEGIN
    -- Remove the buyer request if they have an unfulfilled request for this event
    DELETE FROM BuyRequests
    WHERE buyer_id = NEW.visitor_id 
    AND event_id = NEW.event_id 
    AND fulfilled = FALSE;
END$$

-- trigger to prevent rating without activated ticket
CREATE TRIGGER prevent_rating_without_used_ticket
BEFORE INSERT ON Ratings
FOR EACH ROW
BEGIN
    DECLARE ticket_used BOOLEAN;

    -- Check if the ticket has been used
    SELECT is_used INTO ticket_used FROM Tickets WHERE ticket_id = NEW.ticket_id;

    -- Prevent rating if ticket has not been used
    IF ticket_used = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only visitors with used tickets can rate performances.';
    END IF;
END$$

-- trigger to prevent duplicate ratings
CREATE TRIGGER prevent_duplicate_ratings
BEFORE INSERT ON Ratings
FOR EACH ROW
BEGIN
    DECLARE existing_ratings INT;

    -- Count how many times the visitor (via ticket) has rated this performance
    SELECT COUNT(*) INTO existing_ratings 
    FROM Ratings 
    WHERE ticket_id = NEW.ticket_id 
    AND performance_id = NEW.performance_id;

    -- If a rating already exists, block the insert
    IF existing_ratings > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Visitors can only rate a performance once.';
    END IF;
END$$

CREATE TRIGGER prevent_rating_other_events
BEFORE INSERT ON Ratings
FOR EACH ROW
BEGIN
    DECLARE ticket_event INT;
    DECLARE performance_event INT;

    -- Get event linked to ticket
    SELECT event_id INTO ticket_event FROM Tickets WHERE ticket_id = NEW.ticket_id;

    -- Get event linked to performance
    SELECT event_id INTO performance_event FROM Performances WHERE performance_id = NEW.performance_id;

    -- Ensure the ticket's event matches the performance's event
    IF ticket_event <> performance_event THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Visitors can only rate performances from the event they attended.';
    END IF;
END$$

DELIMITER ;
