# In which year did most people join the company? Display the year and the number of employees? #

SELECT TOP 1 YEAR(Hiderdate) AS "year", COUNT(*) AS "n_hired"
FROM EMP
GROUP BY YEAR(Hiderdate)
ORDER BY n_hired DESC;

SELECTYEAR(Hiderdate) AS "year", COUNT(*) AS "n_hired"
FROM EMP
GROUP BY YEAR(Hiderdate)
ORDER BY n_hired DESC
LIMIT 1;
