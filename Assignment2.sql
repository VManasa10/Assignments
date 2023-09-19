--JOIN OPERATION--
SELECT CartID,ProductName,Quantity,UnitPrice FROM Products join Cart
ON Products.ProductId=Cart.ProductId



--INNER JOIN
SELECT CartID,ProductName,Quantity,UnitPrice FROM Products INNER join Cart
ON Products.ProductId=Cart.ProductId



--RIGHT OUTER JOIN
SELECT CartID,ProductName,Quantity,UnitPrice FROM Products RIGHT OUTER join Cart
ON Products.ProductId=Cart.ProductId



--LEFT OUTER JOIN
SELECT CartID,ProductName,Quantity,UnitPrice FROM Products join Cart
ON Products.ProductId=Cart.ProductId



--FULL OUTER JOIN
SELECT CartID,ProductName,Quantity,UnitPrice FROM Products join Cart
ON Products.ProductId=Cart.ProductId



--SUBQUERIES
--CITY
SELECT * FROM Orders
WHERE UserID
IN (SELECT UserID FROM Users WHERE City='HYDERABAD')



--NOT CITY
SELECT * FROM Orders
WHERE UserID
NOT IN (SELECT UserID FROM Users WHERE City='HYDERABAD')



--CART
SELECT * FROM Products
WHERE EXISTS(SELECT * FROM Products WHERE ProductID=3)

CREATE TABLE Student
(
  StudentId INT PRIMARY KEY,
  StudentName VARCHAR(50),
  CourseName VARCHAR(50),
  CityName VARCHAR(50)
 )


 INSERT INTO Student VALUES(1,'MANASA','SQL','HYDERABAD');
 INSERT INTO Student VALUES(2,'VYSHNAVI','ANGULAR','HYDERABAD');
 INSERT INTO Student VALUES(3,'HARIKA','REACT','MUMBAI');
 INSERT INTO Student VALUES(4,'BITTU','REACT','HYDERABAD');
 INSERT INTO Student VALUES(5,'PRITHVI','.NET','PUNE');
 INSERT INTO Student VALUES(6,'MOHINI','ANGULAR','PUNE');
 INSERT INTO Student VALUES(7,'REETHU','PYTHON','BANGALORE');
 INSERT INTO Student VALUES(8,'SWETHA','REACT','HYDERABAD');
 INSERT INTO Student VALUES(9,'ROSHAN','.NET','MUMBAI');
 INSERT INTO Student VALUES(10,'YASH','.NET','DELHI');


 SELECT * FROM Student
 --QUERIES
 --ANGULAR COURSE
 SELECT COUNT(StudentID)
 FROM Student
 WHERE CourseName='ANGULAR'



 --HYDERABAD CITY
 SELECT COUNT(StudentId)
 FROM Student
 WHERE CityName='HYDERABAD'



 --CITY BASED
 SELECT CityName,COUNT(StudentId)
 FROM Student
 GROUP BY CityName



 --COURSE BASED
 SELECT CourseName,COUNT(StudentId)
 FROM Student
 GROUP BY CourseName



 --CITY AND COURSE BASED
 SELECT CityName,CourseName,COUNT(StudentId)
 FROM Student
 GROUP BY CityName,CourseName

