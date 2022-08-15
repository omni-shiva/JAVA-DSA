USE BYJUS;

SELECT *  FROM TUT_RATE;

alter table tut_rate drop column TOPIC;
DELETE FROM tut_rate WHERE length(TUTOR_RATING) <> 1;

select count(*)
from tut_rate;

alter table tut_rate
CHANGE COLUMN tutor_rating tutor_rating INT;

SELECT * FROM tut_rate 
WHERE tutor_rating = 5;

alter table tut_rate drop column TOPIC;

alter table tut_rate
CHANGE COLUMN CLASS_DATE CLASS_DATE DATE;

SELECT * FROM TUT_RATE 
WHERE PREMIUM_ACCOUNT_ID  = 0 
OR PREMIUM_ACCOUNT_ID  = ' ' 
OR length(PREMIUM_ACCOUNT_ID) < 10;

select PREMIUM_ACCOUNT_ID,class_id,TUTOR_ID,tutor_rating
from tut_rate
where tutor_rating in (4,5);