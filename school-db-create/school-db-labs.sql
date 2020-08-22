select * from student
	order by lastName;

-- how many students from each state
select count(*), state
	from student
	group by state;
    
-- states having more than 3 students
select count(*), state
	from student
	group by state;

    
-- which subject has the most classes?
select subject, count(*) 
	from course
	group by subject;

-- grade by quarter, including student and course name
select lastname, firstname, subject, c. name, grade, quarter
	from enrolled e
    join course c
		on courseId = c.id
	join student s
		on s.id = e.studentId
	order by lastname;
    
/* Student enrollment report
- list all students, fname, lname
- course name, if enrolled 
*/

select lastname, firstname, name
	from student s
    left join enrolled e
		on s.id = e.studentid
    left join course c
		on e.courseid = c.id;
        
-- check where student is NOT enrolled
        
select * from enrolled
	where studentID = 3;

    
