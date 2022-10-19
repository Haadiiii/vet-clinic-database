/* Database schema to keep the structure of entire database. */

drop TABLE if exists animals;


CREATE TABLE animals (
    id bigserial,
    name varchar(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL NOT NULL,
    PRIMARY KEY (id),
    species_id INT,
    owners_id INT,
    CONSTRAINT species
     FOREIGN KEY (species_id)
      REFERENCES species(id),
       CONSTRAINT owners
     FOREIGN KEY (owners_id)
      REFERENCES owners(id)
);

drop TABLE if exists owners CASCADE;
drop TABLE if exists species CASCADE;

CREATE TABLE owners (
    id bigserial,
    full_name varchar(100) NOT NULL,
    age INT,
    PRIMARY KEY (id)
);

CREATE TABLE species (
    id bigserial,
    name varchar(100) NOT NULL,
    PRIMARY KEY (id)
);