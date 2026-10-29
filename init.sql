
CREATE DATABASE IF NOT EXISTS lab;

USE lab;

CREATE TABLE IF NOT EXISTS wells (
                                     field_name STRING,
                                     well_id INT,
                                     oil_production DOUBLE
)
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ','
    STORED AS TEXTFILE;

SHOW DATABASES;
SHOW TABLES;


USE lab;

INSERT INTO TABLE wells VALUES
    ('Romashkino', 101, 12.5),
    ('Romashkino', 102, 15.3),
    ('Romashkino', 103, 9.8),
    ('Arlan', 201, 20.1),
    ('Arlan', 202, 17.6),
    ('Arlan', 203, 22.4),
    ('Tuimazy', 301, 11.2),
    ('Tuimazy', 302, 14.7);

SELECT * FROM wells;


SELECT
    field_name,
    COUNT(*) AS well_count,
    ROUND(SUM(oil_production), 2) AS total_production,
    ROUND(AVG(oil_production), 2) AS average_production
FROM wells
GROUP BY field_name
ORDER BY total_production DESC;
