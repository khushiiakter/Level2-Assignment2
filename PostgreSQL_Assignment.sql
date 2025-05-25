-- Active: 1747935852114@@localhost@5432@conservation_db

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name TEXT,
    region TEXT
);

SELECT * FROM rangers;

INSERT INTO rangers (name, region) VALUES

 ('Alice Green','Northern Hills'),
 ('Bob White','River Delta'),
 ('Carol King','Mountain Range');


CREATE TABLE species  (
    species_id  SERIAL PRIMARY KEY,
    common_name  TEXT,
    scientific_name TEXT,
    discovery_date DATE,
    conservation_status VARCHAR(20)
);

SELECT * FROM species;

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
 ('Snow Leopard', 'Panthera uncia ', '1775-01-01', 'Endangered '),
 ('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
 ('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
 ('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    species_id INT REFERENCES species(species_id),
    ranger_id INT REFERENCES rangers(ranger_id),
    location TEXT,
    sighting_time TIMESTAMP,
    notes TEXT
);

SELECT * FROM sightings;

INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
 (1, 1, 'Peak Ridge', '2024-05-10 07:45:00 ', 'Camera trap image captured'),
 (2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
 (3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
 (1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);

-- problem 1

INSERT INTO rangers (name, region) VALUES ('Derek Fox', 'Coastal Plains');
 
--  problem 2

SELECT  count(*) AS unique_species_count FROM (SELECT species_id FROM sightings GROUP BY species_id);

-- problem 3
SELECT * FROM sightings 
    WHERE location LIKE '%Pass%';

--problem 4

SELECT r.name , COUNT(s.sighting_id) As total_sightings FROM rangers r JOIN sightings s ON r. ranger_id = s.ranger_id GROUP BY r.name;

-- problem 5 
 SELECT common_name FROM species WHERE species_id NOT IN (
    SELECT species_id FROM sightings
 ); 

 