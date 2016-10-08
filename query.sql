select p.LastName, p.FirstName, r.Building, r.RoomNumber, c.CourseFullName
from
    Professors p
        inner join
    Rooms r
        on p.CourseRegistrationNumber = r.CourseRegistrationNumber
        inner join 
    Courses c
        on r.CourseRegistrationNumber = c.CourseRegistrationNumber