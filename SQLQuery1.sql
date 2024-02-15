CREATE DATABASE Course

USE Course

CREATE TABLE Students (
    Id INT PRIMARY KEY IDENTITY,
    Fullname NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) UNIQUE,
    Point INT CHECK (Point >= 0 AND Point <= 100)
)
 
SELECT * FROM Students

INSERT INTO Students
VALUES
('Fidan Heydarova', 'fidannh@gmail.com', 85),
('Zulya Nabiyeva', 'zulya.nabi@mail.ru', 92),
('Nazrin Guliyeva', 'nazringuliyeva@code.edu.az', 78),
('Alma Armud', 'almaarmudd@example.com', 65)

SELECT * FROM Students
WHERE Point > (SELECT AVG(Point) FROM Students)

SELECT Id,SUBSTRING(Fullname, 1, CHARINDEX(' ', Fullname + ' ') - 1) AS Name,Point FROM Students

SELECT Id,SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email)) AS EmailDomain FROM Students
