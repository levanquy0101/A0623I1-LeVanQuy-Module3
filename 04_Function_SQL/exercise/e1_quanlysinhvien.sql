USE quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT *
FROM subjects
WHERE credit = (SELECT MAX(credit) FROM subjects);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT subjects.*
FROM subjects
JOIN mark ON subjects.subid = mark.subid
WHERE mark.Mark = (SELECT MAX(Mark) FROM mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT Student.*, AVG(Mark.Mark) AS average_mark
FROM Student
JOIN Mark ON Student.StudentID = Mark.StudentID
GROUP BY Student.StudentID, Student.StudentName, Student.Address
ORDER BY average_mark DESC;

