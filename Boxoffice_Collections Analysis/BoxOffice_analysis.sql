create database boxoffice_db;  -- creating database
use boxoffice_db;              -- making this database as a default

select movie_name, release_date   -- 1st Answer 
from boxoffice_db.movie_details
where release_date like '%2020%';

select * from boxoffice_db.movie_details   -- 2nd answer
order by runtime desc
limit 5;

select movie_name, release_date, movie_genre, producer   -- 3rd Answer
from boxoffice_db.movie_details
where movie_genre = 'comedy' and release_date between '2019-01-01 00:00:00' and '2019-12-31 00:00:00';

select movie_name, runtime, release_date  -- 4th Answer  
from boxoffice_db.movie_details
where release_date like '2020%'
order by runtime;

select movie_name, movie_opening, movie_firstweek  -- 5th **
from boxoffice_db.movie_commercials
order by movie_firstweek desc;

select * from movie_commercials;

select movie_name, movie_weekend, movie_firstweek  -- 6th Answer
from boxoffice_db.movie_commercials
where movie_weekend = movie_firstweek;

select movie_name, movie_total_worldwide   -- 7th Answer
from boxoffice_db.movie_commercials
order by  movie_total_worldwide desc
limit 3;     

select movie_name, datename(weekday, release_date)  -- 8th answer
from boxoffice_db.movie_details;
                     
select movie_name, movie_genre, banner  -- 9th answer
from boxoffice_db.movie_details
where banner = 'Reliance Entertainment' and movie_genre <> 'comedy';

select movie_name, release_date, dayname(release_date), monthname(release_date) -- 10th ***
from boxoffice_db.movie_details
where dayname(release_date) in ('Friday', 'Saturday', 'Sunday') and monthname(release_date) in ('October', 'November', 'December');
