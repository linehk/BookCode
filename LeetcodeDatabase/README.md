# LeetcodeDatabase

## 595. Big Countries

```sql
SELECT name, population, area
  FROM World
 WHERE area > 3000000
    OR population > 25000000;
```

## 627. Swap Salary

```sql
UPDATE salary
   SET sex = IF(sex = 'm', 'f', 'm')
```

## 620. Not Boring Movies

```sql
SELECT *
  FROM cinema
 WHERE MOD(id, 2) = 1
   AND description != "boring"
ORDER BY rating DESC;
```

## 182. Duplicate Emails

```sql
SELECT Email
  FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;
```

## 626. Exchange Seats

```sql
SELECT
    IF(id < (SELECT COUNT(*) FROM seat),
        IF(id MOD 2 = 0, id - 1, id + 1),
        IF(id MOD 2 = 0, id-1, id)) AS id, student
  FROM seat
ORDER BY id ASC;
```

## 175. Combine Two Tables

```sql
SELECT FirstName, LastName, City, State
  FROM Person AS P LEFT OUTER JOIN Address AS A
    ON P.PersonId = A.PersonId;
```

## 181. Employees Earning More Than Their Managers

```sql
SELECT E1.Name AS Employee
  FROM Employee AS E1 INNER JOIN Employee AS E2
    ON E1.ManagerId = E2.Id AND E1.Salary > E2.Salary;
```

## 183. Customers Who Never Order

```sql
SELECT Name AS Customers
  FROM Customers
 WHERE Id NOT IN (SELECT CustomerId FROM Orders);
```

## 601. Human Traffic of Stadium

```sql
SELECT DISTINCT t1.*
  FROM stadium t1, stadium t2, stadium t3
 WHERE t1.people >= 100
   AND t2.people >= 100
   AND t3.people >= 100
   AND (
      (t1.id - t2.id = 1
      AND t1.id - t3.id = 2
      AND t2.id - t3.id =1)  -- t1, t2, t3
    OR
      (t2.id - t1.id = 1
      AND t2.id - t3.id = 2
      AND t1.id - t3.id =1) -- t2, t1, t3
    OR
      (t3.id - t2.id = 1
      AND t2.id - t1.id =1
      AND t3.id - t1.id = 2) -- t3, t2, t1
   )
ORDER BY t1.id;
```

```sql
SELECT S1.*
  FROM stadium AS S1, stadium AS S2, stadium AS S3
 WHERE (
          (S1.id + 1 = S2.id AND S1.id + 2 = S3.id)
          OR (S1.id - 1 = S2.id AND S1.id + 1 = S3.id)
          OR (S1.id - 2 = S2.id AND S1.id - 1 = S3.id)
 )
   AND S1.people >= 100
   AND S2.people >= 100
   AND S3.people >= 100
GROUP BY S1.id;
```

## 178. Rank Scores

```sql
SELECT Score, (
                SELECT COUNT(DISTINCT Score)
                  FROM Scores
                 WHERE Score >= S.Score) AS Rank
  FROM Scores AS S
ORDER BY Score DESC;
```

## 596. Classes More Than 5 Students

```sql
SELECT class
  FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;
```

## 197. Rising Temperature

```sql
SELECT W1.Id
  FROM Weather AS W1, Weather AS W2
 WHERE DATEDIFF(W1.RecordDate, W2.RecordDate) = 1
   AND W1.Temperature > W2.Temperature;
```

## 180. Consecutive Numbers

```sql
SELECT DISTINCT L1.Num AS ConsecutiveNums
  FROM Logs AS L1, Logs AS L2, Logs AS L3
 WHERE L1.Id = L2.Id - 1
   AND L2.Id = L3.Id - 1
   AND L1.Num = L2.Num
   AND L2.Num = L3.Num;
```

## 196. Delete Duplicate Emails

```sql
DELETE P1
  FROM Person AS P1, Person AS P2
 WHERE P1.Email = P2.Email
   AND P1.Id > P2.Id;
```

## 184. Department Highest Salary

```sql
SELECT D.Name AS Department, E.Name AS Employee, Salary
  FROM Employee AS E INNER JOIN Department AS D
    ON E.DepartmentId = D.Id
 WHERE (E.DepartmentId, Salary)
    IN (SELECT DepartmentId, MAX(Salary) FROM Employee GROUP BY DepartmentId);
```

## 176. Second Highest Salary

```sql
SELECT (
    SELECT DISTINCT Salary
      FROM Employee
    ORDER BY Salary DESC LIMIT 1, 1) AS SecondHighestSalary;
```

## 177. Nth Highest Salary

```sql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE M INT DEFAULT N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary
        FROM Employee
      ORDER BY Salary DESC
       LIMIT M, 1
  );
END
```

## 185. Department Top Three Salaries

```sql
SELECT D.Name AS Department, E1.Name AS Employee, E1.Salary
  FROM Department AS D INNER JOIN Employee AS E1
    ON D.Id = E1.DepartmentId
 WHERE 3 > (SELECT COUNT(DISTINCT Salary)
              FROM Employee AS E2
             WHERE E2.Salary > E1.Salary
               AND E2.DepartmentId = E1.DepartmentId);
```

## 262. Trips and Users

```sql
SELECT T.Request_at AS Day, ROUND(SUM(IF(T.Status LIKE 'cancelled_%', 1, 0))/COUNT(*), 2) AS "Cancellation Rate"
  FROM Trips AS T INNER JOIN Users AS U
    ON T.Client_Id = U.Users_Id
   AND U.Banned = "No"
 WHERE T.Request_at BETWEEN "2013-10-01" AND "2013-10-03"
GROUP BY T.Request_at;
```