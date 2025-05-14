-- Create the database
CREATE DATABASE IF NOT EXISTS PulseUniversityFestival;
USE PulseUniversityFestival;

-- Table: Location
CREATE TABLE IF NOT EXISTS Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    Coordinates POINT NOT NULL,
    City VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Continent VARCHAR(50) NOT NULL
);

-- Table for Festivals
CREATE TABLE IF NOT EXISTS Festivals (
    festival_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    location_id INT NOT NULL,
    festival_image_url VARCHAR(255),
    festival_image_description TEXT,
    FOREIGN KEY (location_id) REFERENCES Location(location_id),
    UNIQUE (year)
);

-- Table for Stages 
CREATE TABLE IF NOT EXISTS Stages (
    stage_id INT AUTO_INCREMENT PRIMARY KEY,
    festival_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    max_capacity INT NOT NULL,
    required_equipment TEXT,
    stage_image_url VARCHAR(255),
    stage_image_description TEXT,
    security_staff_count INT NOT NULL DEFAULT 0,
    support_staff_count INT NOT NULL DEFAULT 0,
    FOREIGN KEY (festival_id) REFERENCES Festivals(festival_id) ON DELETE CASCADE
);


-- Table for Staff 
CREATE TABLE IF NOT EXISTS Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    staff_image_url VARCHAR(255),
    staff_image_description TEXT,  -- prosopika dedomena ? oeo?
    role VARCHAR(50) NOT NULL CHECK (role IN ('Technical', 'Security', 'Support')),
    experience_level VARCHAR(50) NOT NULL CHECK (experience_level IN ('Trainee', 'Beginner', 'Intermediate', 'Experienced', 'Very Experienced'))
);

-- Table for Stage Staff Assignments
CREATE TABLE IF NOT EXISTS StageStaff (
    stage_id INT NOT NULL,
    staff_id INT NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (stage_id, staff_id, date),
    FOREIGN KEY (stage_id) REFERENCES Stages(stage_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id) ON DELETE CASCADE
);

-- Table for Artists
CREATE TABLE IF NOT EXISTS Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    pseudonym VARCHAR(255),
    birthdate DATE,
    website VARCHAR(255),
    artist_image_url VARCHAR(255),
    artist_image_description TEXT,
    instagram_profile VARCHAR(255)
);

-- Table: ArtistGenre
CREATE TABLE IF NOT EXISTS ArtistGenre (
    artist_id INT NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    SubGenre VARCHAR(100),
    PRIMARY KEY (artist_id, Genre),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Table for Bands
CREATE TABLE IF NOT EXISTS Bands (
    band_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    formation_date DATE,
    website VARCHAR(255),
    instagram_profile VARCHAR(255),
    bands_image_url VARCHAR(255),
    bands_image_description TEXT
);

-- Table for Band Members
CREATE TABLE IF NOT EXISTS BandMembers (
    band_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (band_id, artist_id),
    band_members_image_url VARCHAR(255),
    band_members_image_description TEXT,
    FOREIGN KEY (band_id) REFERENCES Bands(band_id) ON DELETE CASCADE,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id) ON DELETE CASCADE
);

-- Table for Events
CREATE TABLE IF NOT EXISTS Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    festival_id INT NOT NULL,
    stage_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    event_image_url VARCHAR(255),
    event_image_description TEXT,
    FOREIGN KEY (festival_id) REFERENCES Festivals(festival_id) ON DELETE CASCADE,
    FOREIGN KEY (stage_id) REFERENCES Stages(stage_id) ON DELETE CASCADE
);

-- Table for Performances
CREATE TABLE IF NOT EXISTS Performances (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    artist_id INT,
    band_id INT,
    type VARCHAR(255) NOT NULL,
    start_time DATETIME NOT NULL,
    duration INT NOT NULL, -- Duration in minutes,
    performances_image_url VARCHAR(255),
    performances_image_description TEXT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id) ON DELETE CASCADE,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id) ON DELETE CASCADE,
    FOREIGN KEY (band_id) REFERENCES Bands(band_id) ON DELETE CASCADE,
    CHECK (duration <= 180) -- Maximum duration of 3 hours
);

-- Table for Visitors
CREATE TABLE IF NOT EXISTS Visitors (
    visitor_id INT AUTO_INCREMENT PRIMARY KEY,
    visitor_name VARCHAR(255) NOT NULL,
    visitor_surname VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255) NOT NULL,
    age INT NOT NULL
);

-- Table for Tickets
CREATE TABLE IF NOT EXISTS Tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    visitor_id INT NOT NULL,
    event_id INT NOT NULL,
    ticket_type VARCHAR(50) NOT NULL CHECK (ticket_type IN ('General', 'VIP', 'Backstage')),
    purchase_date DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL CHECK (payment_method IN ('Credit Card', 'Debit Card', 'Bank Transfer')),
    ean13_code BIGINT NOT NULL,
    ticket_days INT NOT NULL ,
    is_used BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id) ON DELETE CASCADE,
    FOREIGN KEY (visitor_id) REFERENCES Visitors(visitor_id) ON DELETE CASCADE,
    UNIQUE(ean13_code)
); 

-- Table for Ratings
CREATE TABLE IF NOT EXISTS Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_id INT NOT NULL,
    performance_id INT NOT NULL,
    artist_interpretation INT NOT NULL CHECK (artist_interpretation BETWEEN 1 AND 5),
    sound_and_lighting INT NOT NULL CHECK (sound_and_lighting BETWEEN 1 AND 5),
    stage_presence INT NOT NULL CHECK (stage_presence BETWEEN 1 AND 5),
    organization INT NOT NULL CHECK (organization BETWEEN 1 AND 5),
    overall_impression INT NOT NULL CHECK (overall_impression BETWEEN 1 AND 5),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (performance_id) REFERENCES Performances(performance_id) ON DELETE CASCADE,
    UNIQUE(ticket_id, performance_id) -- Ensures a visitor can rate a performance only once
);

-- Table for Resale Queue
CREATE TABLE IF NOT EXISTS ResaleQueue (
    resale_id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_id INT NOT NULL,
    seller_id INT NOT NULL,  -- The visitor selling the ticket
    buyer_id INT,  -- The visitor buying the ticket (NULL until sold)
    event_id INT NOT NULL,  -- The event related to the ticket
    status_sold BOOLEAN DEFAULT FALSE, -- if false then pending else sold
    listed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- When ticket was listed
    sold_date TIMESTAMP NULL,  -- When ticket was sold (NULL until sold)
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (seller_id) REFERENCES Visitors(visitor_id) ON DELETE CASCADE,
    FOREIGN KEY (buyer_id) REFERENCES Visitors(visitor_id) ON DELETE SET NULL,
    FOREIGN KEY (event_id) REFERENCES Events(event_id) ON DELETE CASCADE
);

-- Table for Buy Requests (Queue)
CREATE TABLE IF NOT EXISTS BuyRequests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_id INT NOT NULL,  -- The visitor looking for a ticket
    event_id INT NOT NULL,  -- The event they want to attend
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Time of request
    fulfilled BOOLEAN DEFAULT FALSE,  -- Whether request has been completed
    FOREIGN KEY (buyer_id) REFERENCES Visitors(visitor_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS TriggerLog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indexes for optimization

CREATE INDEX idx_rating_performance_id ON Ratings(performance_id); -- query 4
CREATE INDEX visitor_id_idx ON Tickets(visitor_id); -- query 6
CREATE INDEX  ticket_id_idx ON Ratings(ticket_id);  -- query 6
CREATE INDEX idx_performance_artist_id ON Performances(artist_id); -- query 4
CREATE INDEX idx_artist_id ON Artists(artist_id);  -- query 4

