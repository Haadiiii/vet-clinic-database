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
INSERT INTO vets ( name, age, date_of_graduation) VALUES ('William Tatcher', '45', '2000-04-23');
INSERT INTO vets ( name, age, date_of_graduation) VALUES ('Maisy Smith', '26', '2019-01-17');
INSERT INTO vets ( name, age, date_of_graduation) VALUES ('Stephanie Mendez', '64', '1981-05-04');
INSERT INTO vets ( name, age, date_of_graduation) VALUES ('Jack Harkness', '38', '2008-06-08');
INSERT INTO specializations (species_id, vet_id) VALUES (1, 1);
INSERT INTO specializations (species_id, vet_id) VALUES (2, 3);
INSERT INTO specializations (species_id, vet_id) VALUES (1, 3);
INSERT INTO specializations (species_id, vet_id) VALUES (2, 4);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-05-24', 1, 1);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-07-22', 1, 3);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2021-02-02', 2, 4);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-01-05', 3, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-03-08', 3, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-05-14', 3, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-05-04', 4, 3);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2021-02-24', 5, 4);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2019-12-19', 6, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-08-10', 6, 1);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2021-03-07', 6, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2019-09-29', 7, 3);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-10-03', 8, 4);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-11-04', 8, 4);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2019-01-24', 9, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2021-05-15', 9, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-02-27', 9, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-08-23', 9, 2);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2020-05-24', 10, 3);
INSERT INTO visits ( date_of_visit, animal_id, vet_id) VALUES ('2021-01-11', 10, 1);
savepoint davonUltra;
commit;


  

    -- Agumon visited William Tatcher on May 24th, 2020.
    -- Agumon visited Stephanie Mendez on Jul 22th, 2020.
    -- Gabumon visited Jack Harkness on Feb 2nd, 2021.
    -- Pikachu visited Maisy Smith on Jan 5th, 2020.
    -- Pikachu visited Maisy Smith on Mar 8th, 2020.
    -- Pikachu visited Maisy Smith on May 14th, 2020.
    -- Devimon visited Stephanie Mendez on May 4th, 2021.
    -- Charmander visited Jack Harkness on Feb 24th, 2021.
    -- Plantmon visited Maisy Smith on Dec 21st, 2019.
    -- Plantmon visited William Tatcher on Aug 10th, 2020.
    -- Plantmon visited Maisy Smith on Apr 7th, 2021.
    -- Squirtle visited Stephanie Mendez on Sep 29th, 2019.
    -- Angemon visited Jack Harkness on Oct 3rd, 2020.
    -- Angemon visited Jack Harkness on Nov 4th, 2020.
    -- Boarmon visited Maisy Smith on Jan 24th, 2019.
    -- Boarmon visited Maisy Smith on May 15th, 2019.
    -- Boarmon visited Maisy Smith on Feb 27th, 2020.
    -- Boarmon visited Maisy Smith on Aug 3rd, 2020.
    -- Blossom visited Stephanie Mendez on May 24th, 2020.
    -- Blossom visited William Tatcher on Jan 11th, 2021.


