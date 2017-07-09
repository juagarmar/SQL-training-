GO TSQL2012
select lastname, convert(varchar, birthdate, 103) "birthday", CONVERT(varchar, hiredate, 103) "hiredate", city,
(DATEDIFF(dd, birthdate, hiredate) + 1)
  -(DATEDIFF(wk, birthdate, hiredate) * 2)
  -(CASE WHEN DATENAME(dw, birthdate) = 'Sunday' THEN 1 ELSE 0 END)
  -(CASE WHEN DATENAME(dw, hiredate) = 'Saturday' THEN 1 ELSE 0 END) "working days",
  case when city like '%London%' then 'vecino'
  when city like '%Seattle%' then 'lejos'
  else 'null'
  end as val,
  case when (DATEDIFF(dd, birthdate, hiredate) + 1)
  -(DATEDIFF(wk, birthdate, hiredate) * 2)
  -(CASE WHEN DATENAME(dw, birthdate) = 'Sunday' THEN 1 ELSE 0 END)
  -(CASE WHEN DATENAME(dw, hiredate) = 'Saturday' THEN 1 ELSE 0 END) > 8000 then 'viejo'
  else 'joven'
  end as edad,
  ROW_NUMBER() OVER (PARTITION BY city order by hiredate) as rownumber

 from HR.Employees
