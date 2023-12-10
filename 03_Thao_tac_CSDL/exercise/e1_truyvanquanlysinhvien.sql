use quanlysinhvien;

select student.*
from student
where student.StudentName like 'h%';

select class.*
from class
where month(StartDate) = 12;

select subjects.*
from subjects
where (subjects.Credit) between 3 and 5;

update student
set ClassID = 2
where StudentName = 'Hung'
limit 1;

select student.studentname, subjects.subname, mark.mark
from student
join mark on student.studentid = mark.studentid
join subjects on mark.subid = subjects.subid
order by mark.mark desc, student.studentname asc;