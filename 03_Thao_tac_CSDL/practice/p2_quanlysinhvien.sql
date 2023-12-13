use quanlysinhvien;

-- Hiển thị danh sách tất cả các học viên
select * 
from student;

-- Hiển thị danh sách các học viên đang theo học
select * 
from student
where statuss = true;

-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ
select *
from subjects
where credit < 10;

-- Hiển thị danh sách học viên lớp A1
select class.classname, student.studentname
from class
join student on class.classid = student.classid
where class.classname = "A1";

-- Hiển thị điểm môn CF của các học viên
select S.StudentId, S.StudentName, Sub.SubName, M.Mark
from Student S join Mark M on S.StudentId = M.StudentId join subjects Sub on M.SubId = Sub.SubId
where Sub.SubName = 'CF';