/*Queries that provide answers to the questions from all projects.*/

SELECT name from animals WHERE name iLIKE '%mon';
SELECT * from animals WHERE EXTRACT(year from date_of_birth) BETWEEN 2016 AND 2019;
SELECT name from animals WHERE neutered=true AND escape_attempts < 3;
SELECT date_of_birth from animals WHERE name='Agumon' OR name='Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered = true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

begin;
update animals set species='unspecified';
rollback;

begin;

update animals SET species = 'Degimon' where name ilike '%mon';
UPDATE animals SET species = 'Pokemon' where name not ilike '%mon';
commit;

begin;

DELETE FROM animals;
rollback;

begin;
savepoint aceUltra;
DELETE from animals where date_of_birth >= '2022-01-01';
rollback to aceUltra;

savepoint luffy;

UPDATE animals SET weight_kg = weight_kg * -1;
rollback to luffy;
UPDATE animals SET weight_kg = weight_kg * -1 where weight_kg < 0;
commit;

--================== QUERIES =========================

                   -- DAY 2

SELECT count (*) AS animalCount from animals;
SELECT * from animals where escape_attempts < 1;
SELECT cast(avg (weight_kg) as DECIMAL(5,2)) as averageWeight from animals;
SELECT name, max(escape_attempts) from animals where neutered = true or neutered = false group by name ORDER by max(escape_attempts) desc;
SELECT max(weight_kg) as maxWeight, min(weight_kg) as minWeight from animals;
SELECT cast(avg(escape_attempts) as DECIMAL(5,2)) as averageEscapeAttempts from animals WHERE EXTRACT(year from date_of_birth) between 1990 AND 2000;

                   -- DAY 3

-- animals belong to Melody Pond
SELECT animals.name from animals join owners on animals.owners_id = owners.id where owners.full_name = 'Melody Pond';

-- List of all animals that are pokemon.
SELECT animals.name from animals join species on animals.species_id = species.id where species.name = 'Pokemon';

--all owners and their animals, include those that don't own any animal.
SELECT owners.full_name, animals.name from owners left join animals on owners.id = animals.owners_id;

-- How many animals are there per species
SELECT species.name, count(animals.name) from species join animals on species.id = animals.species_id group by species.name;

--  all Digimon owned by Jennifer Orwell.
SELECT animals.name from animals join owners on animals.owners_id = owners.id join species on animals.species_id = species.id where owners.full_name = 'Jennifer Orwell' and species.name = 'Digimon';

-- all animals owned by Dean Winchester that haven't tried to escape.
SELECT animals.name from animals join owners on animals.owners_id = owners.id where owners.full_name = 'Dean Winchester' and animals.escape_attempts = 0;

-- owns the most animals
SELECT owners.full_name, count(animals.name) from owners join animals on owners.id = animals.owners_id group by owners.full_name order by count(animals.name) desc limit 1;