/* Populate database with sample data. */
begin;
savepoint davon;
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Agumon', '2020-02-03', '0', 'true', '10.23', 2 , 1);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Gabumon', '2018-11-15', '2', 'true', '8', 2, 2);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Pikachu', '2021-01-07', '1', 'false', '15.04', 1 , 2);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Devimon', '2017-05-12', '5', 'true', '11', 2, 3);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Charmander', '2020-02-06', '0', 'false', '-11', 1, 4);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Plantmon', '2021-10-15', '2', 'true', '-5.7', 2, 3);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Squirtle', '1993-04-02', '3', 'false', '-12.13', 1, 4);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Angemon', '2005-06-12', '1', 'true', '-45', 2, 5);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ('Boarmon', '2005-06-07', '7', 'true', '20.4', 2, 5);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ( 'Blossom', '1998-10-13', '3', 'true', '17', 1, 4);
INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owners_id) VALUES ( 'Ditto', '2022-05-14', '4', 'true', '22', 1, NULL);
INSERT INTO owners ( full_name, age) VALUES ('Sam Smith', '34');
INSERT INTO owners ( full_name, age) VALUES ('Jennifer Orwell', '19');
INSERT INTO owners ( full_name, age) VALUES ('Bob', '45');
INSERT INTO owners ( full_name, age) VALUES ('Melody Pond', '77');
INSERT INTO owners ( full_name, age) VALUES ('Dean Winchester', '14');
INSERT INTO owners ( full_name, age) VALUES ('Jodie Whittaker', '38');
INSERT INTO species ( name) VALUES ('Pokemon');
INSERT INTO species ( name) VALUES ('Digimon');
savepoint davonUltra;
commit;



    -- Sam Smith owns Agumon.
    -- Jennifer Orwell owns Gabumon and Pikachu.
    -- Bob owns Devimon and Plantmon.
    -- Melody Pond owns Charmander, Squirtle, and Blossom.
    -- Dean Winchester owns Angemon and Boarmon.
