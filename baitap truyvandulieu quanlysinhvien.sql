SELECT * FROM quanlysinhvien.student
where StudentName like 'h%';
select * from quanlysinhvien.class
where month(StartDate)  = 12;
select * from quanlysinhvien.subject
where Credit between 3 and 5;
update student
set ClassId = 2
where StudentName = 'Hung';
select s.StudentName,o.SubName,m.Mark 
from quanlysinhvien.student s,quanlysinhvien.subject o,quanlysinhvien.mark m
where o.SubId = m.SubId and s.StudentId = m.StudentId
order by Mark desc, StudentName asc;
