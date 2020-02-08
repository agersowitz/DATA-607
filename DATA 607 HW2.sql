CREATE TABLE MOVIES (MOVIE_id bigint(20) not null auto_increment, title VARCHAR(200),
length_minutes dec, DIRECTOR VARCHAR(1000), IMDB varCHAR(1000), YOUTUBE_TRAILER varCHAR(1000),
unique key (MOVIE_id)
);


INSERT INTO MOVIES
VALUES (null,'1917','119','Sam Mendes','https://www.imdb.com/title/tt8579674/'
,'https://www.youtube.com/watch?v=gZjQROMAh_s');
INSERT INTO MOVIES
VALUES (null,'Once Upon a Time in Hollywood','160','Quentin Tarentino','https://www.imdb.com/title/tt8579674/'
,'https://www.youtube.com/watch?v=ELeMaP8EPAA');
INSERT INTO MOVIES
VALUES (null,'Parasite','132','Bong Joon-Ho','https://www.imdb.com/title/tt6751668/'
,'https://www.youtube.com/watch?v=5xH0HfJHsaY');
INSERT INTO MOVIES
VALUES (null,'Little Women','135','Greta Gerwig','https://www.imdb.com/title/tt3281548/'
,'https://www.youtube.com/watch?v=AST2-4db4ic');
INSERT INTO MOVIES
VALUES (null,'JoJo Rabbit','108','Taika Waititi','https://www.imdb.com/title/tt2584384/'
,'https://www.youtube.com/watch?v=tL4McUzXfFI');
INSERT INTO MOVIES
VALUES (null,'The Irishman','210','Martin Scorsese','https://www.imdb.com/title/tt1302006/'
,'https://www.youtube.com/watch?v=WHXxVmeGQUc');


CREATE TABLE PEOPLE ( PERSON_id bigint(20) not null auto_increment,
AGE dec, PERSON_NAME varCHAR(1000),
unique key (person_id)
);

INSERT INTO PEOPLE
VALUES (NULL,'31','Alex');
INSERT INTO PEOPLE
VALUES (NULL,'17','Kellie');
INSERT INTO PEOPLE
VALUES (NULL,'81','Sarah');
INSERT INTO PEOPLE
VALUES (NULL,'43','Mark');
INSERT INTO PEOPLE
VALUES (NULL,'11','Elle');

drop TABLE reviews;COMMIT;
CREATE TABLE reviews (REVIEW_id bigint(20) not null auto_increment,
 PERSON_id bigint(20), MOVIE_id bigint(20),
rating dec, review varCHAR(1000),
unique key (review_id)
);

INSERT INTO reviews
VALUES (NULL,'1','1','1','I hated it');
INSERT INTO reviews
VALUES (NULL,'1','2','1','I hated it');
INSERT INTO reviews
VALUES (NULL,'1','3','4','Very Good');
INSERT INTO reviews
VALUES (NULL,'1','4','3','OK');
INSERT INTO reviews
VALUES (NULL,'1','5','5','Great!');
INSERT INTO reviews
VALUES (NULL,'1','6','2','Too Long');
INSERT INTO reviews
VALUES (NULL,'2','1','3','It was fine');
INSERT INTO reviews
VALUES (NULL,'2','2','2','Not my cup of Tea');
INSERT INTO reviews
VALUES (NULL,'2','3','3','Meh');
INSERT INTO reviews
VALUES (NULL,'2','4','2',null);
INSERT INTO reviews
VALUES (NULL,'2','5','1','Horrendous');
INSERT INTO reviews
VALUES (NULL,'2','6','3','It was solid');
INSERT INTO reviews
VALUES (NULL,'3','1','1','Terrible');
INSERT INTO reviews
VALUES (NULL,'3','2','3','Fine');
INSERT INTO reviews
VALUES (NULL,'3','3','5','Great');
INSERT INTO reviews
VALUES (NULL,'3','4','3','Not Bad');
INSERT INTO reviews
VALUES (NULL,'3','5','4','Pretty Good');
INSERT INTO reviews
VALUES (NULL,'3','6','6','Incredible');
INSERT INTO reviews
VALUES (NULL,'4','1','5','Great');
INSERT INTO reviews
VALUES (NULL,'4','2','4','Good');
INSERT INTO reviews
VALUES (NULL,'4','3','5','Great');
INSERT INTO reviews
VALUES (NULL,'4','4','4','Good');
INSERT INTO reviews
VALUES (NULL,'4','5','5','Great');
INSERT INTO reviews
VALUES (NULL,'4','6','4','Good');
INSERT INTO reviews
VALUES (NULL,'5','1','5','Truly a masterpiece!');
INSERT INTO reviews
VALUES (NULL,'5','2','5','Something that I look forward to showing my kids someday.');
INSERT INTO reviews
VALUES (NULL,'5','3','5','An unsettling, but satisfying thrillride!');
INSERT INTO reviews
VALUES (NULL,'5','4','2','A cheapo imitation of the original');
INSERT INTO reviews
VALUES (NULL,'5','5','2','Not enought rabbits');
INSERT INTO reviews
VALUES (NULL,'5','6','3','Wayyyyyyyy to long. I had to watch it in 5 parts!');

select reviews.review_id, reviews.rating, reviews.review, movies.*, people.*
from reviews join movies on movies.movie_id = reviews.movie_id 
join people on people.person_id = reviews.person_id

