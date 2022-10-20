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

drop table if exists specializations CASCADE;
CREATE TABLE specializations (
    species_id INT NOT NULL,
    vet_id INT NOT NULL,
    CONSTRAINT species
     FOREIGN KEY (species_id)
      REFERENCES species(id),
      CONSTRAINT vet
     FOREIGN KEY (vet_id)
      REFERENCES vets(id)
);

drop TABLE if exists vets CASCADE;

CREATE TABLE vets (
    id bigserial,
    name varchar(100) NOT NULL,
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);

drop TABLE if exists visits CASCADE;

CREATE TABLE visits (
    vet_id INT,
    animal_id INT,
    date_of_visit DATE,
    CONSTRAINT animal
     FOREIGN KEY (animal_id)
      REFERENCES animals(id),
    CONSTRAINT vet
      FOREIGN KEY (vet_id)
      REFERENCES vets(id)
);