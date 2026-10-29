
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
