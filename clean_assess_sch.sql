USE BYJUS;

SELECT * FROM assess_sch;

alter table assess_sch
DROP column class_type,
DROP column class_date,
DROP column topic,
DROP column chapter,
DROP column student_user_id,
DROP column schedule_online_offline;

delete from assess_sch
where (batch_id = 0 or batch_id = ' ') 
or length(premium_account_id) < 10 
or length(schedule_assessment_id) < 6;

update  assess_sch
set pre_post = 'Assessment'
where pre_post like '%post%';

select pre_post,count(*)
from assess_sch
group by pre_post;


update  assess_sch
set pre_post = 'MonthlyTest'
where pre_post like '%Test%';