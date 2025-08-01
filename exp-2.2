-- Experiment 2(b):

CREATE DATABASE finance_db;
USE finance_db;

CREATE TABLE yearly_data (
    record_id INT,
    record_year INT,
    value_npv INT
);

CREATE TABLE query_requests (
    query_id INT,
    query_year INT
);


INSERT INTO yearly_data (record_id, record_year, value_npv)
VALUES
(1, 2018, 150),
(7, 2020, 25),
(13, 2019, 60),
(1, 2019, 120),
(2, 2008, 130),
(3, 2009, 15),
(11, 2020, 80),
(7, 2019, 0);


INSERT INTO query_requests (query_id, query_year)
VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);


SELECT 
    qr.query_id AS ID,
    qr.query_year AS Year,
    COALESCE(yd.value_npv, 0) AS NPV
FROM 
    query_requests qr
LEFT JOIN 
    yearly_data yd ON qr.query_id = yd.record_id AND qr.query_year = yd.record_year;
