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

                    -- DAY 4

-- Who was the last animal seen by William Tatcher?
SELECT vets.name AS vet_name, animals.name AS Last_seen_animal, date_of_visit AS visit_date FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.id = 1 ORDER BY date_of_visit desc LIMIT 1;

-- How many different animals did Stephanie Mendez see?
SELECT vets.name AS vet_name, count(animals.name) AS animals_seen FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.id = 3 GROUP BY vets.name;

-- List all vets and their specialties, including vets with no specialties.
SELECT DISTINCT vets.name as vet_name, species.name as species_name from vets left join specializations on vets.id = specializations.vet_id left join animals on specializations.species_id = animals.species_id left join species on  animals.species_id = species.id order by vets.name;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT vets.name AS vet_name, animals.name AS Last_seen_animal, date_of_visit AS visit_date FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.id = 3 and visits.date_of_visit between '2020-04-01' and '2020-08-30' ORDER BY date_of_visit asc ;

-- Who was Maisy Smith's first visit?
SELECT vets.name AS vet_name, animals.name AS First_seen_animal, date_of_visit AS visit_date FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.id = 2 ORDER BY date_of_visit asc LIMIT 1;

-- Details for most recent visit: animal information, vet information, and date of visit.
SELECT animals.name AS Animal_name, vets.name AS vet_name, visits.date_of_visit from animals join vets on vets.id = animals.id join visits on animals.id = visits.animal_id order by visits.date_of_visit desc limit 1;

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT (visits.animal_id) from visits join animals on visits.animal_id = animals.id join vets on visits.vet_id = vets.id join specializations on vets.id = specializations.vet_id join species on animals.species_id = species.id where specializations.species_id != animals.species_id;

-- What specialty should Maisy Smith consider getting? Look for the species Maisy Smith  gets the most.
SELECT species.name AS Most_Seen, count(animals.name) from species join animals on species.id = animals.species_id join visits on animals.id = visits.animal_id join vets on visits.vet_id = vets.id where vets.id = 2 group by species.name order by count(animals.name) desc limit 1;


                    -- DAY 5

-- Use Explain Analyse to monitor query speed of finding specific animal with id 4
EXPLAIN ANALYSE SELECT COUNT(*) FROM visits where animal_id = 4;

-- Use Explain Analyse to monitor query speed of finding an email address in owners table
EXPLAIN ANALYSE SELECT * FROM owners where email = 'owner_18327@mail.com';

--  Use Explain Analyse to monitor query speed of finding the vets id in vets table
EXPLAIN ANALYSE SELECT * FROM visits where vet_id = 2;