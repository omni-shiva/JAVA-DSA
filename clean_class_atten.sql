use byjus;

SELECT * FROM class_atten;

alter table class_atten
DROP column SESSION_STATUS,
DROP column subject,
DROP column topic,
DROP column chapter,
DROP column session_start_date_time,
drop column session_end_date_time,
DROP column session_type,
drop column class_type,
drop column online_offline,
drop column session_joined_at,
drop column session_ended_at,
drop column rr_status;

delete from class_atten
where length(premium_account_id) <> 10 OR STUDENTS_COUNT = 0 OR (TUTOR_ID = 0 OR TUTOR_ID = " ");
select class_id,tutor_id