use byjus;

select * from stud_score;

alter table stud_score
DROP column online_offline,
DROP column sub_type,
DROP column title,
DROP column graded,
DROP column score,
DROP column total_test_score;

delete from stud_score where length(assessment_id) <> 6;