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

