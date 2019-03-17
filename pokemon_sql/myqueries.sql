/*
Create your pokemon schema
 */
/*create schema  pokemon;*/

/*
What are all the types of pokemon that a pokemon can have?
 */
SELECT  name as Type FROM pokemon.types;

/*
What is the name of the pokemon with id 45?
 */

select name from pokemon.pokemons p  where p.id=45;

/*
How many pokemon are there?
 */

select count(*) from pokemon.pokemons;

/*How many types are there?*/

select count(*) from pokemon.types;

/*
How many pokemon have a secondary type?
 */

select count(*) from pokemon.pokemons where pokemon.pokemons.secondary_type IS NOT NULL;

/*
What is each pokemon's primary type?
 */

select pokemons.name,types.name from pokemon.pokemons, pokemon.types where pokemon.pokemons.primary_type=pokemon.types.id;

/*
What is Rufflet's secondary type?
 */

select secondary_type from pokemon.pokemons where pokemon.pokemons.name ="Rufflet";



/*select  pokemon_id from pokemon.pokemon_trainer where pokemon.pokemon_trainer.trainerID=303;

select name  from pokemon.pokemons where  pokemon.pokemons.id=2;*/


/*Merge the above queries*/
/*
What are the names of the pokemon that belong to the trainer with trainerID 303?
 */

select  name from pokemon.pokemons  where pokemon.pokemons.id IN

      (select  pokemon_id from pokemon.pokemon_trainer where pokemon.pokemon_trainer.trainerID=303);

/*
How many pokemon have a secondary type Poison
 */

select count(*) from pokemon.pokemons where pokemon.pokemons.secondary_type IN
                                           (select id from pokemon.types where types.name = 'Poison');

/*
What are all the primary types and how many pokemon have that type?
 */
select count(*) from pokemon.pokemons where pokemon.pokemons.primary_type IS NOT NULL;

/*
How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
(Hint: your query should not display a trainer
 */

select count(*) from pokemon.pokemon_trainer where pokemon_trainer.pokelevel >= 100;

/*
How many pokemon only belong to one trainer and no other?
 */

select   count( distinct trainerID ) from pokemon.pokemon_trainer;

select   count( distinct trainerID) from pokemon.pokemon_trainer;

select  count(*)  from pokemon.pokemon_trainer;



select A.trainerID,B.pokemon_id from pokemon.pokemon_trainer A, pokemon.pokemon_trainer B
where A.trainerID<> B.pokemon_id;

/*
Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest
to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.
 */
/*
sorting data depending which Pokemon has more Defends is the strongest */


select  p.name as "Pokemon Name"	 ,
       t.trainername as "Trainer Name	" ,
       pt.pokelevel as "Level",
       pt.defense as "Defends",
        ty.name as "Primary Type",
       ty1.name as "Secondary Type"


      from ((((pokemon.pokemon_trainer pt
      INNER JOIN pokemon.pokemons p ON pt.pokemon_id= p.id)
      INNER  JOIN pokemon.trainers t ON t.trainerID = pt.trainerID)
      INNER  JOIN  pokemon.types ty on ty.id = p.primary_type)
      INNER  JOIN  pokemon.types ty1 on ty1.id =p.secondary_type)
ORDER BY  pt.defense DESC;




