/* Database schema to keep the structure of entire database. */
drop TABLE if exists animals;
CREATE TABLE animals (
    id bigserial,
    name varchar(100) NOT NULL,
    species varchar(100) NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

-- WITH cte AS (
--     SELECT 
--         id, 
--         name, 
--         date_of_birth, 
--         escape_attempts,
--         neutered,
--         weight_kg,
--         ROW_NUMBER() OVER (
--             PARTITION BY 
--                 name, 
--                 date_of_birth, 
--                 escape_attempts,
--                 neutered,
--                 weight_kg
--             ORDER BY 
--             name, 
--                 date_of_birth, 
--                 escape_attempts,
--                 neutered,
--                 weight_kg
--         ) AS row_num
--     FROM animals
-- )
-- DELETE FROM cte
-- WHERE row_num > 1;